# Integración de proveedores de imágenes - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Integración de proveedores de imágenes**

## Integración de proveedores de imágenes

# Integración de proveedores de imágenes

Esta página define el contrato común que un proveedor RIS/PACS cumple para que sus pacientes vean, desde el Portal Ciudadano, las imágenes de sus estudios, con o sin informe. Para el caso de uso, los escenarios y el modelo FHIR, ver [Acceso a imágenes sin informe](acceso-imagenes.md).

> **Estado.** Incorporado en la versión 0.4.0 (D-020 y D-022, aprobadas por MINSAL). La guía fija los requisitos mínimos de la aserción de acceso; el servicio nacional de autorización publica su especificación técnica detallada. Esta guía no atribuye a ningún proveedor capacidades que no haya declarado y demostrado en la certificación.

## Modalidades de integración

Cada proveedor implementa **al menos una** de tres modalidades y la declara registrando un [EndpointAccesoImagenesMinsal](StructureDefinition-EndpointAccesoImagenesMinsal.md). El `connectionType` del `Endpoint` identifica la modalidad, y el portal no necesita saber nada más de la tecnología del proveedor.

| | | | |
| :--- | :--- | :--- | :--- |
| **A**· IHE Invoke Image Display (IID) | `endpoint-connection-type#ihe-iid` | El portal abre el visor del proveedor directamente en el estudio | Integrada |
| **B**· API del proveedor | `MecanismoAccesoImagenes#api-proveedor` | El portal abre el visor del proveedor directamente en el estudio | Integrada |
| **C**· Portal web del proveedor | `MecanismoAccesoImagenes#portal-proveedor` | El paciente va al portal del proveedor, se autentica y busca su estudio | Básica |

### Modalidad A · IHE Invoke Image Display (IID)

IHE IID define la transacción RAD-106 **Invoke Image Display**: una **petición HTTP GET** con la que un sistema invoca la presentación de imágenes en un visor, indicando en la URL el contexto (un paciente o una lista de estudios) y algunos parámetros de presentación. **La fuente normativa de la sintaxis (ruta, nombres de parámetros, formato de los valores) es la transacción RAD-106 del IHE Radiology Technical Framework vigente**; esta guía no la reproduce ni le agrega parámetros.

Esta guía sólo agrega restricciones sobre el uso de IID:

| | |
| :--- | :--- |
| La petición es siempre por estudio, nunca por paciente | Una petición por paciente obligaría a poner el identificador del paciente en la URL |
| El estudio se indica con su Study Instance UID, tomado de`ImagingStudy.identifier`(`urn:dicom:uid`, sin el prefijo`urn:oid:`); el Accession Number se usa sólo si el estudio no tiene UID | El UID es único a nivel global. El parámetro de Accession Number de IID no lleva el dominio que lo asigna, así que sólo es inequívoco dentro del visor de un único RIS |
| La invocación no lleva identificadores del paciente ni credenciales | Requisitos S-04 y S-05 |
| Los parámetros opcionales de presentación se usan sólo si el proveedor declara soportarlos | Esta guía no atribuye capacidades no declaradas |
| `Endpoint.address`es la URL de invocación IID completa sin parámetros (habitualmente terminada en`/IHEInvokeImageDisplay`) | Invariante`endpoint-acceso-https-sin-parametros` |
| El visor ofrece visualización interactiva: navegar entre series e imágenes, y ajustar ventana, zoom y desplazamiento | Es una exigencia del actor**Image Display**de IID |

El cumplimiento de RAD-106 se verifica en la certificación, invocando el visor real del proveedor (prueba PT-06 y criterio CI-07). Ejemplo ilustrativo de invocación por estudio, sin credenciales:

```
GET https://visor.example.org/IHEInvokeImageDisplay?requestType=STUDY&studyUID=1.2.840.113619.2.55.3.604688119.868.1600000000.2

```

**Lo que IID no hace.** IID **no autentica al paciente, no autoriza el acceso y no define una federación de identidad**: deja la autenticación, el control de acceso y la auditoría a los mecanismos con que se despliegue. IID contempla expresamente la invocación desde sistemas orientados al paciente (una PHR o un portal de pacientes), pero es **"capable of leveraging, but not dependent on, any particular choice of authentication, access control or audit trail protocols"**. Su uso en un portal de pacientes requiere, por lo tanto, agregarle un mecanismo de autorización a nivel de estudio. Por eso, en esta guía la modalidad A **siempre** va acompañada de uno de los dos mecanismos complementarios que admite la decisión D-022:

