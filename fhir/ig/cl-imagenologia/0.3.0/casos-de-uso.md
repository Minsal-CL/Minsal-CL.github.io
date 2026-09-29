# Casos de uso - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* **Casos de uso**

## Casos de uso

# Casos de uso

## Objetivo

Ejemplificar los flujos de mensajería asociados al intercambio de solicitudes de examen imagenológico e informes radiológicos, mostrando para cada actor qué mensaje debe enviar y qué respuesta debe recibir.

## Actores

| | |
| :--- | :--- |
| Establecimiento de origen (HIS / RCE / CPOE) | Genera la solicitud de examen y recibe el informe radiológico |
| Bus de Interoperabilidad MINSAL | Valida el mensaje, homologa estructura (HL7 v2 a FHIR) y terminología, y transforma a los recursos de esta guía |
| Servicio terminológico | Valida o traduce los códigos de procedimiento |
| MPI (Índice Maestro de Pacientes) | Resuelve la identidad del paciente; ver[Arquitectura](arquitectura.md) |
| RIS | Agenda el estudio, registra su ejecución y genera el informe radiológico |
| PACS | Almacena las imágenes y las expone mediante DICOMweb |
| Portal Ciudadano | Consume el informe final publicado en FHIR |

## Puntos de integración

Esta guía define dos puntos de integración independientes hacia el mismo Bus:

1. **Punto FHIR directo.**Sistemas que ya generan recursos FHIR nativos entregan directamente`MinsalServiceRequestImagen`o`InformeRadiologicoMinsal`mediante`POST`a la API del Bus.
1. **Punto HL7 v2 homologado.**Sistemas que solo generan mensajes HL7 v2 (`ORM^O01`,`ORU^R01`) se conectan a un gateway del Bus que homologa la estructura y los códigos antes de transformar a FHIR. El detalle campo a campo está en[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).

Ambos puntos convergen en el mismo modelo canónico. Un establecimiento no necesita saber si otro participante se integra por el camino FHIR o por el camino HL7 v2.

## Alcance por fases

| | | |
| :--- | :--- | :--- |
| Fase 1 (alcance de esta versión) | Solicitud de examen (UC1) e informe radiológico con PDF (UC2), ambos en envío transaccional con`Bundle` | En desarrollo, con perfiles y ejemplos publicados |
| Fase 2 (a futuro) | `ImagingStudy`con dato DICOM y recuperación de imágenes vía DICOMweb, cuestionario clínico de mamografía, recitación de pacientes y hallazgos estructurados (`Observation`con BI-RADS) | Descrito de forma conceptual, pendiente de diseño |
| Fuera de alcance | Sincronización de pacientes (`ADT`) | Responsabilidad del servicio común de identidad (MPI / NID) |

> **Punto abierto.** La especificación ORU-Out establece que el RIS enviará **todos** los informes generados, no solo los que correspondan a una orden creada en el HIS. Mientras no se acuerde lo contrario, el Bus debe aceptar informes sin solicitud previa: `InformeRadiologicoMinsal.basedOn` es opcional. La contrapartida es que un informe sin orden no permite cerrar el ciclo de lista de espera, por lo que se recomienda registrar siempre la solicitud cuando el establecimiento la genere.

## Caso de uso 1: Solicitud de examen imagenológico

Un establecimiento genera uno o más exámenes imagenológicos para un paciente y los envía al Bus, donde quedan disponibles para el RIS y para consulta posterior.

Recurso focal: `MinsalServiceRequestImagen`. Cuando la orden agrupa varios exámenes, se crea un `ServiceRequest` por cada uno, compartiendo el mismo `requisition`.

### UC1-a: Establecimiento con integración FHIR nativa

1. El establecimiento construye uno o más recursos`MinsalServiceRequestImagen`, referenciando al paciente, al profesional solicitante y al servicio ejecutante de imagenología.
1. Incluye en el`Bundle`el recurso`Patient`completo, conforme al perfil de paciente de NID (decisión D-012).
1. Envía un`Bundle`de tipo`transaction`con`POST`a la raíz del servidor del Bus.
1. El Bus resuelve el paciente contra el MPI, homologa el código del procedimiento con el servicio terminológico, valida los recursos contra los perfiles de esta guía y responde con el estado de cada entrada.

