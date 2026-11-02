# Arquitectura - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Arquitectura**

## Arquitectura

# Arquitectura de interoperabilidad

## Jerarquía normativa de esta guía

Las guías de implementación FHIR de Chile siguen una jerarquía de herencia, donde cada nivel restringe o especializa al nivel superior:

1. **HL7 Internacional**: especificación base FHIR R4.
1. **CL-Core**(`hl7.fhir.cl.clcore`, mantenida por HL7 Chile): guía transversal para Chile. Es agnóstica de dominio y no es normativa: hereda terminología de la guía ACE del DEIS pero solo la sugiere, sin obligarla.
1. **NID**(Núcleo de Interoperabilidad de Datos, mantenido por la Unidad de Interoperabilidad de MINSAL): núcleo normativo de MINSAL. Es más restrictivo que CL-Core, porque obliga elementos que en CL-Core son opcionales (por ejemplo, el identificador del paciente y el uso de la terminología de la ACE para el sexo registral) y define los perfiles transversales de paciente, prestador individual y organización que usan los proyectos MINSAL.
1. **Esta guía (Imagenología)**: guía de dominio específico. Declara dependencia formal con NID 0.4.9 y con CL-Core 1.9.4, la versión de la que depende NID. Los perfiles de paciente, prestador y organización de esta guía derivan de los perfiles de NID (`MINSALPaciente`,`MINSALPrestadorProfesional`y`MINSALPrestadorOrganizacional`).

## Sistemas que participan

| | |
| :--- | :--- |
| **HIS** | Gestión administrativa y clínica del establecimiento. Genera la orden y mantiene la identidad del paciente. |
| **RIS** | Gestión del departamento de imagenología: agenda el estudio, registra su ejecución y produce el informe radiológico. |
| **PACS / VNA** | Almacenamiento y distribución de las imágenes DICOM. Las imágenes no salen de él hacia el Bus ni hacia el repositorio FHIR. |
| **Bus de Interoperabilidad MINSAL** | Valida, homologa, transforma a FHIR y publica el modelo canónico. |
| **MPI** | Índice Maestro de Pacientes: resuelve la identidad. |
| **Servicio terminológico** | Valida o traduce los códigos de procedimiento. |
| **Portal Ciudadano** | Consume el informe publicado en FHIR y ofrece abrir las imágenes en el visor del proveedor. |
| **Servicio nacional de autorización** | Decide el acceso del paciente a las imágenes de un estudio y resuelve la apertura del visor del proveedor. Ver[Acceso a imágenes sin informe](acceso-imagenes.md). |
| **Visor web del proveedor** | Presenta las imágenes al paciente desde la infraestructura de origen. |

## Flujo de integración con el Bus de Interoperabilidad

flowchart LR SOL["Solicitud de Imagenología"] --> RIS["RIS"] RIS --> PDF["Informe PDF"] SOL --> API subgraph BUS["BUS"] API["Recepción HL7 v2"] --> TRANS["Transforma"] TRANS --> FHIR["Repositorio FHIR"] end PDF --> TRANS TRANS --> CT["Consulta terminológico"] TRANS --> MPI["Consulta MPI"] FHIR --> PORTAL["PORTAL CIUDADANO"]

La solicitud (`ORM^O01`) y el informe (`ORU^R01`) entran por caminos distintos y convergen en la transformación del Bus. El resultado se persiste en el repositorio FHIR, que es la fuente que consulta el Portal Ciudadano.

El flujo cubre dos caminos:

1. **Solicitud de examen**: el HIS envía`ORM^O01`; el Bus homologa el código del procedimiento consultando el servicio terminológico, resuelve la identidad contra el MPI y arma el`MinsalServiceRequestImagen`.
1. **Informe radiológico**: el RIS envía`ORU^R01`con el PDF en Base64; el Bus lo transforma a`InformeRadiologicoMinsal`y lo enlaza con la solicitud y con el`EstudioImagenologicoMinsal`cuando corresponde, y lo persiste en el repositorio FHIR antes de responder.