* el visor del proveedor confía en el mismo proveedor de identidad OpenID Connect que el portal, y comprueba con el servicio nacional que la persona autenticada está autorizada para ese estudio; o
* el servicio nacional entrega al visor, por un canal que no sea la URL, una aserción firmada de corta duración y con alcance al estudio.

En la modalidad A, conocer el `studyUID` **nunca** debe bastar para ver las imágenes.

### Modalidad B · API del proveedor

El proveedor publica una API documentada que el servicio nacional de autorización invoca **servidor a servidor** para abrir un estudio en su visor existente. Esta guía no fija la forma de la API: fija las propiedades que debe cumplir.

| | |
| :--- | :--- |
| Autenticación del cliente | El servicio nacional se autentica ante la API con TLS mutuo o con OAuth 2.0**client credentials**con aserción de cliente firmada (`private_key_jwt`); nunca con claves estáticas en el navegador |
| Identificación del estudio | Study Instance UID o Accession Number con su dominio, tal como están en`ImagingStudy.identifier` |
| Autorización | La solicitud lleva la aserción del servicio nacional sobre el paciente autorizado y el estudio; el proveedor verifica que el estudio pertenece a ese paciente en su propio registro |
| Resultado | Una apertura del visor**de un solo uso**, con vida corta (recomendado: 60 segundos o menos), válida sólo para ese estudio |
| Entrega al navegador | De preferencia por formulario`POST`autoenviado; si viaja en la URL, es un código opaco de un solo uso que el visor canjea de inmediato por una sesión y luego redirige a una URL limpia |
| Sesión del visor | Duración limitada (recomendado: 15 minutos de inactividad, 60 minutos en total), cookie`Secure`,`HttpOnly`,`SameSite`; revocable |
| Errores | Distingue al menos: estudio inexistente o no autorizado (respuesta indistinguible), estudio temporalmente no disponible, credenciales de cliente inválidas |
| Auditoría | Registra cada apertura con el identificador de correlación que envía el servicio nacional |

Una integración equivalente basada en el lanzamiento de aplicaciones SMART on FHIR se admite en esta modalidad si cumple las mismas propiedades.

### Modalidad C · Portal web del proveedor

El portal nacional muestra el estudio (metadatos del `ImagingStudy`) y un enlace a `Endpoint.address`, la dirección de entrada del portal del proveedor. Esa dirección no identifica al paciente ni al estudio. El paciente se autentica en el portal del proveedor y localiza su estudio, para lo cual el portal nacional le muestra la fecha, el examen y el Accession Number.

Se admite como **conformidad básica o transitoria**, con estas limitaciones frente a la experiencia integrada:

* el paciente se autentica dos veces, salvo que el proveedor use el mismo proveedor de identidad;
* no hay apertura directa del estudio, y el paciente debe buscarlo;
* el servicio nacional no puede auditar la visualización, sólo la derivación;
* la experiencia, la accesibilidad y la seguridad dependen de cada proveedor;
* el portal nacional no puede verificar que el portal del proveedor exponga sólo los estudios del paciente.

Aun así, el proveedor garantiza el acceso seguro y la vinculación inequívoca con el estudio (criterios CB-01 a CB-08).

## Reglas comunes a todas las modalidades

| | |
| :--- | :--- |
| RC-01 | El proveedor declara la modalidad que implementa registrando un`EndpointAccesoImagenesMinsal`por mecanismo. |
| RC-02 | El acceso se restringe al estudio autorizado: una apertura o sesión para un estudio no da acceso a otros estudios ni a otros pacientes. |
| RC-03 | Las imágenes permanecen en el PACS/VNA de origen y se presentan desde la infraestructura del proveedor. |
| RC-04 | No se exponen credenciales permanentes en el navegador (claves de API, secretos de cliente, contraseñas de servicio). |
| RC-05 | Las sesiones y aperturas tienen duración limitada y pueden revocarse. |
| RC-06 | Todo acceso queda auditado por el servicio nacional y por el proveedor, con un identificador de correlación común. |
| RC-07 | El mecanismo funciona con el informe pendiente: no depende de la existencia de`DiagnosticReport`. |
| RC-08 | El portal no necesita conocer la tecnología interna del proveedor: sólo el`Endpoint`y los identificadores del estudio. |
| RC-09 | Toda comunicación usa TLS 1.2 o superior. |