sequenceDiagram participant Est as Establecimiento (FHIR) participant Bus as Bus de Interoperabilidad participant MPI as MPI Est->>Bus: POST Bundle(transaction) [Patient NID + MinsalServiceRequestImagen] Bus->>MPI: resuelve identidad MPI-->>Bus: identidad confirmada Bus->>Bus: valida contra perfiles de esta guía Bus-->>Est: 200 OK / OperationOutcome

### UC1-b: Establecimiento con integración HL7 v2

1. El establecimiento genera un mensaje`ORM^O01`por cada examen, indicando en`OBR-4`el código del procedimiento y en`ORC-4.1`el número de solicitud que los agrupa.
1. El mensaje llega al gateway HL7 v2 del Bus, que valida su estructura.
1. El Bus consulta al servicio terminológico para validar u homologar el código del procedimiento, y consulta al MPI para resolver la identidad del paciente.
1. El Bus transforma el mensaje a`MinsalServiceRequestImagen`según las reglas de[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).
1. El Bus responde con un`ACK`HL7 v2.

sequenceDiagram participant Est as Establecimiento (v2) participant Bus as Bus de Interoperabilidad participant Term as Servicio Terminológico participant MPI as MPI participant RIS as RIS Est->>Bus: ORM^O01 (un mensaje por examen) Bus->>Term: valida código de procedimiento Term-->>Bus: código homologado Bus->>MPI: resuelve identidad MPI-->>Bus: identidad confirmada Bus->>Bus: transforma a MinsalServiceRequestImagen Bus->>RIS: solicitud disponible Bus-->>Est: ACK

### Restricciones que debe verificar el Bus

El Bus verifica las siguientes reglas antes de transformar una solicitud, en ambos canales:

| | | |
| :--- | :--- | :--- |
| R1 | Paciente con RUN válido (formato y dígito verificador) o pasaporte, resuelto en el MPI | Rechazo (`NACK`/`OperationOutcome`) |
| R2 | Profesional solicitante identificado con RUN (`ORC-12`o`ServiceRequest.requester`), según D-006 | Rechazo |
| R3 | Establecimiento identificado con código DEIS | Rechazo |
| R4 | Código del examen homologable a una prestación del arancel FONASA, verificado con el servicio terminológico (decisión D-014) | Rechazo |
| R5 | Código del examen existente en el catálogo del RIS (regla de la interfaz ORM-In: el RIS no puede crear la orden sin él) | Rechazo |

Estas reglas se aplican a la **solicitud**. Un **informe** que no cumple una regla no se rechaza, porque el RIS no reintenta y el rechazo equivaldría a perderlo: queda en cuarentena auditada hasta resolverse (ver decisión D-005).

### Operaciones

```
POST [URL_Base]/ServiceRequest

```

Para una solicitud con varios exámenes, `Bundle` de tipo `transaction` con un `ServiceRequest` por examen, todos con el mismo `requisition`:

```
POST [URL_Base]/

```

Consulta de los exámenes de una solicitud:

```
GET [URL_Base]/ServiceRequest?requisition=[valor_requisition]

```

## Caso de uso 2: Informe radiológico con PDF

El RIS genera el informe del estudio y lo envía al HIS o a su motor de integración. Este caso de uso corresponde al núcleo de la Fase 1.

Recurso focal: `InformeRadiologicoMinsal`, con el PDF codificado en `presentedForm.data`.

1. El radiólogo genera el informe en el RIS, que le asigna un estado (`P`,`F`,`C`/`A`,`D`).
1. El RIS envía`ORU^R01`sobre MLLP: un segmento`ORC`y`OBR`por cada examen del informe, y**un único**segmento`OBX`con el PDF en Base64.
1. El Bus valida la estructura, resuelve el paciente, y busca la solicitud original a partir de`ORC-2`/`ORC-3`u`OBR-2`/`OBR-3`.
1. El Bus transforma el mensaje a`InformeRadiologicoMinsal`, enlaza`basedOn`cuando encontró la solicitud y`imagingStudy`cuando existe el estudio, y persiste el`Bundle`en el repositorio FHIR.
1. Una vez persistido el informe, el Bus responde`ACK`a nivel de comunicación. El Portal Ciudadano y otros consumidores autorizados consultan el informe en el repositorio FHIR, no en el Bus.