## Transporte y acuse de recibo

La mensajería HL7 v2 entre HIS y RIS opera sobre **MLLP (socket)** con HL7 v2.5. El modelo de acuse es asimétrico y la guía lo documenta porque condiciona la gestión de errores del Bus:

| | | |
| :--- | :--- | :--- |
| `ORM-In`(HIS → RIS) | RIS | Recepción de la solicitud. |
| `ORU-Out`(RIS → HIS) | HIS | Solo`ACK`/`NACK`**a nivel de comunicación**. El RIS no efectúa gestión de errores: si el receptor detecta un problema, debe enviar`NACK`con la descripción, pero el emisor no reintenta. |

Consecuencia de diseño: como el emisor del informe no reintenta, un rechazo equivale a perder el informe. Por eso el Bus acusa en cuanto el mensaje queda guardado y trata todo lo demás después, sin devolverlo al emisor (D-026):

| | | |
| :--- | :--- | :--- |
| Recepción | Que el mensaje se pueda leer y trazar:`MSH`legible, tipo de mensaje admitido y`MSH-10`presente | `AE`/`AR`sólo si falla esto |
| Persistencia | El mensaje crudo queda guardado de forma durable, antes de transformar | `AA` |
| Procesamiento | Identidad en el MPI, homologación terminológica, transformación y validación contra esta guía | No hay acuse: lo que falla va a**conciliación auditada** |

* Un informe en conciliación no se publica hasta resolverse y no se pierde: el mensaje crudo ya está guardado y el Bus lo reprocesa.
* En el piloto no hay aviso al establecimiento: la conciliación la atiende el equipo central de MINSAL. El aviso al establecimiento queda como mejora posterior, cuando exista un canal que no frene el proceso (D-005, D-026).
* En la solicitud, que el Bus no publique un examen en el modelo canónico **nunca** interrumpe el flujo clínico HIS → RIS.
* Los mensajes de un mismo informe se procesan en el orden en que llegan: la clave de partición del procesamiento asíncrono es el Accession Number (o, si falta, el número de orden del ejecutante), **nunca el RUN** del paciente (D-025).
* La trazabilidad del mensaje (`MSH-10`) se conserva en `Bundle.identifier`.

## El Accession Number como eje de trazabilidad

La interfaz de referencia ORU-Out es explícita: el HIS debe asociar los informes recibidos al Accession Number enviado por el RIS durante todo el flujo de mensajería. Esta guía eleva esa regla al modelo canónico:

