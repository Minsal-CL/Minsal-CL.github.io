# Arquitectura - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* **Arquitectura**

## Arquitectura

# Arquitectura de interoperabilidad

## Jerarquía normativa de esta guía

Las guías de implementación FHIR de Chile siguen una jerarquía de herencia, donde cada nivel restringe o especializa al nivel superior:

1. **HL7 Internacional**: especificación base FHIR R4.
1. **CL-Core**(`hl7.fhir.cl.clcore`, mantenida por HL7 Chile): guía transversal para Chile. Es agnóstica de dominio y no es normativa: hereda terminología de la guía ACE del DEIS pero solo la sugiere, sin obligarla.
1. **NID**(Núcleo de Interoperabilidad de Datos, mantenido por la Unidad de Interoperabilidad de MINSAL): núcleo normativo de MINSAL. Es más restrictivo que CL-Core, porque obliga elementos que en CL-Core son opcionales (por ejemplo, el identificador del paciente y el uso de la terminología de la ACE para el sexo registral) y define los perfiles transversales de paciente, prestador individual y organización que usan los proyectos MINSAL.
1. **Esta guía (Imagenología)**: guía de dominio específico. Declara dependencia formal con NID 0.4.9 y con CL-Core 1.9.4, la versión de la que depende NID. Los perfiles de paciente, prestador y organización de esta guía derivan de los perfiles de NID (`MINSALPaciente`,`MINSALPrestadorProfesional`y`MINSALPrestadorOrganizacional`), según la decisión D-016.

