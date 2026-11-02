# Casos de uso - Guía de Implementación FHIR - Imagenología v0.5.0

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
| PACS / VNA | Almacena las imágenes; informa su disponibilidad y las presenta con el visor del proveedor |
| Portal Ciudadano | Consume el informe publicado en FHIR y, en el caso de uso 3, ofrece abrir las imágenes en el visor del proveedor |
| Servicio nacional de autorización | Decide si el paciente puede ver un estudio y resuelve la apertura del visor (caso de uso 3) |

## Puntos de integración

Esta guía define dos puntos de integración independientes hacia el mismo Bus:

1. **Punto FHIR directo.**Sistemas que ya generan recursos FHIR nativos entregan directamente`MinsalServiceRequestImagen`o`InformeRadiologicoMinsal`mediante`POST`a la API del Bus.
1. **Punto HL7 v2 homologado.**Sistemas que solo generan mensajes HL7 v2 (`ORM^O01`,`ORU^R01`) se conectan a un gateway del Bus que homologa la estructura y los códigos antes de transformar a FHIR. El detalle campo a campo está en[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).

Ambos puntos convergen en el mismo modelo canónico. Un establecimiento no necesita saber si otro participante se integra por el camino FHIR o por el camino HL7 v2.

## Alcance por fases

| | | |
| :--- | :--- | :--- |
| Fase 1 (alcance de esta versión) | Solicitud de examen (UC1) e informe radiológico con PDF (UC2), ambos en envío transaccional con`Bundle` | En desarrollo, con perfiles y ejemplos publicados |
| Acceso a imágenes (desde 0.4.0) | Disponibilidad del estudio sin informe y acceso del paciente al visor del proveedor (UC3) | Perfiles, ejemplos y documentación publicados |
| Fase 2 (a futuro) | Recuperación DICOMweb desde sistemas nacionales, cuestionario clínico de mamografía, recitación de pacientes y hallazgos estructurados (`Observation`con BI-RADS) | Descrito de forma conceptual, pendiente de diseño |
| Fuera de alcance | Sincronización de pacientes (`ADT`) | Responsabilidad del servicio común de identidad (MPI / NID) |

> **Punto abierto.** La especificación ORU-Out establece que el RIS enviará **todos** los informes generados, no solo los que correspondan a una orden creada en el HIS. Mientras no se acuerde lo contrario, el Bus debe aceptar informes sin solicitud previa: `InformeRadiologicoMinsal.basedOn` es opcional. La contrapartida es que un informe sin orden no permite cerrar el ciclo de lista de espera, por lo que se recomienda registrar siempre la solicitud cuando el establecimiento la genere.

## Caso de uso 1: Solicitud de examen imagenológico

Un establecimiento genera uno o más exámenes imagenológicos para un paciente y los envía al Bus, donde quedan disponibles para el RIS y para consulta posterior.

Recurso focal: `MinsalServiceRequestImagen`. Cuando la orden agrupa varios exámenes, se crea un `ServiceRequest` por cada uno, compartiendo el mismo `requisition`.

### UC1-a: Establecimiento con integración FHIR nativa

1. El establecimiento construye uno o más recursos`MinsalServiceRequestImagen`, referenciando al paciente, al profesional solicitante y al servicio ejecutante de imagenología.
1. Incluye en el`Bundle`el recurso`Patient`completo, conforme al perfil de paciente de NID.
1. Envía un`Bundle`de tipo`transaction`con`POST`a la raíz del servidor del Bus. Cada examen viaja como actualización condicional por su identificador (`PUT ServiceRequest?identifier=...`), de modo que reenviar la misma solicitud la actualiza en vez de duplicarla (D-025).
1. El Bus resuelve el paciente contra el MPI, homologa el código del procedimiento con el servicio terminológico, valida los recursos contra los perfiles de esta guía y responde con el estado de cada entrada.