sequenceDiagram participant RIS as RIS participant Bus as Bus de Interoperabilidad participant Repo as Repositorio FHIR participant Portal as Portal Ciudadano RIS->>Bus: ORU^R01 (PDF Base64 en OBX-5) Bus->>Bus: resuelve paciente y busca ServiceRequest Bus->>Bus: transforma a InformeRadiologicoMinsal Bus->>Repo: POST Bundle (transaction) Repo-->>Bus: 200 OK / OperationOutcome Bus-->>RIS: ACK (nivel de comunicación) Portal->>Repo: GET DiagnosticReport Repo-->>Portal: informe + PDF

### Ciclo de vida del informe

Un mismo estudio puede generar varios mensajes `ORU^R01` sucesivos: primero preliminar, luego final, y eventualmente una corrección o una eliminación.

stateDiagram-v2 [*] --> preliminary: ORU con OBX-11 = P preliminary --> final: ORU con OBX-11 = F final --> corrected: ORU con OBX-11 = C final --> amended: ORU con OBX-11 = A final --> entered_in_error: ORU con OBX-11 = D corrected --> entered_in_error: ORU con OBX-11 = D

Regla de actualización: el Bus **no crea un recurso nuevo** por cada estado. Localiza el `DiagnosticReport` existente por su Accession Number y actualiza `status`, `issued`, `presentedForm` y `resultsInterpreter`, conservando el historial de versiones del recurso.

### Operaciones

```
POST [URL_Base]/DiagnosticReport

```

Consulta del informe por paciente:

```
GET [URL_Base]/DiagnosticReport?patient.identifier=[identificador_paciente]&category=RAD

```

Consulta del informe asociado a una solicitud específica:

```
GET [URL_Base]/DiagnosticReport?based-on=[id_ServiceRequest]

```

Consulta por Accession Number, que es la vía recomendada cuando no hay solicitud previa:

```
GET [URL_Base]/DiagnosticReport?identifier=[system]|[accession_number]

```

## Fuera de alcance: sincronización de pacientes (ADT)

La sincronización demográfica entre el HIS y el RIS mediante eventos `ADT` no es un caso de uso de esta guía. La identidad del paciente la gestiona el servicio común de identidad (MPI / NID), que especifica los eventos `ADT`, la fusión de registros (`A40`) y el cambio de identificador (`A47`). Esta guía solo consume la identidad resuelta: una regla de fusión distinta por dominio clínico produciría tres identidades distintas del mismo paciente.

## Fase 2 (a futuro)

Los siguientes flujos no forman parte del alcance de esta versión y se documentan porque condicionan decisiones de perfilamiento:

* **Recuperación de imágenes desde el Portal Ciudadano.** Requiere exponer `ImagingStudy.endpoint` con un servicio DICOMweb (WADO-RS) y resolver la autorización de acceso a las imágenes, distinta de la del informe.
* **Recitación de pacientes.** La presentación de radiología lo señala como el punto crítico pendiente: poco frecuente en TC y RM, pero muy común en mamografía. Debe modelarse cómo se representa un nuevo examen derivado de un hallazgo previo (`ServiceRequest.basedOn` o `reasonReference` hacia el informe anterior).
* **Hallazgos estructurados.** Representar la categoría BI-RADS y otros hallazgos como recursos `Observation` referenciados desde `DiagnosticReport.result`, en lugar de dejarlos únicamente dentro del PDF.
* **Integración completa de mamografía con ficha de paciente**, señalada en la presentación como el siguiente paso de la modalidad MG.
* **Cuestionario clínico de mamografía.** Viaja hoy en los segmentos `OBX` de la solicitud y se recibe sin rechazar el mensaje, pero no se transforma en recursos del modelo canónico. Vuelve cuando exista una definición del formulario acordada con el programa clínico y no con un RIS.

