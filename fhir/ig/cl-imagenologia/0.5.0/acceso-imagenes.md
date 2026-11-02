# Acceso a imágenes sin informe - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Acceso a imágenes sin informe**

## Acceso a imágenes sin informe

# Acceso a imágenes sin informe radiológico

## Objetivo

Especificar cómo un paciente consulta, desde el Portal Ciudadano, las imágenes de un estudio imagenológico **aunque el informe radiológico todavía no haya sido emitido**, accediendo al visor existente del proveedor de origen.

La especificación cubre:

1. Cómo se informa que un estudio tiene imágenes disponibles para visualizar, con o sin informe.
1. Cómo se representa esa disponibilidad en FHIR R4, con los perfiles de esta guía.
1. Cómo el portal llega al visor del proveedor sin conocer su tecnología interna, mediante tres modalidades de integración. El detalle está en[Integración de proveedores de imágenes](acceso-imagenes-proveedores.md).
1. Requisitos comunes de seguridad, autorización, trazabilidad y conformidad.

**Fuera de alcance:** un visor nacional, un repositorio central de imágenes y el traslado de imágenes DICOM al repositorio FHIR nacional o al portal. Las imágenes **permanecen en el PACS/VNA del proveedor** (decisión D-021).

> **Estado.** Incorporado en la versión 0.4.0 (decisiones D-017 a D-023, aprobadas por MINSAL). Ver [Política de publicación al paciente](#politica-de-publicacion-al-paciente) y [Estado de las decisiones](#estado-de-las-decisiones).

## Principios

| | |
| :--- | :--- |
| P1 | La disponibilidad de las imágenes y la disponibilidad del informe son**conceptos independientes**, con ciclos de vida propios. |
| P2 | No se envía un`ORU^R01`vacío ni se crea un`DiagnosticReport`sin informe para anunciar las imágenes. |
| P3 | Recibir una orden, registrar el examen en el RIS o completar el MPPS de la modalidad**no**significa que las imágenes se puedan consultar. |
| P4 | El repositorio FHIR guarda**metadatos**del estudio y la referencia al mecanismo de acceso; nunca imágenes, credenciales ni tokens. |
| P5 | El acceso exige la identidad del paciente resuelta en el MPI**y**una autorización explícita para ese estudio. Conocer un identificador o una URL no basta para acceder. |
| P6 | Cada proveedor elige una modalidad de integración; el portal no necesita conocer su tecnología interna. |

## Escenarios funcionales

| | | | |
| :--- | :--- | :--- | :--- |
| **A** | Estudio realizado, imágenes disponibles, informe pendiente | `ImagingStudy.status = available`,`endpoint`a un mecanismo`active`;**no existe**`DiagnosticReport`para el estudio | El examen, con la opción**Ver imágenes**, la leyenda "informe pendiente" y el aviso normado (salvo que la prestación esté en la lista de retención) |
| **B** | Estudio realizado, imágenes disponibles, informe emitido | Igual que A, más un`InformeRadiologicoMinsal`que referencia el estudio en`imagingStudy` | **Ver imágenes**y**Ver informe**, como acciones separadas |
| **C** | Estudio registrado, imágenes todavía no disponibles | `ImagingStudy.status = registered`, sin`endpoint`; o bien sólo la solicitud (`ServiceRequest`), sin`ImagingStudy` | El examen como registrado o en proceso,**sin**opción de ver imágenes |
| **D** | Imágenes que antes estaban disponibles y hoy no pueden consultarse | `status`sigue en`available`. Si falla todo el mecanismo,`Endpoint.status = suspended`o`error`. Si falla un estudio puntual, el emisor retira la referencia`endpoint`. Si el fallo se detecta al abrir, error transitorio en tiempo de ejecución | "Imágenes no disponibles en línea por ahora"; no se ofrece abrir el visor o se informa el error transitorio |
| **E** | Estudio que no se vincula de forma inequívoca con el paciente o con el identificador del examen | El estudio**no se publica**: el evento queda en conciliación auditada (mismo criterio que D-005) | Nada: el paciente no ve un estudio cuya pertenencia no está resuelta |
| **F** | Acceso denegado o sesión expirada al intentar ver las imágenes | No cambia ningún recurso; el servicio de autorización responde con error (`forbidden`/`expired`) y registra el intento | Mensaje de acceso denegado, o solicitud de autenticarse de nuevo |

Ejemplos: escenario A [EstudioMamografiaDisponibleSinInformeEjemplo](ImagingStudy-EstudioMamografiaDisponibleSinInformeEjemplo.md); B [EstudioTcCerebroEjemplo](ImagingStudy-EstudioTcCerebroEjemplo.md) con [InformeTcCerebroEjemplo](DiagnosticReport-InformeTcCerebroEjemplo.md); C [EstudioRmRegistradoSinImagenesEjemplo](ImagingStudy-EstudioRmRegistradoSinImagenesEjemplo.md); D [EstudioTcTemporalmenteNoDisponibleEjemplo](ImagingStudy-EstudioTcTemporalmenteNoDisponibleEjemplo.md) y [ResultadoImagenesNoDisponiblesEjemplo](OperationOutcome-ResultadoImagenesNoDisponiblesEjemplo.md); E [ResultadoPacienteNoResueltoEjemplo](OperationOutcome-ResultadoPacienteNoResueltoEjemplo.md); F [ResultadoAccesoDenegadoEjemplo](OperationOutcome-ResultadoAccesoDenegadoEjemplo.md) y [ResultadoSesionExpiradaEjemplo](OperationOutcome-ResultadoSesionExpiradaEjemplo.md).

## Cuatro estados independientes

El modelo separa cuatro preguntas que suelen confundirse. Cada una tiene su propio recurso y su propio estado, y ninguna se deduce de las otras:

| | | |
| :--- | :--- | :--- |
| ¿Se ordenó el examen? | `MinsalServiceRequestImagen.status` | `active`,`completed`,`revoked`… |
| ¿Existen imágenes del estudio en el PACS/VNA? | `EstudioImagenologicoMinsal.status` | `registered`,`available`,`cancelled`,`entered-in-error` |
| ¿Se pueden ver ahora? | `EstudioImagenologicoMinsal.endpoint`y`EndpointAccesoImagenesMinsal.status` | Referencia presente a un`Endpoint``active`/ ausente o`suspended`,`error`,`off` |
| ¿Hay informe? | Existencia de`InformeRadiologicoMinsal`y su`status` | Sin recurso /`preliminary`,`final`,`corrected`,`amended`,`entered-in-error` |

Un estudio es **visualizable** cuando se cumplen las tres condiciones siguientes:

1. `ImagingStudy.status = available`;
1. `ImagingStudy.endpoint`referencia al menos un`EndpointAccesoImagenesMinsal`de acceso de pacientes (`ihe-iid`,`api-proveedor`o`portal-proveedor`) con`status = active`;
1. el servicio nacional de autorización concede el acceso al paciente autenticado (esto se evalúa en tiempo de ejecución y no se almacena).

stateDiagram-v2 direction LR state "Estudio (ImagingStudy.status)" as E { [*] --> registered: RIS asigna UID / Accession Number registered --> available: PACS confirma instancias [*] --> available: primer evento ya con instancias registered --> cancelled: examen no realizado available --> entered_in_error: estudio retirado por error } state "Informe (DiagnosticReport)" as I { [*] --> sin_informe sin_informe --> preliminary: ORU OBX-11 = P sin_informe --> final: ORU OBX-11 = F preliminary --> final final --> corrected final --> amended }

Los dos diagramas no tienen transiciones cruzadas: la llegada del informe no cambia el estado del estudio, y un cambio en la disponibilidad de las imágenes no cambia el informe.

## Modelado FHIR R4

Este caso de uso reutiliza los perfiles existentes y agrega sólo lo que FHIR R4 no resuelve con ellos:

| | | | |
| :--- | :--- | :--- | :--- |
| [EstudioImagenologicoMinsal](StructureDefinition-EstudioImagenologicoMinsal.md) | Perfil de`ImagingStudy` | **Modificado**: semántica de`status`y`endpoint`documentada;`basedOn`,`procedureCode`,`description`,`numberOfSeries`y`numberOfInstances`pasan a**Must Support**; invariante`estudio-identificador-inequivoco` | Sin informe, el estudio es la única fuente para mostrar qué examen es y si sus imágenes se pueden ver |
| [InformeRadiologicoMinsal](StructureDefinition-InformeRadiologicoMinsal.md) | Perfil de`DiagnosticReport` | Sin cambios | El informe sigue siendo un recurso independiente que referencia al estudio |
| [PacienteImagenologia](StructureDefinition-PacienteImagenologia.md) | Perfil de`Patient` | Sin cambios | La identidad se resuelve en el MPI igual que en los demás flujos (D-001) |
| [EndpointAccesoImagenesMinsal](StructureDefinition-EndpointAccesoImagenesMinsal.md) | Perfil de`Endpoint` | **Nuevo** | Declara la modalidad de integración del proveedor; prohíbe credenciales en el recurso |
| [MinsalBundleEstudioImagenologia](StructureDefinition-MinsalBundleEstudioImagenologia.md) | Perfil de`Bundle` | **Nuevo** | Transporta el evento de disponibilidad (ningún Bundle existente sirve: el del informe exige un informe) |
| [MecanismoAccesoImagenes](CodeSystem-MecanismoAccesoImagenes.md)/[TipoConexionAccesoImagenes](ValueSet-TipoConexionAccesoImagenes.md) | `CodeSystem`/`ValueSet` | **Nuevos** | `ihe-iid`ya existe en la terminología HL7; sólo la API y el portal del proveedor carecen de código |

No se crean extensiones.

### ImagingStudy

| | |
| :--- | :--- |
| `identifier` | Study Instance UID (`system`=`urn:dicom:uid`, valor`urn:oid:…`) y Accession Number (`type`=`v2-0203#ACSN`,`system`del dominio del RIS). La invariante`estudio-identificador-inequivoco`exige al menos uno de los dos. El UID es la clave preferida de la actualización condicional, porque es único a nivel global; el Accession Number es único sólo dentro del dominio del RIS. |
| `status` | Semántica normativa de R4:`registered`= "the existence of the imaging study is registered, but there is nothing yet available";`available`= "at least one instance has been associated with this imaging study".**No**representa el informe ni la posibilidad de ver las imágenes. |
| `subject` | `PacienteImagenologia`resuelto en el MPI. Sin resolución inequívoca, el estudio no se publica (escenario E). |
| `started` | Inicio del examen (`ORC-7.4`o**Study Date/Time**DICOM). |
| `modality` | Modalidad DICOM obtenida de una fuente DICOM (D-008), nunca inferida del código del procedimiento. |
| `basedOn`,`procedureCode`,`description` | Permiten mostrar el examen mientras el informe está pendiente.`procedureCode`repite las codificaciones del código del examen cuando se conocen. |
| `numberOfSeries`,`numberOfInstances` | Cuando el PACS los informa. Sirven al portal como indicio de completitud, no como inventario. |
| `endpoint` | Mecanismo de acceso del proveedor (`EndpointAccesoImagenesMinsal`). Es el único elemento que indica si el estudio se puede ver. |
| `series` | **No se perfila**: el detalle de series e instancias permanece en el PACS/VNA (D-021). |

**Correspondencia DICOM ↔ FHIR:**

| | | |
| :--- | :--- | :--- |
| Study Instance UID | (0020,000D) | `ImagingStudy.identifier`con`system`=`urn:dicom:uid` |
| Accession Number | (0008,0050) | `ImagingStudy.identifier`con`type`=`ACSN` |
| Modalities in Study | (0008,0061) | `ImagingStudy.modality` |
| Study Date / Study Time | (0008,0020) / (0008,0030) | `ImagingStudy.started` |
| Study Description | (0008,1030) | `ImagingStudy.description` |
| Number of Study Related Series | (0020,1206) | `ImagingStudy.numberOfSeries` |
| Number of Study Related Instances | (0020,1208) | `ImagingStudy.numberOfInstances` |

### Endpoint

`Endpoint` describe **la dirección del servicio** y nada más. Hay que distinguir tres cosas:

| | | |
| :--- | :--- | :--- |
| Dirección del servicio | `Endpoint.address`(persistente) | `https://visor.example.org/IHEInvokeImageDisplay` |
| Contexto del estudio | Se agrega en tiempo de ejecución a partir de`ImagingStudy.identifier` | Study Instance UID en la invocación IID por estudio (RAD-106) |
| Autenticación y autorización | Mecanismo complementario, transitorio (D-022) | Aserción de acceso de corta duración, sesión de un solo uso |

Un endpoint DICOMweb (`dicom-wado-rs`, `dicom-qido-rs`) puede registrarse para usos profesionales, pero **no es un visor** y no autentica pacientes externos: no habilita el acceso del paciente. El perfil prohíbe `Endpoint.header` y exige `address` HTTPS sin parámetros de consulta (invariante `endpoint-acceso-https-sin-parametros`), para que ninguna credencial ni identificador quede almacenado.

Ejemplos: [EndpointIidVisorEjemplo](Endpoint-EndpointIidVisorEjemplo.md) (modalidad A), [EndpointApiProveedorEjemplo](Endpoint-EndpointApiProveedorEjemplo.md) (modalidad B), [EndpointPortalProveedorEjemplo](Endpoint-EndpointPortalProveedorEjemplo.md) (modalidad C).

### DiagnosticReport

* Mientras no hay informe **no existe** `DiagnosticReport` para el estudio. El portal deduce "informe pendiente" al no encontrar un informe que referencie el estudio, ya sea por `imagingStudy` o por el Accession Number en `identifier`.
* Cuando llega el `ORU^R01`, el Bus crea el `InformeRadiologicoMinsal` y lo enlaza al `ImagingStudy` **existente**. Para eso lo localiza por Study Instance UID o Accession Number y lo referencia en `imagingStudy`, sin incluirlo de nuevo en el `Bundle` del informe. El `ImagingStudy` no se modifica.
* Si el informe llega antes que el evento de disponibilidad, el flujo del informe no cambia (UC2). El evento posterior actualiza el mismo `ImagingStudy` por la actualización condicional, sin duplicarlo.
* Los informes `preliminary` no se muestran al paciente (D-023): mientras el único informe sea preliminar, el estudio se presenta como "informe pendiente". Es una regla del portal, no del modelo: el `DiagnosticReport` preliminar se publica igual en el repositorio.

### Patient y MPI

Se reutiliza sin cambios la resolución de identidad de la guía (ver [Arquitectura](arquitectura.md), sección "Resolución de identidad mediante MPI"). El portal consulta los estudios del paciente por la **referencia** al paciente maestro (`ImagingStudy?subject=Patient/[id]`), desde su servidor y no desde el navegador. El RUN no se pone en URLs que lleguen al navegador; cuando haya que buscar por identificador, se usa `POST [base]/ImagingStudy/_search` con los parámetros en el cuerpo.

## Evento de disponibilidad

### Origen

El evento puede originarse en distintos componentes, según la arquitectura del proveedor:

| | | |
| :--- | :--- | :--- |
| PACS / VNA | Notificación DICOM**Instance Availability Notification**, evento interno de "estudio estable", o consulta periódica (QIDO-RS / C-FIND) desde el adaptador | Es la fuente más confiable de que las instancias existen |
| RIS | Cambio de estado del examen asociado a la recepción de imágenes | Válido sólo si el RIS confirma la existencia de instancias; el fin del examen en la modalidad no basta (P3) |
| Adaptador de integración | Traduce cualquiera de las anteriores | Necesario para proveedores que sólo emiten HL7 v2 o DICOM |

En todos los casos, lo que llega al Bus es un [MinsalBundleEstudioImagenologia](StructureDefinition-MinsalBundleEstudioImagenologia.md). Esta guía no define mensajería HL7 v2 nueva para la disponibilidad (D-003 sigue abierta para el evento de ejecución).

### Semántica

```
POST [URL_Base]/
Content-Type: application/fhir+json

Bundle (transaction, MinsalBundleEstudioImagenologia)
  entry[estudio]  PUT  ImagingStudy?identifier=urn:dicom:uid|[Study Instance UID]
  entry[paciente] POST Patient            (recurso nuevo con fullUrl urn:uuid)

```

El paciente viaja completo y conforme al perfil de NID, no como referencia a un identificador nacional: el emisor no conoce el maestro del MPI, y es el Bus quien lo resuelve (D-001, D-012). Es el mismo patrón del canal FHIR directo de la solicitud ([BundleSolicitudImagenFhirDirectoEjemplo](Bundle-BundleSolicitudImagenFhirDirectoEjemplo.md)). El estudio referencia al paciente por su `fullUrl` dentro de la transacción.

Es la **actualización condicional** estándar de FHIR R4: no es una operación nueva. Ejemplo: [BundleDisponibilidadEstudioEjemplo](Bundle-BundleDisponibilidadEstudioEjemplo.md).

| | |
| :--- | :--- |
| Creación / actualización | Si no existe un`ImagingStudy`con ese identificador, se crea; si existe uno, se actualiza; si existen varios, el servidor responde`412 Precondition Failed`y el evento va a conciliación |
| Idempotencia | Reenviar el mismo evento produce el mismo estado del recurso |
| Duplicados | `Bundle.identifier`es la clave del evento: el Bus descarta un`identifier`ya procesado y responde como si lo hubiera aplicado |
| Orden | El Bus no aplica un evento con`Bundle.timestamp`anterior al último aplicado al mismo estudio, para que un evento atrasado no revierta un estado más reciente |
| Contenido | El recurso enviado es el estado completo del estudio. Para el escenario D puntual, el emisor envía el estudio sin`endpoint`; para restablecerlo, lo envía con`endpoint` |
| Paciente | El Bus resuelve`entry[paciente]`contra el MPI antes de publicar; sin coincidencia única el evento no se aplica (escenario E) |
| Respuesta | `Bundle`de tipo`transaction-response`en caso de éxito;`OperationOutcome`en caso de rechazo o conciliación |
| Alta y cambios de`Endpoint` | Fuera del evento: el`Endpoint`lo registra y mantiene MINSAL a solicitud del proveedor (ver[Registro del mecanismo de acceso](acceso-imagenes-proveedores.md#registro-del-mecanismo-de-acceso)) |

sequenceDiagram participant PACS as PACS / VNA del proveedor participant Ad as Adaptador del proveedor participant Bus as Bus de Interoperabilidad participant MPI as MPI participant Repo as Repositorio FHIR PACS->>Ad: instancias almacenadas (IAN / estudio estable / QIDO-RS) Ad->>Bus: POST Bundle(transaction) [PUT ImagingStudy?identifier=urn:dicom:uid|… + Patient] Bus->>Bus: descarta si Bundle.identifier ya fue procesado Bus->>MPI: resuelve identidad alt coincidencia única MPI-->>Bus: paciente maestro Bus->>Repo: PUT condicional ImagingStudy (status = available, endpoint) Repo-->>Bus: 200 / 201 Bus-->>Ad: transaction-response else múltiples coincidencias o sin coincidencia MPI-->>Bus: identidad no resuelta Bus->>Bus: evento a conciliación auditada (estudio no publicado) Bus-->>Ad: OperationOutcome (multiple-matches / not-found) end

## Arquitectura de referencia

| | | |
| :--- | :--- | :--- |
| 1 | Portal Ciudadano | Presenta los estudios del paciente y la opción de ver imágenes; nunca recibe imágenes ni credenciales permanentes |
| 2 | Mecanismo de autenticación del paciente | Autentica a la persona (por ejemplo, un proveedor de identidad OpenID Connect) |
| 3 | Servicio nacional de autorización y resolución de acceso | Verifica identidad, pertenencia del estudio, política de publicación y estado del mecanismo; obtiene la apertura del visor; audita |
| 4 | Servidor FHIR R4 (repositorio FHIR) | Expone`ImagingStudy`,`Endpoint`y`DiagnosticReport`(sólo metadatos e informes) |
| 5 | MPI | Resuelve la identidad del paciente |
| 6 | Adaptadores por proveedor | Emiten el evento de disponibilidad y, en las modalidades A y B, atienden la apertura del visor |
| 7 | RIS / PACS / VNA y visor web del proveedor | Custodian las imágenes y las presentan desde la infraestructura de origen |

flowchart LR PAC(["Paciente"]) --> PORTAL["1. Portal Ciudadano"] PORTAL --> IDP["2. Autenticación del paciente"] PORTAL --> AUT["3. Servicio nacional de autorización

y resolución de acceso"] AUT --> FHIR["4. Repositorio FHIR R4

ImagingStudy · Endpoint · DiagnosticReport"] AUT --> MPI["5. MPI"] AUT --> ADP["6. Adaptador del proveedor"] subgraph PROV["Infraestructura del proveedor"] ADP --> VIS["7. Visor web del proveedor"] VIS --> PACS[("RIS / PACS / VNA

imágenes DICOM")] end ADP -.->|"evento de disponibilidad

(metadatos)"| BUS["Bus de Interoperabilidad"] BUS --> FHIR PAC -.->|"navegador: visor del proveedor"| VIS

Las imágenes nunca atraviesan el Bus, el repositorio FHIR ni el portal: el navegador del paciente las recibe directamente desde el visor del proveedor.

### Flujo principal

1. El paciente inicia sesión en el portal.
1. El portal (desde su servidor) consulta los estudios asociados a la identidad resuelta:`GET [base]/ImagingStudy?subject=Patient/[id]&_include=ImagingStudy:endpoint`y los informes`GET [base]/DiagnosticReport?subject=Patient/[id]&category=RAD`.
1. El portal presenta el estudio con imágenes disponibles, aunque el informe esté pendiente.
1. El paciente selecciona**Ver imágenes**.
1. El servicio nacional de autorización verifica la identidad, la pertenencia del estudio, la política de publicación y el proveedor de origen.
1. Resuelve el mecanismo de acceso del`Endpoint`y obtiene la apertura del visor (modalidad A, B o C).
1. El navegador abre el visor del proveedor, que presenta las imágenes directamente desde la infraestructura de origen.
1. El servicio nacional y el proveedor registran el acceso.

sequenceDiagram actor P as Paciente participant Portal as Portal Ciudadano participant IdP as Autenticación participant Aut as Servicio nacional de autorización participant Repo as Repositorio FHIR participant Prov as Adaptador / visor del proveedor P->>Portal: inicia sesión Portal->>IdP: autenticación (p. ej. OpenID Connect) IdP-->>Portal: identidad autenticada Portal->>Repo: ImagingStudy?subject=Patient/[id] (servidor a servidor) Repo-->>Portal: estudios (A: available + endpoint, sin informe) Portal-->>P: estudio con "Ver imágenes" · informe pendiente P->>Portal: Ver imágenes Portal->>Aut: solicitud de acceso (identidad, id del ImagingStudy) Aut->>Repo: lee ImagingStudy y Endpoint Aut->>Aut: verifica pertenencia, política, Endpoint.status = active Aut->>Prov: obtiene apertura (IID + aserción / API / portal) Prov-->>Aut: apertura de un solo uso (B) o confirmación Aut-->>Portal: redirección al visor (sin credenciales permanentes) Portal-->>P: abre el visor del proveedor P->>Prov: carga el visor Prov->>Prov: valida aserción / sesión, restringe al estudio Prov-->>P: imágenes desde el PACS/VNA de origen Aut->>Aut: registra el acceso (auditoría)

### Flujos alternativos

| | | |
| :--- | :--- | :--- |
| Estudio no disponible (escenarios C y D) | Portal (`status`,`endpoint`,`Endpoint.status`) o servicio nacional al abrir | El portal no ofrece abrir el visor; si el fallo se detecta al abrir, responde`transient`y el paciente puede reintentar. No se modifica el estudio. |
| Paciente no resuelto (escenario E) | Bus, al recibir el evento | El estudio no se publica; el evento queda en conciliación con auditoría; el emisor recibe`multiple-matches`o`not-found`. |
| Autorización denegada (escenario F) | Servicio nacional | Responde`forbidden`sin revelar si el estudio existe; registra el intento. |
| Sesión expirada (escenario F) | Portal, servicio nacional o visor | Responde`expired`; el portal pide autenticarse de nuevo y genera una apertura nueva. |

flowchart TD A["Paciente pulsa Ver imágenes"] --> B{"¿Sesión vigente?"} B -- no --> X1["expired: reautenticar"] B -- sí --> C{"¿Estudio del paciente

y política lo permite?"} C -- no --> X2["forbidden: acceso denegado"] C -- sí --> D{"status = available y

Endpoint active?"} D -- no --> X3["Imágenes no disponibles en línea por ahora"] D -- sí --> E{"¿Proveedor responde?"} E -- no --> X4["transient: reintentar más tarde"] E -- sí --> F["Abrir visor del proveedor"] X1 --> L["Registro de auditoría"] X2 --> L X3 --> L X4 --> L F --> L

## Mensajes de disponibilidad en el portal

El portal deriva el mensaje sólo de los recursos FHIR y de la respuesta del servicio nacional; no se usa ninguna extensión (D-018, acción A-10):

| | |
| :--- | :--- |
| El proveedor del estudio no tiene ningún`EndpointAccesoImagenesMinsal`registrado | "Este establecimiento aún no ofrece imágenes en línea" |
| `status = registered`, o el estudio no existe todavía y sólo hay solicitud | "Examen registrado; las imágenes aún no están disponibles" |
| `status = available`sin`endpoint`, o con`Endpoint.status`distinto de`active` | "Imágenes no disponibles en línea por ahora" |
| Estudio retenido por la política de publicación | "Imágenes disponibles cuando se emita el informe" |
| `status = available`,`Endpoint``active`y acceso autorizado | **Ver imágenes** |

El portal no distingue, para un estudio puntual, entre "sin mecanismo de acceso" y "temporalmente no disponible": ambos muestran el mismo mensaje.

## Política de publicación al paciente

Decisión D-023. Se aplica en el servicio nacional de autorización y en el portal, no en el estado de los recursos FHIR:

| | | |
| :--- | :--- | :--- |
| Retención configurable | Por defecto las imágenes se publican sin esperar el informe. Los estudios de prestaciones, procedimientos o servicios incluidos en la lista de retención administrada por MINSAL no se muestran hasta que exista un informe`final`,`corrected`o`amended`, o hasta que venza el plazo máximo de**14 días corridos**desde que el estudio se publicó por primera vez con`status = available`. La lista parte**vacía**: la autoridad clínica la amplía cuando lo justifique, sin cambiar esta guía | Servicio nacional de autorización |
| Informes preliminares | No se muestran al paciente; el estudio se presenta como "informe pendiente" | Portal |
| Representantes y menores de edad | La misma regla de representación que el Portal Ciudadano aplica a informes e historia clínica (Ley 20.584), evaluada por estudio | Servicio nacional de autorización |
| Aviso al paciente | Texto mínimo obligatorio al presentar imágenes sin informe:**"Estas imágenes aún no han sido informadas por un médico radiólogo. Su interpretación debe realizarla un profesional de salud."**El portal puede ampliarlo, no omitirlo | Portal |

Un estudio retenido sigue con `status = available` en FHIR. El portal lo muestra sin la opción **Ver imágenes**, con la leyenda "imágenes disponibles cuando se emita el informe", y el servicio nacional rechaza una solicitud de apertura con `forbidden`.

## Estado de las decisiones

Las decisiones de este caso de uso (D-017 a D-023) y sus acciones asociadas (A-08 a A-13) están cerradas. La lista de retención se mantiene como configuración del servicio nacional de autorización y no requiere cambios en la guía.

El contrato con los proveedores, la seguridad, la matriz de conformidad y los escenarios de prueba están en [Integración de proveedores de imágenes](acceso-imagenes-proveedores.md).