sequenceDiagram participant Est as Establecimiento (FHIR) participant Bus as Bus de Interoperabilidad participant MPI as MPI Est->>Bus: POST Bundle(transaction) [Patient NID + MinsalServiceRequestImagen] Bus->>MPI: resuelve identidad MPI-->>Bus: identidad confirmada Bus->>Bus: valida contra perfiles de esta guía Bus-->>Est: transaction-response (estado por entrada) / OperationOutcome

### UC1-b: Establecimiento con integración HL7 v2

1. El establecimiento genera un mensaje`ORM^O01`(u`OMG^O19`) por cada examen, conforme al[perfil de conformidad HL7 v2](conformidad-hl7v2.md), indicando en`OBR-4`el código del procedimiento y en`ORC-4.1`el número de solicitud que los agrupa.
1. El mensaje llega al gateway HL7 v2 del Bus, que verifica que se pueda leer y trazar, lo guarda y responde`ACK`(D-026).
1. El Bus consulta al servicio terminológico para validar u homologar el código del procedimiento, y consulta al MPI para resolver la identidad del paciente.
1. El Bus transforma el mensaje a`MinsalServiceRequestImagen`según las reglas de[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md)y lo publica con actualización condicional (D-025).

sequenceDiagram participant Est as Establecimiento (v2) participant Bus as Bus de Interoperabilidad participant Term as Servicio Terminológico participant MPI as MPI participant RIS as RIS Est->>Bus: ORM^O01 (un mensaje por examen) Bus->>Bus: guarda el mensaje Bus-->>Est: ACK Bus->>Term: valida código de procedimiento Term-->>Bus: código homologado Bus->>MPI: resuelve identidad MPI-->>Bus: identidad confirmada Bus->>Bus: transforma a MinsalServiceRequestImagen Bus->>RIS: solicitud disponible

### Restricciones que debe verificar el Bus

El Bus verifica las siguientes reglas antes de transformar una solicitud, en ambos canales:

| | | |
| :--- | :--- | :--- |
| R1 | Paciente con RUN válido (formato y dígito verificador) o pasaporte, resuelto en el MPI | Rechazo (`NACK`/`OperationOutcome`) |
| R2 | Profesional solicitante identificado con RUN (`ORC-12`o`ServiceRequest.requester`) | Rechazo |
| R3 | Establecimiento identificado con código DEIS | Rechazo |
| R4 | Código del examen homologable a una prestación del arancel FONASA, verificado con el servicio terminológico | Rechazo |
| R5 | Código del examen existente en el catálogo del RIS (regla de la interfaz ORM-In: el RIS no puede crear la orden sin él) | Rechazo |

"Rechazo" significa que el examen **no se publica** en el modelo canónico: el acuse ya se envió al guardar el mensaje (D-026), el motivo queda en la conciliación auditada y el flujo clínico HIS → RIS nunca se interrumpe. En el canal FHIR directo, la respuesta de la transacción informa el motivo.

Estas reglas se aplican a la **solicitud**. Un **informe** que no cumple una regla tampoco se rechaza, porque el RIS no reintenta: queda en conciliación auditada hasta resolverse (D-005, D-026).

### Operaciones

La solicitud se envía como `Bundle` de tipo `transaction` (`MinsalBundleSolicitudImagenologia`), con un `ServiceRequest` por examen, todos con el mismo `requisition`:

```
POST [URL_Base]/

```

Cada examen es una actualización condicional por su identificador (D-025):