Esta guía es hermana de la [Guía de Implementación FHIR de Laboratorio Clínico](https://interoperabilidad.minsal.cl/fhir/ig/laboratorio): comparte la misma jerarquía normativa, el mismo Bus, el mismo MPI y el mismo servicio terminológico, y se diferencia en el dominio clínico y en los recursos focales.

## Sistemas que participan

| | |
| :--- | :--- |
| **HIS** | Gestión administrativa y clínica del establecimiento. Genera la orden y mantiene la identidad del paciente. |
| **RIS** | Gestión del departamento de imagenología: agenda el estudio, registra su ejecución y produce el informe radiológico. |
| **PACS** | Almacenamiento y distribución de las imágenes DICOM. |
| **Bus de Interoperabilidad MINSAL** | Valida, homologa, transforma a FHIR y publica el modelo canónico. |
| **MPI** | Índice Maestro de Pacientes: resuelve la identidad. |
| **Servicio terminológico** | Valida o traduce los códigos de procedimiento. |
| **Portal Ciudadano** | Consume el informe publicado en FHIR. |

## Flujo de integración con el Bus de Interoperabilidad

flowchart LR SOL["Solicitud de Imagenología"] --> RIS["RIS"] RIS --> PDF["Informe PDF"] SOL --> API subgraph BUS["BUS"] API["Recepción HL7 v2"] --> TRANS["Transforma"] TRANS --> FHIR["Repositorio FHIR"] end PDF --> TRANS TRANS --> CT["Consulta terminológico"] TRANS --> MPI["Consulta MPI"] FHIR --> PORTAL["PORTAL CIUDADANO"]

La solicitud (`ORM^O01`) y el informe (`ORU^R01`) entran por caminos distintos y convergen en la transformación del Bus. El resultado se persiste en el repositorio FHIR, que es la fuente que consulta el Portal Ciudadano.

El flujo cubre dos caminos:

1. **Solicitud de examen**: el HIS envía`ORM^O01`; el Bus homologa el código del procedimiento consultando el servicio terminológico, resuelve la identidad contra el MPI y arma el`MinsalServiceRequestImagen`.
1. **Informe radiológico**: el RIS envía`ORU^R01`con el PDF en Base64; el Bus lo transforma a`InformeRadiologicoMinsal`y lo enlaza con la solicitud y con el`EstudioImagenologicoMinsal`cuando corresponde, y lo persiste en el repositorio FHIR antes de responder.

La sincronización de pacientes (`ADT`) está fuera del alcance de esta guía: sus eventos y el tratamiento de la fusión de registros son responsabilidad del servicio común de identidad (MPI / NID) y se especifican allí.

## Transporte y acuse de recibo

La mensajería HL7 v2 entre HIS y RIS opera sobre **MLLP (socket)** con HL7 v2.5. El modelo de acuse es asimétrico y la guía lo documenta porque condiciona la gestión de errores del Bus:

| | | |
| :--- | :--- | :--- |
| `ORM-In`(HIS → RIS) | RIS | Recepción de la solicitud. |
| `ORU-Out`(RIS → HIS) | HIS | Solo`ACK`/`NACK`**a nivel de comunicación**. Enterprise Imaging no efectúa gestión de errores: si el receptor detecta un problema, debe enviar`NACK`con la descripción, pero el emisor no reintenta. |

Consecuencia de diseño: el Bus debe **persistir y auditar** todo informe recibido antes de responder, porque el emisor no reenvía. La trazabilidad del mensaje (`MSH-10`) debe conservarse en `Bundle.identifier`.

## El Accession Number como eje de trazabilidad

La especificación ORU-Out es explícita: **"El HIS debe asociar los informes recibidos al accession number enviado por Enterprise Imaging durante todo el flujo de mensajería"**. Esta guía eleva esa regla al modelo canónico:

flowchart TD ORM["ORM^O01

OBR-18 Accession Number"] --> SR["MinsalServiceRequestImagen"] ORM --> IS["EstudioImagenologicoMinsal

identifier ACSN"] ORU["ORU^R01

OBR-18 Accession Number"] --> DR["InformeRadiologicoMinsal

identifier ACSN"] IS --> DR SR --> DR

El Accession Number se representa siempre como `Identifier` con `type` = `ACSN` (`http://terminology.hl7.org/CodeSystem/v2-0203`) y el `system` acordado para el dominio del RIS emisor. Cuando el PACS informe además el **Study Instance UID** DICOM, este se registra como un segundo identificador con `system` = `urn:dicom:uid`, lo que permite recuperar las imágenes vía DICOMweb desde `ImagingStudy.endpoint`.

## Resolución de identidad mediante MPI

El Índice Maestro de Pacientes opera sobre los perfiles de paciente, prestador y organización definidos por NID. La consulta al MPI debe realizarse centralmente desde el Bus de Interoperabilidad; no se exige que cada establecimiento implemente directamente la integración con el MPI.

El establecimiento es responsable de enviar los identificadores y datos demográficos disponibles y confiables: en `PID` por el canal HL7 v2, o como recurso `Patient` completo conforme al perfil de NID por el canal FHIR directo (decisión D-012). En ambos canales el Bus normaliza estos datos, consulta al MPI y utiliza la identidad resuelta para construir `PacienteImagenologia`: el recurso recibido es la entrada a la resolución, no el recurso publicado.

Las especificaciones de integración del RIS imponen dos restricciones que la guía debe absorber:

* **"Todo el ingreso de pacientes debe contener un RUT"**, y si el paciente no tiene RUT se usa el pasaporte como clave primaria.
* **"Enterprise Imaging no valida el dígito verificador del RUT"**.

Es decir, la validación del identificador **no ocurre en el RIS**. Por lo tanto debe ocurrir en el Bus, antes de consultar el MPI: normalización del formato del RUN, validación del dígito verificador y decisión sobre qué hacer cuando el identificador es un pasaporte.

### Decisiones según la respuesta del MPI

| | |
| :--- | :--- |
| Coincidencia única | Continuar la transformación y utilizar el paciente maestro |
| Múltiples coincidencias | Detener el procesamiento automático y enviar a conciliación |
| Sin coincidencias | Aplicar la política de revisión o creación autorizada por el gobierno del MPI |
| Identificadores contradictorios | Rechazar o dejar pendiente hasta resolver la identidad |
| MPI no disponible | Reintentar o aplicar una contingencia controlada y auditable |

Una respuesta sin coincidencias no autoriza por sí sola la creación automática de un paciente.

### Uso de la identidad resuelta

Una vez resuelto el paciente, todos los recursos del flujo deben referenciar la misma identidad:

flowchart LR A["MinsalServiceRequestImagen.subject"] --> P["PacienteImagenologia"] B["EstudioImagenologicoMinsal.subject"] --> P C["InformeRadiologicoMinsal.subject"] --> P

`PacienteImagenologia.identifier` puede conservar simultáneamente el identificador maestro, el documento oficial y los identificadores locales, indicando siempre un `system` diferente para cada dominio.

## Responsabilidades

| | |
| :--- | :--- |
| HIS / establecimiento | Entregar identificadores y datos demográficos confiables; asegurar la unicidad del número de solicitud y del identificador de cada examen dentro de ella |
| RIS | Asignar y conservar el Accession Number; emitir el informe y sus estados (preliminar, final, corrección, eliminado) |
| Bus de Interoperabilidad | Normalizar, validar el RUN, consultar el MPI, homologar terminología, transformar, validar contra esta guía y auditar |
| MPI | Mantener la identidad maestra y las referencias cruzadas entre dominios |
| Servicio terminológico | Validar o traducir los códigos de procedimiento hacia SNOMED CT, LOINC o FONASA |
| PACS | Custodiar las imágenes y exponer el endpoint DICOMweb de recuperación |

## Organizaciones participantes

Los establecimientos de origen y los servicios ejecutantes de imagenología se representan con el perfil `OrganizacionParticipanteImagenologia`. El rol se determina por el lugar donde se referencia:

| | |
| :--- | :--- |
| Establecimiento emisor del mensaje | `MessageHeader.sender` |
| Establecimiento receptor | `MessageHeader.destination.receiver` |
| Organización que solicita directamente | `ServiceRequest.requester` |
| Servicio de imagenología que ejecuta el examen | `ServiceRequest.performer` |

Una organización que cumple más de un rol se representa una sola vez y puede ser referenciada desde varios elementos. El identificador debe incluir el **código DEIS** del establecimiento cuando exista, dato que la presentación de radiología identifica como requerido para la procedencia.

## Seguridad y trazabilidad

Cada consulta o conciliación debe registrar como mínimo el sistema solicitante, fecha, identificadores utilizados, resultado de la operación y regla aplicada. Los registros de auditoría no deben exponer información clínica o demográfica más allá de lo necesario.

El informe PDF viaja embebido en Base64 dentro del recurso FHIR. El Bus debe validar el Base64 y la firma del archivo antes de publicarlo, y el control de acceso al `DiagnosticReport` debe considerar que el `presentedForm` contiene el informe clínico completo.

Referencias MINSAL:

* [Índice Maestro de Pacientes](https://interoperabilidad.minsal.cl/docs/componentes-de-la-arquitectura/empi.html)
* [Transacciones MPI](https://interoperabilidad.minsal.cl/fhir/ig/mpi/transacciones.html)
* [CapabilityStatement del administrador MPI](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.html)