flowchart TD ORM["ORM^O01

OBR-18 Accession Number"] --> SR["MinsalServiceRequestImagen"] ORM --> IS["EstudioImagenologicoMinsal

identifier ACSN"] ORU["ORU^R01

OBR-18 Accession Number"] --> DR["InformeRadiologicoMinsal

identifier ACSN"] IS --> DR SR --> DR

El Accession Number se representa siempre como `Identifier` con `type` = `ACSN` (`http://terminology.hl7.org/CodeSystem/v2-0203`) y el `system` del establecimiento que lo asigna, según la tabla de la sección siguiente. Es también la clave con que el Bus crea o actualiza el informe (`PUT` condicional, D-025). Cuando el PACS informe además el **Study Instance UID** DICOM, este se registra como un segundo identificador con `system` = `urn:dicom:uid`, lo que permite recuperar las imágenes vía DICOMweb desde `ImagingStudy.endpoint`.

## Sistemas de identificadores por establecimiento

Los identificadores que asigna cada establecimiento llevan un `system` construido con su **código DEIS**, el mismo patrón en Imagenología y en Laboratorio Clínico (D-028). Así, dos establecimientos que reutilizan el mismo valor local (por ejemplo, el examen `TC01` o la orden `134`) no colisionan.

| | | | |
| :--- | :--- | :--- | :--- |
| Accession Number (tipo`ACSN`) | `OBR-18` | `DiagnosticReport.identifier`,`ImagingStudy.identifier` | `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/accession-number` |
| Número de orden del solicitante (tipo`PLAC`) | `ORC-2`/`OBR-2` | `ServiceRequest.identifier` | `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/orden-solicitante` |
| Número de orden del ejecutante (tipo`FILL`) | `ORC-3`/`OBR-3` | `ServiceRequest.identifier`,`DiagnosticReport.identifier`cuando falta el Accession Number | `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/orden-ejecutante` |
| Número de solicitud agrupador | `ORC-4` | `ServiceRequest.requisition` | `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/solicitud` |
| Catálogo local de procedimientos | `OBR-4` | `code.coding`(catálogo local) | `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/procedimientos` |

`{DEIS}` es el código DEIS del establecimiento que asigna el identificador, el mismo de `MSH-4` y de `OrganizacionParticipanteImagenologia`. El esquema es `http`, el mismo de `http://deis.minsal.cl/establecimientos` que usa el portafolio. El `system` del catálogo local es idéntico a la URL canónica de ese catálogo en el servidor terminológico, que mantiene su homologación a FONASA.

## Resolución de identidad mediante MPI

El Índice Maestro de Pacientes opera sobre los perfiles de paciente, prestador y organización definidos por NID. La consulta al MPI debe realizarse centralmente desde el Bus de Interoperabilidad; no se exige que cada establecimiento implemente directamente la integración con el MPI.

El establecimiento es responsable de enviar los identificadores y datos demográficos disponibles y confiables: en `PID` por el canal HL7 v2, o como recurso `Patient` completo conforme al perfil de NID por el canal FHIR directo. En ambos canales el Bus normaliza estos datos, consulta al MPI y utiliza la identidad resuelta para construir `PacienteImagenologia`: el recurso recibido es la entrada a la resolución, no el recurso publicado.

Las especificaciones de integración del RIS imponen dos restricciones que la guía debe absorber:

* **"Todo el ingreso de pacientes debe contener un RUT"**, y si el paciente no tiene RUT se usa el pasaporte como clave primaria.
* El RIS no valida el dígito verificador del RUT. La mensajería real de un segundo emisor confirma que el problema no es de un solo producto: llegó con dígitos verificadores inválidos en el paciente y en los profesionales.

Es decir, la validación del identificador **no ocurre en el RIS**. Por lo tanto debe ocurrir en el Bus, antes de consultar el MPI: normalización del formato del RUN, validación del dígito verificador y decisión sobre qué hacer cuando el identificador es un pasaporte.

### Decisiones según la respuesta del MPI

| | |
| :--- | :--- |
| Coincidencia única | Continuar la transformación y utilizar el paciente maestro |
| Sin coincidencias | Retener en conciliación. El alta de pacientes nuevos en el MPI está centralizada en MINSAL; resuelta la identidad, el Bus reprocesa el mensaje retenido |
| Múltiples coincidencias | Retener en conciliación para gestión manual; no da origen a un alta |
| RUN con dígito verificador inválido o identificadores contradictorios | Retener en conciliación para gestión manual; no da origen a un alta |
| MPI no disponible | Reintentar o aplicar una contingencia controlada y auditable |

El Bus **no crea pacientes** (D-001). Un informe o un estudio retenido no se publica ni se pierde: queda en conciliación con su motivo hasta que se resuelve la identidad (D-005).

### Uso de la identidad resuelta

Una vez resuelto el paciente, todos los recursos del flujo deben referenciar la misma identidad:

flowchart LR A["MinsalServiceRequestImagen.subject"] --> P["PacienteImagenologia"] B["EstudioImagenologicoMinsal.subject"] --> P C["InformeRadiologicoMinsal.subject"] --> P

`PacienteImagenologia.identifier` puede conservar simultáneamente el identificador maestro, el documento oficial y los identificadores locales, indicando siempre un `system` diferente para cada dominio.

## Responsabilidades

| | |
| :--- | :--- |
| HIS / establecimiento | Entregar identificadores y datos demográficos confiables; asegurar la unicidad del número de solicitud y del identificador de cada examen dentro de ella |
| RIS | Asignar y conservar el Accession Number; emitir el informe y sus estados (preliminar, final, corrección, eliminado) |
| Bus de Interoperabilidad | Acusar al persistir el mensaje, normalizar, validar el RUN, consultar el MPI, homologar terminología, transformar, validar contra esta guía, publicar con actualización condicional y auditar; retener en conciliación lo que no puede publicar |
| Equipo central MINSAL | Atender la cola de conciliación y dar de alta en el MPI a los pacientes nuevos (D-005) |
| MPI | Mantener la identidad maestra y las referencias cruzadas entre dominios |
| Servicio terminológico | Mantener el catálogo local de procedimientos de cada establecimiento (D-028) y su homologación a FONASA (D-014), y derivar SNOMED CT o LOINC |
| PACS / VNA y visor del proveedor | Custodiar las imágenes, informar su disponibilidad (evento`MinsalBundleEstudioImagenologia`), declarar su mecanismo de acceso (`EndpointAccesoImagenesMinsal`) y presentar las imágenes con su visor, sujeto a la autorización del servicio nacional |
| Servicio nacional de autorización | Verificar identidad, pertenencia del estudio y política de publicación antes de abrir el visor; auditar cada acceso |

## Profesionales que llegan por HL7 v2

`ORC-12` y `OBR-32` traen sólo el RUN y el nombre del profesional, y el perfil de prestador de NID exige además fecha de nacimiento y título. Por eso, cuando la solicitud o el informe llegan por HL7 v2, el profesional se representa con una **referencia lógica**: `identifier` con el RUN del prestador, sin recurso `Practitioner` (D-027). La derivación de NID (D-016) rige para los recursos que llegan por FHIR. Cuando exista un registro maestro de prestadores, el Bus podrá resolver la referencia contra él.

## Organizaciones participantes

Los establecimientos de origen y los servicios ejecutantes de imagenología se representan con el perfil `OrganizacionParticipanteImagenologia`. El rol se determina por el lugar donde se referencia:

| | |
| :--- | :--- |
| Establecimiento emisor del informe (código DEIS de`MSH-4`) | `DiagnosticReport.performer` |
| Organización que solicita directamente | `ServiceRequest.requester` |
| Servicio de imagenología que ejecuta el examen | `ServiceRequest.performer` |

Una organización que cumple más de un rol se representa una sola vez y puede ser referenciada desde varios elementos. El identificador debe incluir el **código DEIS** del establecimiento cuando exista, dato que la presentación de radiología identifica como requerido para la procedencia.

## Seguridad y trazabilidad

Cada consulta o conciliación debe registrar como mínimo el sistema solicitante, fecha, identificadores utilizados, resultado de la operación y regla aplicada. Los registros de auditoría no deben exponer información clínica o demográfica más allá de lo necesario.

Las imágenes no viajan en ningún recurso FHIR: `ImagingStudy` contiene metadatos y la referencia al mecanismo de acceso del proveedor, y ningún recurso almacena credenciales ni tokens. Los requisitos de seguridad del acceso a imágenes están en [Integración de proveedores de imágenes](acceso-imagenes-proveedores.md).

El informe PDF viaja embebido en Base64 dentro del recurso FHIR. El Bus debe validar el Base64 y la firma del archivo antes de publicarlo, y el control de acceso al `DiagnosticReport` debe considerar que el `presentedForm` contiene el informe clínico completo.

Referencias MINSAL:

* [Índice Maestro de Pacientes](https://interoperabilidad.minsal.cl/docs/componentes-de-la-arquitectura/empi.html)
* [Transacciones MPI](https://interoperabilidad.minsal.cl/fhir/ig/mpi/transacciones.html)
* [CapabilityStatement del administrador MPI](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.html)