```
PUT [URL_Base]/ServiceRequest?identifier=http://deis.minsal.cl/establecimientos/[DEIS]/imagenologia/orden-solicitante|[numero_examen]

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
1. El Bus verifica que el mensaje se pueda leer y trazar, lo guarda de forma durable y responde`ACK`(D-026). Desde aquí el emisor ya no interviene.
1. El Bus resuelve el paciente contra el MPI, homologa el código con el servicio terminológico y busca la solicitud original a partir de`ORC-2`/`ORC-3`u`OBR-2`/`OBR-3`.
1. El Bus transforma el mensaje a`InformeRadiologicoMinsal`, enlaza`basedOn`cuando encontró la solicitud y`imagingStudy`cuando existe el estudio, valida contra esta guía y publica el`Bundle`en el repositorio FHIR con actualización condicional por Accession Number (D-025).
1. Si algo falla en los pasos 4 o 5 (paciente no resuelto, código sin homologación, fecha del examen ausente, radiólogo o fecha de firma ausentes, informe no conforme), el informe queda en**conciliación auditada**: no se publica, no se pierde y se reprocesa al resolverse (D-005).
1. El Portal Ciudadano y otros consumidores autorizados consultan el informe en el repositorio FHIR, no en el Bus.

sequenceDiagram participant RIS as RIS participant Bus as Bus de Interoperabilidad participant Repo as Repositorio FHIR participant Portal as Portal Ciudadano RIS->>Bus: ORU^R01 (PDF Base64 en OBX-5) Bus->>Bus: guarda el mensaje crudo Bus-->>RIS: ACK (AA) Bus->>Bus: resuelve paciente y busca ServiceRequest Bus->>Bus: transforma a InformeRadiologicoMinsal Bus->>Repo: Bundle (transaction) con PUT condicional Repo-->>Bus: transaction-response Note over Bus: si algo falla, el informe queda en conciliación Portal->>Repo: GET DiagnosticReport Repo-->>Portal: informe + PDF

### Ciclo de vida del informe

Un mismo estudio puede generar varios mensajes `ORU^R01` sucesivos: primero preliminar, luego final, y eventualmente una corrección o una eliminación.

stateDiagram-v2 [*] --> preliminary: ORU con OBX-11 = P preliminary --> final: ORU con OBX-11 = F final --> corrected: ORU con OBX-11 = C final --> amended: ORU con OBX-11 = A final --> entered_in_error: ORU con OBX-11 = D corrected --> entered_in_error: ORU con OBX-11 = D

Regla de actualización: el Bus **no crea un recurso nuevo** por cada estado. Cada mensaje se publica como actualización condicional por Accession Number (`PUT DiagnosticReport?identifier=...`): el servidor crea el informe si no existe y lo actualiza si existe, conservando el historial de versiones del recurso (D-025). Si el informe no trae Accession Number, la clave es el número de orden del ejecutante (`ORC-3`/`OBR-3`); sin ninguna de las dos, va a conciliación.

| | | |
| :--- | :--- | :--- |
| `P` | — | Se crea en`preliminary` |
| `F` | `preliminary`o ninguno | Queda en`final` |
| `C` | `final`,`corrected`o`amended` | Queda en`corrected`; el PDF nuevo**reemplaza**al anterior en`presentedForm` |
| `A` | `final`,`corrected`o`amended` | Queda en`amended`; el PDF del addendum**se agrega**a`presentedForm`y se conserva el original |
| `C`o`A` | ninguno | Se crea con ese estado y se marca para revisión |
| `D` | cualquiera | Queda en`entered-in-error`; no se borra |
| `D` | ninguno | Va a conciliación |
| `P` | `final`,`corrected`o`amended` | **No se aplica**: un informe firmado no vuelve a preliminar |

El orden entre versiones se decide por `OBR-22` (fecha de firma) y, en empate, por `MSH-7`. El procesamiento usa el Accession Number como clave de partición, para que las versiones de un mismo informe se apliquen en el orden en que llegaron.

### Operaciones

El informe se publica dentro de un `Bundle` de tipo `transaction` enviado con `POST [URL_Base]/`, con la entrada del informe como actualización condicional:

```
PUT [URL_Base]/DiagnosticReport?identifier=http://deis.minsal.cl/establecimientos/[DEIS]/imagenologia/accession-number|[accession_number]

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

## Caso de uso 3: Acceso a imágenes sin informe radiológico

El paciente consulta desde el Portal Ciudadano las imágenes de un estudio cuyo informe todavía no fue emitido. Las imágenes permanecen en el PACS/VNA del proveedor y se presentan con su visor.