## Contrato de interoperabilidad

### Información que entrega el proveedor

| | | | |
| :--- | :--- | :--- | :--- |
| Paciente, resuelto mediante MPI | `entry[paciente]`del evento →`ImagingStudy.subject` | Obligatorio | Persistente (referencia) |
| Identificador inequívoco del estudio (Study Instance UID) | `ImagingStudy.identifier`(`urn:dicom:uid`) | Obligatorio cuando existe; si no, el Accession Number | Persistente |
| Accession Number | `ImagingStudy.identifier`(`ACSN`) | Obligatorio cuando el RIS lo asigna (D-007) | Persistente |
| Estado del estudio | `ImagingStudy.status` | Obligatorio | Persistente |
| Disponibilidad real de las imágenes | `status = available`+`endpoint` | Obligatorio | Persistente, actualizado por eventos |
| Procedimiento, modalidad, fecha | `procedureCode`,`modality`,`started` | **Must Support** | Persistente |
| Referencia al mecanismo de acceso | `ImagingStudy.endpoint`→`EndpointAccesoImagenesMinsal` | Obligatorio para declarar visualizable | Persistente |
| Modalidad de integración | `Endpoint.connectionType` | Obligatorio | Persistente (alta en certificación) |
| Contacto para incidentes | `Endpoint.contact` | Obligatorio | Persistente |
| Requisitos de autorización | Documento de integración del proveedor (protocolo soportado, formato de aserción aceptado) | Obligatorio | Fuera de FHIR |
| Procedimiento de actualización de disponibilidad | Evento`MinsalBundleEstudioImagenologia` | Obligatorio | Fuera de FHIR (acuerdo) |
| Tratamiento de errores y auditoría | Documento de integración | Obligatorio | Fuera de FHIR |

### Datos persistentes y datos transitorios

| | |
| :--- | :--- |
| `ImagingStudy`: identificadores, estado, modalidad, procedimiento, fecha, referencia a`Endpoint` | Aserción de acceso del servicio nacional |
| `Endpoint`: tipo de conexión, URL base, estado, contacto, responsable | Código de apertura de un solo uso (modalidad B) |
| `DiagnosticReport`, cuando existe | Cookie de sesión del visor |
| Registros de auditoría (fuera del recurso clínico) | Parámetros IID de la invocación |

Los tokens, códigos de apertura y aserciones **nunca** se almacenan en `ImagingStudy`, en `Endpoint` ni en URLs publicadas, y no aparecen en ningún ejemplo de esta guía.

### Actualización de disponibilidad