Recursos: `EstudioImagenologicoMinsal` (disponibilidad), `EndpointAccesoImagenesMinsal` (mecanismo de acceso) y `MinsalBundleEstudioImagenologia` (evento de disponibilidad). El informe sigue el caso de uso 2, con un ciclo de vida independiente.

1. El PACS, el RIS o un adaptador del proveedor detecta que el estudio tiene instancias almacenadas y envía al Bus el evento de disponibilidad, con actualización condicional del`ImagingStudy`.
1. El Bus resuelve el paciente contra el MPI y publica el estudio con`status = available`y la referencia al mecanismo de acceso.
1. El portal muestra el estudio con la opción de ver imágenes, la leyenda "informe pendiente" y el aviso normado de la política de publicación (D-023), salvo que la prestación esté en la lista de retención.
1. Al pulsar "Ver imágenes", el servicio nacional de autorización verifica identidad, pertenencia y política, y abre el visor del proveedor (IHE IID, API del proveedor o portal del proveedor).
1. Cuando llega el`ORU^R01`(UC2), el informe referencia el estudio existente sin modificarlo.

Los seis escenarios (imágenes sin informe, con informe, sin imágenes, temporalmente no disponibles, paciente no resuelto y acceso denegado), la arquitectura y los flujos alternativos se detallan en [Acceso a imágenes sin informe](acceso-imagenes.md). Las modalidades de integración, el contrato, la seguridad y la conformidad, en [Integración de proveedores de imágenes](acceso-imagenes-proveedores.md).

### Operaciones

Evento de disponibilidad (actualización condicional dentro de una transacción):

```
POST [URL_Base]/

```

Estudios de un paciente con su mecanismo de acceso, consultados por el portal desde su servidor:

```
GET [URL_Base]/ImagingStudy?subject=Patient/[id]&_include=ImagingStudy:endpoint

```

Estudio por Study Instance UID:

```
GET [URL_Base]/ImagingStudy?identifier=urn:dicom:uid|[Study Instance UID]

```

## Fuera de alcance: sincronización de pacientes (ADT)

La sincronización demográfica entre el HIS y el RIS mediante eventos `ADT` no es un caso de uso de esta guía. La identidad del paciente la gestiona el servicio común de identidad (MPI / NID), que especifica los eventos `ADT`, la fusión de registros (`A40`) y el cambio de identificador (`A47`). Esta guía solo consume la identidad resuelta: una regla de fusión distinta por dominio clínico produciría tres identidades distintas del mismo paciente.

## Fase 2 (a futuro)

Los siguientes flujos no forman parte del alcance de esta versión y se documentan porque condicionan decisiones de perfilamiento:

* **Recuperación DICOMweb desde sistemas nacionales.** El acceso del paciente a las imágenes ya no depende de esta fase: se resuelve en el caso de uso 3 con el visor del proveedor, sin trasladar imágenes. La recuperación DICOMweb (WADO-RS) por sistemas nacionales o profesionales sigue como trabajo futuro; un endpoint DICOMweb no es un visor ni autentica pacientes.
* **Recitación de pacientes.** La presentación de radiología lo señala como el punto crítico pendiente: poco frecuente en TC y RM, pero muy común en mamografía. Debe modelarse cómo se representa un nuevo examen derivado de un hallazgo previo (`ServiceRequest.basedOn` o `reasonReference` hacia el informe anterior).
* **Hallazgos estructurados.** Representar la categoría BI-RADS y otros hallazgos como recursos `Observation` referenciados desde `DiagnosticReport.result`, en lugar de dejarlos únicamente dentro del PDF.
* **Integración completa de mamografía con ficha de paciente**, señalada en la presentación como el siguiente paso de la modalidad MG.
* **Cuestionario clínico de mamografía.** Viaja hoy en los segmentos `OBX` de la solicitud y se recibe sin rechazar el mensaje, pero no se transforma en recursos del modelo canónico. Vuelve cuando exista una definición del formulario acordada con el programa clínico y no con un RIS.