| | |
| :--- | :--- |
| El RIS asigna UID y Accession Number antes de adquirir imágenes | Puede enviar el evento con`status = registered`, sin`endpoint`(opcional) |
| El PACS/VNA confirma instancias | Envía el evento con`status = available`y`endpoint` |
| Se agregan series o instancias | Envía un nuevo evento (nuevo`Bundle.identifier`), con los recuentos actualizados |
| Un estudio deja temporalmente de poder consultarse | Envía el estudio sin`endpoint`; al restablecerse, lo envía con`endpoint` |
| Falla el mecanismo para todos los estudios | Avisa a la mesa de ayuda de MINSAL, que cambia`Endpoint.status`a`suspended`o`error`, y de vuelta a`active`al restablecerse (ver[Registro del mecanismo de acceso](#registro-del-mecanismo-de-acceso)) |
| El estudio se retira por error | Envía el estudio con`status = entered-in-error` |
| El examen no se realizó | Envía`status = cancelled` |

### Registro del mecanismo de acceso

Los `EndpointAccesoImagenesMinsal` forman un **registro administrado por MINSAL**. Ningún proveedor escribe recursos `Endpoint` directamente en el Bus ni en el repositorio FHIR.

| | | | |
| :--- | :--- | :--- | :--- |
| Alta | Proveedor | En la certificación, con el documento de integración (modalidad, URL base, contacto, mecanismo de autorización según D-022) | MINSAL valida el recurso contra el perfil, verifica la modalidad en las pruebas y lo publica con`status = active` |
| Modificación de`address`,`connectionType`o`managingOrganization` | Proveedor | Procedimiento de cambios de la integración | Requiere repetir las pruebas de la modalidad afectada antes de publicar el cambio |
| Modificación de`name`,`contact`o`period` | Proveedor | Procedimiento de cambios de la integración | MINSAL valida y publica, sin nuevas pruebas |
| Suspensión o error (`suspended`/`error`) | Proveedor o MINSAL | Aviso a la mesa de ayuda de MINSAL | MINSAL cambia`Endpoint.status`en el tiempo de respuesta definido en el acuerdo de integración |
| Restablecimiento (`active`) | Proveedor | Aviso a la mesa de ayuda, una vez verificado el servicio | MINSAL vuelve`Endpoint.status`a`active` |
| Baja (`off`) | Proveedor o MINSAL | Procedimiento de cambios, o decisión de MINSAL ante un incumplimiento de seguridad | `Endpoint.status = off`; el recurso no se borra, para conservar la trazabilidad de los estudios que lo referencian |

MINSAL puede suspender un mecanismo por su cuenta ante un incidente de seguridad o una indisponibilidad prolongada. Los cambios de `Endpoint` quedan auditados como cualquier otra escritura en el repositorio.

### Errores

| | | | |
| :--- | :--- | :--- | :--- |
| Paciente no resuelto (múltiples o ninguna coincidencia) | `multiple-matches`/`not-found` | Bus, al recibir el evento | [ResultadoPacienteNoResueltoEjemplo](OperationOutcome-ResultadoPacienteNoResueltoEjemplo.md) |
| Evento no conforme | `invalid`/`invariant` | Bus | — |
| Acceso denegado | `forbidden` | Servicio nacional | [ResultadoAccesoDenegadoEjemplo](OperationOutcome-ResultadoAccesoDenegadoEjemplo.md) |
| Sesión o apertura expirada | `expired` | Servicio nacional o visor | [ResultadoSesionExpiradaEjemplo](OperationOutcome-ResultadoSesionExpiradaEjemplo.md) |
| Imágenes temporalmente no disponibles | `transient` | Servicio nacional (a partir de la respuesta del proveedor) | [ResultadoImagenesNoDisponiblesEjemplo](OperationOutcome-ResultadoImagenesNoDisponiblesEjemplo.md) |

La interfaz entre el portal y el servicio nacional de autorización es interna de MINSAL. Esta guía describe su contrato funcional y recomienda `OperationOutcome` para los errores, pero **no define una operación FHIR** para ella.

## Seguridad y privacidad

### Responsabilidades

| | | | |
| :--- | :--- | :--- | :--- |
| Autenticación del paciente | Inicia la autenticación y mantiene la sesión | Exige una identidad autenticada y resuelta en el MPI | Confía en la aserción del servicio nacional o en el proveedor de identidad federado (A, B); autentica en su portal (C) |
| Autorización de acceso al estudio | No decide | Decide: pertenencia del estudio al paciente, representación, lista de retención (D-023), estado del mecanismo | Verifica que el estudio de la apertura corresponda al paciente de la aserción |
| Vinculación paciente–estudio | — | Usa`ImagingStudy.subject`, publicado sólo con resolución inequívoca | Mantiene el vínculo en su RIS/PACS y lo verifica |
| Sesión y expiración | Sesión del portal con expiración | Aserción de corta duración | Apertura de un solo uso y sesión de visor limitada |
| Revocación | Cierre de sesión | Deja de emitir aserciones; puede invalidar las vigentes | Invalida sesiones al revocarse la aserción o al cerrar el visor |
| Auditoría | Registra la acción del paciente | Registra cada decisión (concedido, denegado, expirado, no disponible) | Registra cada apertura y visualización |
| Transporte | HTTPS | HTTPS, TLS mutuo hacia proveedores | HTTPS |

### Requisitos

| | |
| :--- | :--- |
| S-01 | **Autenticación del paciente**con un mecanismo de nivel de garantía acordado por MINSAL. OpenID Connect es la opción recomendada para el portal; según D-022, no se exige que todos los proveedores lo soporten: la federación OpenID Connect es una de las opciones, junto con la aserción del servicio nacional y la sesión de un solo uso de la API. |
| S-02 | **Autorización por estudio**: el servicio nacional concede el acceso sólo si`ImagingStudy.subject`corresponde al paciente autenticado, y si la política de publicación lo permite. OAuth 2.0 es adecuado para el canal servidor a servidor con el proveedor. |
| S-03 | **Protección frente a acceso directo**: ningún identificador (UID, Accession Number, id de recurso) da acceso por sí mismo. Las respuestas a estudios ajenos e inexistentes son indistinguibles. |
| S-04 | **Sin tokens en URLs persistentes**: los tokens no se escriben en`ImagingStudy`, en`Endpoint`, en registros de aplicación ni en el historial del navegador. Si un código de un solo uso viaja en una URL, el visor lo canjea de inmediato y redirige a una URL limpia, con`Referrer-Policy: no-referrer`. |
| S-05 | **Sin identificadores personales en URLs**: el RUN y el identificador del paciente no viajan en URLs (por eso IID se usa sólo con peticiones por estudio). |
| S-06 | **Sesiones limitadas y revocables**, con expiración por inactividad y absoluta. |
| S-07 | **Auditoría**de cada consulta y apertura, con registro de quién, qué estudio, cuándo, desde qué sistema, resultado y motivo de rechazo. Se recomienda representarla con`AuditEvent`siguiendo los patrones de IHE Basic Audit Log Patterns (BALP). Esta versión no perfila`AuditEvent`. |
| S-08 | **Transporte cifrado**con TLS 1.2 o superior en todos los tramos; TLS mutuo o`private_key_jwt`entre el servicio nacional y el proveedor. |
| S-09 | **Fallo seguro**: ante un error de autorización, de identidad o de disponibilidad, se deniega el acceso y se informa al paciente sin exponer datos; nunca se abre el visor "en modo degradado". |
| S-10 | **Minimización**: los mensajes de error y los registros no incluyen datos clínicos ni demográficos más allá de lo necesario (igual que en la sección de seguridad de[Arquitectura](arquitectura.md)). |

### Aserción de acceso del servicio nacional

Cuando el proveedor usa la aserción del servicio nacional (modalidad A con aserción, o modalidad B), esta debe cumplir los siguientes requisitos mínimos (D-022, acción A-12). El emisor concreto, los nombres exactos de los **claims**, los algoritmos admitidos y la rotación de claves los publica el servicio nacional de autorización en su especificación técnica, que debe respetar estos mínimos.

| | |
| :--- | :--- |
| AA-01 | Es un JSON Web Token (RFC 7519) firmado (JWS, RFC 7515) con un algoritmo**asimétrico**. No se admiten tokens sin firma (`alg = none`) ni firmados con secreto compartido. |
| AA-02 | `iss`identifica al servicio nacional de autorización; el proveedor verifica la firma con las claves públicas que este publica. |
| AA-03 | `aud`identifica al proveedor destinatario; el proveedor rechaza una aserción emitida para otro. |
| AA-04 | `sub`es un**seudónimo**estable del paciente para la auditoría. Nunca es el RUN. |
| AA-05 | Incluye el identificador del estudio autorizado (Study Instance UID o Accession Number con su dominio). El proveedor abre sólo ese estudio. |
| AA-06 | Incluye el identificador del paciente en el dominio del proveedor, obtenido de las referencias cruzadas del MPI. Con él, el proveedor verifica en su propio registro que el estudio pertenece al paciente. |
| AA-07 | `iat`y`exp`con una vigencia de**5 minutos o menos**. |
| AA-08 | `jti`único: el proveedor la acepta**una sola vez**y rechaza su reutilización mientras no haya expirado. |
| AA-09 | Incluye el identificador de correlación de la auditoría (RC-06). |
| AA-10 | No contiene datos clínicos ni demográficos más allá de AA-04 a AA-06. |
| AA-11 | Viaja servidor a servidor (modalidad B) o por un canal que no sea la URL, como un formulario`POST`autoenviado (modalidad A). Nunca se escribe en registros de aplicación. |

El proveedor que no supere la verificación de cualquiera de AA-02 a AA-08 deniega el acceso y lo registra (S-09).

## Niveles de conformidad

| | | |
| :--- | :--- | :--- |
| **Conformidad básica** | El paciente puede acceder de forma segura a sus imágenes a través del proveedor | C (o A/B sin apertura directa desde el portal) |
| **Conformidad integrada** | El portal identifica el estudio y abre directamente el visor del proveedor en ese estudio | A o B |

### Criterios verificables

Conformidad básica (CB):

| | | |
| :--- | :--- | :--- |
| CB-01 | El proveedor tiene registrado, en el registro administrado por MINSAL, al menos un`EndpointAccesoImagenesMinsal`válido contra el perfil, con`contact` | Validación del recurso |
| CB-02 | Envía el evento de disponibilidad como`MinsalBundleEstudioImagenologia`válido, con actualización condicional | Validación + prueba PT-01 |
| CB-03 | Publica`available`sólo cuando el PACS/VNA tiene instancias del estudio | Prueba PT-03 (orden sin imágenes no produce`available`) |
| CB-04 | El reenvío del mismo evento no duplica el estudio | Prueba PT-02 |
| CB-05 | Un evento atrasado no revierte un estado más reciente | Prueba PT-04 |
| CB-06 | El paciente accede a sus imágenes con el informe pendiente | Prueba PT-05 |
| CB-07 | El paciente no puede ver estudios de otro paciente aunque conozca su UID, Accession Number o URL | Prueba PT-08 |
| CB-08 | Ninguna URL, registro o recurso contiene credenciales permanentes ni identificadores personales | Inspección + prueba PT-11 |

Conformidad integrada (CI), además de CB-01 a CB-08:

| | | |
| :--- | :--- | :--- |
| CI-01 | El`Endpoint`declara`ihe-iid`o`api-proveedor` | Validación del recurso |
| CI-02 | Desde el portal, el visor abre directamente el estudio solicitado, sin búsqueda manual | Prueba PT-06 |
| CI-03 | La apertura es de un solo uso y expira en el plazo acordado | Pruebas PT-09 y PT-10 |
| CI-04 | El visor rechaza una apertura cuyo estudio no corresponde al paciente de la aserción | Prueba PT-08 |
| CI-05 | La sesión del visor expira y puede revocarse | Prueba PT-10 |
| CI-06 | La apertura queda registrada en ambos lados con el mismo identificador de correlación | Prueba PT-12 |
| CI-07 | Modalidad A: la invocación cumple RAD-106 del IHE Radiology Technical Framework vigente, es por estudio y no lleva identificadores del paciente | Inspección de la petición contra el visor real |
| CI-08 | Si usa la aserción del servicio nacional, la valida según AA-01 a AA-11 y rechaza firma inválida, otra audiencia, aserción expirada o`jti`reutilizado | Prueba PT-18 |

### Matriz de conformidad

| | | | |
| :--- | :--- | :--- | :--- |
| Evento de disponibilidad (CB-02 a CB-05) | Obligatorio | Obligatorio | Obligatorio |
| `EndpointAccesoImagenesMinsal`registrado | Obligatorio | Obligatorio | Obligatorio |
| Acceso con informe pendiente (CB-06) | Obligatorio | Obligatorio | Obligatorio |
| Protección frente a acceso directo (CB-07) | Obligatorio | Obligatorio | Obligatorio |
| Apertura directa del estudio (CI-02) | Obligatorio | Obligatorio | No aplica |
| Mecanismo de autorización complementario | Obligatorio (IID no lo provee) | Incluido en la API | Propio del portal del proveedor |
| Apertura de un solo uso (CI-03) | Obligatorio si usa aserción | Obligatorio | No aplica |
| Auditoría correlacionada (CI-06) | Obligatorio | Obligatorio | Sólo derivación (limitación) |
| Nivel alcanzado | Integrada | Integrada | Básica |

## Escenarios de prueba

| | | | |
| :--- | :--- | :--- | :--- |
| PT-01 | Disponibilidad sin informe (A) | Enviar el evento con`available`y`endpoint` | `201 Created`; el estudio aparece en el portal con "Ver imágenes" e "informe pendiente" |
| PT-02 | Evento duplicado | Reenviar el mismo`Bundle`(mismo`identifier`) | Respuesta de éxito; un solo`ImagingStudy`; sin nueva versión |
| PT-03 | Orden sin imágenes (C) | Registrar la orden y el examen sin enviar instancias | No hay`ImagingStudy``available`; el portal no ofrece abrir imágenes |
| PT-04 | Evento atrasado | Enviar un evento con`timestamp`anterior al último aplicado | El estado no cambia |
| PT-05 | Informe posterior (B) | Con el estudio`available`, enviar el`ORU^R01` | Se crea el`DiagnosticReport`que referencia el estudio existente; el`ImagingStudy`no cambia |
| PT-06 | Apertura integrada | Pulsar "Ver imágenes" | El visor del proveedor abre el estudio correcto, con imágenes desde el PACS de origen |
| PT-07 | Indisponibilidad (D) | Enviar el estudio sin`endpoint`, o poner el`Endpoint`en`suspended` | El portal deja de ofrecer abrir el visor; el estado del estudio sigue`available` |
| PT-08 | Acceso a estudio ajeno (F) | Solicitar la apertura de un estudio de otro paciente, o manipular el UID en la invocación | `forbidden`; el visor no muestra imágenes; el intento queda auditado |
| PT-09 | Reutilización de apertura | Reutilizar un código o URL de apertura ya usado | Rechazo |
| PT-10 | Expiración (F) | Esperar la expiración de la apertura o de la sesión | `expired`; el portal pide autenticarse de nuevo |
| PT-11 | Exposición de credenciales | Revisar URLs, historial del navegador, registros y recursos FHIR | No aparecen tokens, secretos ni RUN |
| PT-12 | Auditoría | Abrir, denegar y expirar | Registros en el servicio nacional y en el proveedor, correlacionados |
| PT-13 | Paciente no resuelto (E) | Enviar un evento cuyo paciente tiene coincidencias múltiples en el MPI | `OperationOutcome``multiple-matches`; el estudio no se publica; el evento queda en conciliación |
| PT-14 | Modalidad C | Seguir el enlace al portal del proveedor | El paciente se autentica en el proveedor y encuentra el estudio por fecha y Accession Number |
| PT-15 | Retención (D-023) | Publicar un estudio`available`cuya prestación está en la lista de retención, sin informe | El portal no ofrece abrir el visor; una apertura forzada responde`forbidden`. Al llegar el informe final, o a los 14 días corridos desde la primera publicación`available`, se ofrece con el aviso normado |
| PT-16 | Informe preliminar (D-023) | Con el estudio`available`, enviar un`ORU^R01`con`OBX-11 = P` | El portal sigue mostrando "informe pendiente" y no presenta el preliminar; las imágenes siguen accesibles |
| PT-17 | Aviso normado (D-023) | Abrir un estudio sin informe | El portal muestra el texto mínimo obligatorio |
| PT-18 | Aserción inválida | Presentar al proveedor aserciones con firma alterada, otra`aud`, vencidas, con`jti`repetido y con un estudio distinto del solicitado | Todas se rechazan y quedan auditadas |

## Referencias normativas

* HL7 FHIR R4 (4.0.1): `ImagingStudy`, `Endpoint`, `DiagnosticReport`, `OperationOutcome`, `AuditEvent`; interacción **conditional update** y `Bundle` `transaction` (http.html).
* HL7 Terminology: `endpoint-connection-type` (incluye `ihe-iid`, `dicom-wado-rs`, `dicom-qido-rs`) y `endpoint-payload-type`.
* DICOM PS3.3 (atributos del estudio), PS3.4 (**Instance Availability Notification Service Class**) y PS3.18 (DICOMweb: WADO-RS, QIDO-RS).
* IHE Radiology: **Invoke Image Display** (IID, RAD-106) y **Scheduled Workflow** (contexto de la notificación de disponibilidad). Material informativo: D. Clunie, **Invoke Image Display (IID)**, webinar IHE, 2013.
* IHE IT Infrastructure: **Basic Audit Log Patterns** (BALP); **Internet User Authorization** (IUA) como referencia para la autorización basada en OAuth 2.0.
* IETF: RFC 7519 (JWT), RFC 7515 (JWS), RFC 6749 (OAuth 2.0), RFC 7523 (aserciones JWT para autenticación de clientes), RFC 8705 (TLS mutuo en OAuth 2.0); OpenID Connect Core 1.0.
* Guías nacionales: NID 0.4.9 (identidad y MPI) y CL-Core 1.9.4.

