# Mapeo HL7 v2 a FHIR - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* **Mapeo HL7 v2 a FHIR**

## Mapeo HL7 v2 a FHIR

# Mapeo HL7 v2 a FHIR R4

## Alcance

Esta página define la transformación estructural de los mensajes `ORM^O01` (solicitud) y `ORU^R01` (informe) a recursos FHIR R4. La transformación de estructura es independiente de la validación o traducción de códigos que realiza el servicio terminológico.

Las tablas siguen las especificaciones funcionales de integración del RIS: **ORM Inbound v2.04** y **ORU Outbound v1.3**. La sincronización demográfica (`ADT`) no se especifica aquí: es responsabilidad del servicio común de identidad (MPI / NID), que debe resolverla de la misma forma para todos los dominios clínicos.

La columna **¿Transformado?** indica representación en FHIR, no traducción terminológica.

## Mapeo de la solicitud: ORM^O01

Una solicitud puede tener varios exámenes, pero **se envía un mensaje HL7 por examen**. Cada mensaje produce un `MinsalServiceRequestImagen`; el agrupamiento se conserva en `requisition`.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `MSH-3.1` | `RCE` | Sí | `MessageHeader.source.name` | MessageHeader | Aplicación origen; informar también`source.endpoint` |
| `MSH-7.1` | `20260901093000` | Sí | `Bundle.timestamp` | Bundle | Formato`aaaammddhhmmss`; aplicar política horaria si no viene offset |
| `MSH-9` | `ORM^O01` | Sí | `MessageHeader.eventCoding` | MessageHeader | Sistema v2-0003, código`O01` |
| `MSH-10.1` | `MSG000001` | Sí | `Bundle.identifier` | Bundle | Identificador único del mensaje; no usar como`MessageHeader.id` |
| `MSH-12.1` | `2.5` | No | — | — | Versión del estándar; se registra en la auditoría del Bus |
| `PID-3.1` | `12345678-9` | Sí | `PacienteImagenologia.identifier.value` | PacienteImagenologia | RUT del paciente. El Bus valida el dígito verificador: el RIS no lo hace |
| `PID-3.4` | `HIS` | Sí | `PacienteImagenologia.identifier.assigner`/`system` | PacienteImagenologia | Dominio asignador del identificador |
| `PID-5.1` | `Carmona Pérez` | Sí | `PacienteImagenologia.name.family` | PacienteImagenologia | Apellidos |
| `PID-5.2` | `María Ester` | Sí | `PacienteImagenologia.name.given` | PacienteImagenologia | Nombres |
| `PID-7.1` | `19820702` | Sí | `PacienteImagenologia.birthDate` | PacienteImagenologia | Convertir de`aaaammddhhmmss`a`date` |
| `PV1-2.1` | `O` | Sí | `Encounter.class` | Encounter | Aplicar ConceptMap; habitualmente`O → AMB` |
| `PV1-3.1` | `Maternidad` | Sí | `Encounter.location.location` | Encounter, Location | Servicio donde está admitido el paciente; crear o resolver`Location` |
| `PV1-3.2`/`PV1-3.3` | `12`/`A` | Sí | `Location.partOf`(habitación, cama) | Location | Solo si el acuerdo de integración exige el detalle de cama |
| `PV1-19` | `ADM-0099` | Sí | `Encounter.identifier` | Encounter | Número de admisión |
| `ORC-1` | `NW` | Sí | `ServiceRequest.status`,`intent` | MinsalServiceRequestImagen | `NW → active`+`order`;`CA → revoked`. Ver[ConceptMap](ConceptMap-EstadoSolicitudImagenV2AFhir.md) |
| `ORC-2.1` | `187183` | Sí | `ServiceRequest.identifier` | MinsalServiceRequestImagen | Identificador del examen dentro de la solicitud; tipo`PLAC` |
| `ORC-2.2` | `IMG` | Sí | `ServiceRequest.performer` | OrganizacionParticipanteImagenologia | Servicio ejecutante |
| `ORC-4.1` | `13421` | Sí | `ServiceRequest.requisition` | MinsalServiceRequestImagen | Número de solicitud que agrupa los exámenes |
| `ORC-4.2` | `IMG` | Parcial | `ServiceRequest.performer` | OrganizacionParticipanteImagenologia | Redundante con`ORC-2.2`; validar consistencia |
| `ORC-5` | `SC` | No | — | — | Estado SPS del RIS (`Ordered/Scheduled`); no tiene equivalente clínico en`ServiceRequest` |
| `ORC-7.6` | `R` | Sí | `ServiceRequest.priority` | MinsalServiceRequestImagen | `S → stat`,`A → urgent`,`R → routine`. Ver[ConceptMap](ConceptMap-PrioridadSolicitudImagenV2AFhir.md) |
| `ORC-9.1` | `20260901093000` | Sí | `ServiceRequest.authoredOn` | MinsalServiceRequestImagen | Fuente autoritativa de la fecha de autoría |
| `ORC-12.1` | `1736123-K` | Sí | `Practitioner.identifier` | MinsalPractitionerImagenologia | RUT del médico solicitante |
| `ORC-12.2`/`ORC-12.3` | `Salinas Riquelme`/`Juan Felipe` | Sí | `Practitioner.name.family`/`.given` | MinsalPractitionerImagenologia | — |
| `ORC-13.1`/`ORC-13.2` | `217231`/`Maternidad` | Sí | `Organization.identifier`/`.name` | OrganizacionParticipanteImagenologia | Servicio solicitante; se referencia desde`ServiceRequest.requester`cuando el solicitante es la unidad y no la persona |
| `ORC-25` | `NW^Solicitado` | Parcial | `ServiceRequest.status`+`note` | MinsalServiceRequestImagen | Descripción legible del estado.`P^Pagado`es un hito administrativo: no cambia el estado clínico |
| `OBR-2.1` | `187183` | Sí | `ServiceRequest.identifier` | MinsalServiceRequestImagen | Debe coincidir con`ORC-2.1` |
| `OBR-4.1` | `TC01` | Sí | `ServiceRequest.code.coding.code` | MinsalServiceRequestImagen | Código del procedimiento; conservar el sistema de origen |
| `OBR-4.2` | `TC CEREBRO` | Sí | `ServiceRequest.code.coding.display`y`code.text` | MinsalServiceRequestImagen | Descripción lógica de la prestación |
| `OBR-4.3` | `IMG` | Parcial | `ServiceRequest.performer` | OrganizacionParticipanteImagenologia | Tercera aparición del servicio ejecutante; validar consistencia |
| `OBR-13` | texto libre | Sí | `ServiceRequest.note` | MinsalServiceRequestImagen | Información clínica de la solicitud |
| `OBR-18.1` | `20260902000134` | Sí | `ImagingStudy.identifier`(tipo`ACSN`) | EstudioImagenologicoMinsal | **Accession Number**: eje de trazabilidad de todo el flujo |
| `OBR-19.1`/`OBR-20.1` | `20260902000134` | Parcial | — | — | Repiten el Accession Number; validar que coincidan con`OBR-18.1`y no duplicar el identificador |
| `OBR-27.1` | `20260902110000` | Sí | `ServiceRequest.occurrenceDateTime` | MinsalServiceRequestImagen | Fecha prevista de realización del examen |
| `OBR-27.6` | `R` | Sí | `ServiceRequest.priority` | MinsalServiceRequestImagen | Debe coincidir con`ORC-7.6` |
| `OBR-31.2` | `Cefalea persistente` | Sí | `ServiceRequest.reasonCode.text` | MinsalServiceRequestImagen | Motivo del estudio, opcional en ORM-In. Se conserva como texto: el catálogo de motivos de mamografía diagnóstica quedó fuera de alcance en 0.2.0 |
| `OBR-34.5` | `Sala TC 1` | Sí | `ServiceRequest.locationCode`y`ImagingStudy.modality` | MinsalServiceRequestImagen, EstudioImagenologicoMinsal | Sala (modalidad). La modalidad DICOM se deriva de este campo o del código del procedimiento |
| `OBR-36.1` | `20260902110000` | Parcial | `ServiceRequest.occurrenceDateTime` | MinsalServiceRequestImagen | Fecha y hora del procedimiento; usar`Period`si convive con`OBR-27.1` |
| `OBX-2` | `ED`/`RP`/`TX` | No | — | — | Ver "Segmentos OBX de la solicitud" más abajo |
| `OBX-3.1` | `SCANNED_REQUEST`/`STDAT5` | No | — | — | Adjuntos fuera del alcance de esta versión |
| `OBX-5` | `AGILITY^TEXT^PDF^Base64^DOCUMENTO` | No | — | — | Adjuntos fuera del alcance de esta versión |

### Reglas de consistencia de la solicitud

* `ORC-2.1` y `OBR-2.1` deben coincidir; lo mismo `ORC-2.2`, `ORC-4.2` y `OBR-4.3` para el servicio ejecutante.
* `OBR-18.1`, `OBR-19.1` y `OBR-20.1` transportan el mismo Accession Number: se registra **una sola vez** como identificador de tipo `ACSN`.
* `authoredOn` se obtiene de `ORC-9.1`, no de `OBR-27.1`, que es la fecha prevista de ejecución.
* El código de `OBR-4.1` debe existir en el catálogo del RIS; si no, la solicitud se rechaza y no se transforma.
* Además, el código debe homologarse a una prestación del arancel FONASA (decisión D-014). Sin homologación, la solicitud se rechaza. Ambas reglas se aplican: la del catálogo del RIS es de la interfaz; la de FONASA, del modelo canónico.
* `ORC-5` (`SC`) y `ORC-25` (`P^Pagado`) son estados operativos del RIS y del flujo administrativo: no alteran `ServiceRequest.status`.

### Segmentos OBX de la solicitud

El `OBX` de `ORM^O01` es polimórfico: su destino depende de `OBX-2` y `OBX-3.1`. **Ninguno de sus contenidos forma parte del modelo canónico de esta versión.**

| | | | |
| :--- | :--- | :--- | :--- |
| `ED`/`RP` | `SCANNED_REQUEST` | Orden médica escaneada en PDF o su ruta en disco | Fuera de alcance, sin incorporación prevista: no es un caso habitual del flujo, duplica en imagen la información que la solicitud ya transporta estructurada y agrega un segundo documento Base64. Si un establecimiento la requiere, se evaluará como anexo opcional |
| `TX` | `STDAT*` | Respuestas del formulario clínico de mamografía | Fuera de alcance. Es el formulario de un proveedor, con identificadores propios de Enterprise Imaging; su modelado corresponde a una definición acordada con el programa clínico, no a esta guía |
| `TX` | código interno del motivo | `01: Tumor palpable`, … | Se conserva como texto en`ServiceRequest.reasonCode.text` |
| `TX` | estado de paciente arribado | texto | Fuera de alcance |
| `TX` | información de embarazo | texto | Fuera de alcance; requiere definición de tratamiento de datos sensibles antes de modelarse |

Los segmentos `OBX` que el emisor envíe se reciben sin rechazar el mensaje: simplemente no se transforman en recursos del modelo canónico.

Ejemplo HL7 v2:

```
MSH|^~\&|RCE|HOSPITAL_001|RIS|IMG|20260901093000||ORM^O01|MSG000001|P|2.5
PID|1||12345678-9^^^HIS||CARMONA PEREZ^MARIA ESTER||19820702
PV1|1|O|Maternidad^12^A|||||||||||||||ADM-0099
ORC|NW|187183^IMG||13421^IMG|SC||^^^^^R|20260901093000|||1736123-K^SALINAS^JUAN|217231^Maternidad||||NW^Solicitado
OBR|1|187183^IMG||TC01^TC CEREBRO^IMG|||||||||Cefalea persistente|20260902000134|||||20260902110000^^^^^R
OBX|1|ED|SCANNED_REQUEST||AGILITY^TEXT^PDF^Base64^DOCUMENTO

```

## Mapeo del informe: ORU^R01

Cada mensaje `ORU^R01` corresponde a **un informe**. Si el informe cubre más de un examen, el mensaje lleva un par `ORC`/`OBR` por examen y **un único** `OBX` con el informe.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `MSH-3.1` | `ORU_OUT_EI` | Sí | `MessageHeader.source.name` | MessageHeader | Aplicación origen |
| `MSH-4.1` | `AGFA` | Sí | `MessageHeader.sender` | OrganizacionParticipanteImagenologia | Organización emisora |
| `MSH-6.1` | `CPV` | Parcial | `MessageHeader.destination.receiver` | OrganizacionParticipanteImagenologia | Resolver la organización receptora |
| `MSH-7.1` | `20260902154000` | Sí | `Bundle.timestamp` | Bundle | — |
| `MSH-9` | `ORU^R01^ORU_R01` | Sí | `MessageHeader.eventCoding` | MessageHeader | Sistema v2-0003, código`R01` |
| `MSH-10.1` | `82771` | Sí | `Bundle.identifier` | Bundle | Trazabilidad del intercambio |
| `MSH-11.1` | `P` | No | — | — | Ambiente productivo; se registra en la auditoría |
| `PID-3` | `16151212-K` | Sí | `PacienteImagenologia.identifier` | PacienteImagenologia | Identificador HIS; el HIS asegura su unicidad |
| `PID-5.1`/`PID-5.2` | `Carmona Pérez`/`María José` | Sí | `name.family`/`name.given` | PacienteImagenologia | — |
| `PID-7.1` | `19820702` | Sí | `birthDate` | PacienteImagenologia | Formato`yyyymmdd`en esta interfaz |
| `PID-8` | `M`/`F` | Sí | `gender` | PacienteImagenologia | `M → male`,`F → female`. Alinear con la terminología ACE de sexo registral |
| `PV1-2.1`,`PV1-18.1`,`PV1-19.1`,`PV1-44.1` | `O`,`A1`,`ADM-0099`,`20260902...` | Parcial | `Encounter.class`,`.identifier`,`.period.start` | Encounter | Solo vienen si el paciente tiene admisión en urgencia u hospitalización |
| `ORC-1` | `SC` | No | — | — | Control de la orden; en el informe indica actualización de estado |
| `ORC-2.1` | `134-1` | Sí | Resolución de`basedOn` | MinsalServiceRequestImagen | Se busca el`ServiceRequest.identifier`correspondiente |
| `ORC-3.1` | `134` | Sí | Resolución de`basedOn`por`requisition` | MinsalServiceRequestImagen | Número de solicitud; en la interfaz documentada corresponde al ID de agenda |
| `ORC-7.4` | `20260902110500` | Sí | `DiagnosticReport.effectivePeriod.start` | InformeRadiologicoMinsal | Fecha/hora de inicio del examen |
| `ORC-7.5` | `20260902112500` | Sí | `DiagnosticReport.effectivePeriod.end` | InformeRadiologicoMinsal | Fecha/hora de término del examen |
| `ORC-12.1`…`ORC-12.4` | `126151`,`Salinas`,`Juan Felipe`,`1736123-K` | Sí | `Practitioner.identifier`,`.name` | MinsalPractitionerImagenologia | Médico solicitante;`ORC-12.4`trae el RUT |
| `OBR-2.1`/`OBR-3.1` | `134-1`/`134` | Sí | Resolución de`basedOn` | MinsalServiceRequestImagen | Validar contra`ORC-2`/`ORC-3` |
| `OBR-4.1` | `TACCERE` | Sí | `DiagnosticReport.code.coding.code` | InformeRadiologicoMinsal | Código del examen informado |
| `OBR-4.2` | `TAC de Cerebro` | Sí | `DiagnosticReport.code.coding.display` | InformeRadiologicoMinsal | — |
| `OBR-18.1` | `20260902000134` | Sí | `DiagnosticReport.identifier`(tipo`ACSN`) e`imagingStudy` | InformeRadiologicoMinsal, EstudioImagenologicoMinsal | Enlaza el informe con el estudio |
| `OBR-22` | `20260902154000` | Sí | `DiagnosticReport.issued` | InformeRadiologicoMinsal | **Fecha de validación del informe**. Desde la versión 1.3 de la interfaz viaja aquí, no en`OBR-7.1` |
| `OBR-25` | `F` | Sí | `DiagnosticReport.status` | InformeRadiologicoMinsal | Ver[ConceptMap](ConceptMap-EstadoInformeRadiologicoV2AFhir.md) |
| `OBR-32.1` | `81273` | Sí | `Practitioner.identifier` | MinsalPractitionerImagenologia | Médico informante |
| `OBR-32.2`/`OBR-32.3` | `Riquelme`/`Alejandro Andrés` | Sí | `name.family`/`name.given` | MinsalPractitionerImagenologia | Se referencia desde`DiagnosticReport.resultsInterpreter` |
| `OBX-2.1` | `ED` | Sí | Determina el tratamiento de`OBX-5` | — | `ED`= dato encapsulado |
| `OBX-3.1` | `"CodExamen"&GDT` | Parcial | — | — | Identificador de versión del dato adjunto |
| `OBX-3.4` | `20260902000134` | Sí | Validación cruzada del Accession Number | — | Debe coincidir con`OBR-18.1` |
| `OBX-5` | PDF en Base64 | Sí | `DiagnosticReport.presentedForm.data` | InformeRadiologicoMinsal | `contentType`=`application/pdf` |
| `OBX-11` | `F` | Sí | `DiagnosticReport.status` | InformeRadiologicoMinsal | Debe ser consistente con`OBR-25` |
| `OBX-14` | `20260902141000` | Sí | `DiagnosticReport.presentedForm.creation` | InformeRadiologicoMinsal | **Fecha de creación**del informe, distinta de la de validación |

### Las dos fechas del informe

Es el punto donde con más frecuencia se equivoca la implementación, y la propia interfaz lo corrigió dos veces (versiones 1.1 y 1.3):

| | | | |
| :--- | :--- | :--- | :--- |
| Realización del examen | `ORC-7.4`/`ORC-7.5` | `effectivePeriod` | Cuándo se hizo el estudio al paciente |
| Creación del informe | `OBX-14` | `presentedForm.creation` | Cuándo el radiólogo redactó el informe |
| Validación del informe | `OBR-22` | `issued` | Cuándo el informe quedó firmado y disponible |

### Flujo de transformación del informe

flowchart TD MSG["ORU^R01"] --> MSH[MSH] --> BUN["Bundle / MessageHeader"] MSG --> PID[PID] --> PAC["PacienteImagenologia"] MSG --> PV1[PV1] --> ENC[Encounter] MSG --> ORCOBR["ORC / OBR"] --> DR["InformeRadiologicoMinsal"] ORCOBR --> ACSN["OBR-18 Accession"] --> IS["EstudioImagenologicoMinsal"] MSG --> OBX["OBX (ED)"] --> PF["presentedForm: PDF Base64"] IS --> DR PF --> DR

## Identificación del sistema terminológico

El emisor debe enviar el código del examen en `OBR-4` indicando el sistema en el tercer componente del dato CE/CWE. El tipo se distingue mediante `Coding.system`; no debe deducirse por la forma del código ni por su descripción.

| | | |
| :--- | :--- | :--- |
| Catálogo local del RIS | `IMG`o el acordado con el emisor | `https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia` |
| SNOMED CT | `SCT` | `http://snomed.info/sct` |
| LOINC | `LN` | `http://loinc.org` |
| FONASA | `FONASA` | `https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa`(provisional, compartido con la Guía de Laboratorio Clínico hasta que exista un canónico transversal) |

Las reglas son:

* El código recibido se conserva en `Coding.code` y su descripción en `Coding.display`.
* `CodeableConcept.text` es solo una descripción legible; no identifica el sistema de códigos.
* La traducción entre el catálogo local y SNOMED CT, LOINC o FONASA la realiza el servicio terminológico. No se infiere durante el mapeo estructural.
* Cuando el terminológico entregue una traducción validada, el código original debe conservarse y la codificación traducida se agrega como un segundo `Coding`.
* **La prestación FONASA es obligatoria** en la solicitud y en el informe (decisión D-014). La agrega o verifica el Bus en ambos canales, antes de validar contra esta guía: un emisor FHIR puede entregar solo el código local. SNOMED CT y LOINC, cuando existan, se derivan de FONASA y no del catálogo local.
* Los `Coding` se distinguen por `system`, no por su posición en el `CodeableConcept`.
* Si el sistema no viene identificado, el mensaje no debe homologarse automáticamente: se rechaza o queda pendiente según la política de integración.

## Derivación de la modalidad DICOM

`ImagingStudy.modality` es obligatorio en el recurso y **no viaja como modalidad en la mensajería HL7 v2**. El orden de precedencia es:

1. **Del objeto DICOM**, cuando el Bus consulta al PACS. Es la única fuente autoritativa.
1. **De `OBR-24`**,**a través de un `ConceptMap` explícito de la tabla HL7 v2-0074 a los códigos DICOM**.`OBR-24`es**Diagnostic Service Section ID**: que`CT`coincida en ambos sistemas es una coincidencia, no una equivalencia — en 0074 la resonancia es`NMR`y en DICOM es`MR`. Sin ese`ConceptMap`,`OBR-24`no se usa como modalidad. Es, en cambio, la fuente natural de`DiagnosticReport.category`.
1. **Del código de procedimiento, a través de un `ConceptMap` del catálogo local a DICOM CID 29 (**Acquisition Modality**)**que mantiene el servicio terminológico. Es la vía preferida cuando el objeto DICOM no está disponible, porque la correspondencia queda publicada y versionada en vez de inferirse durante la transformación.
1. **Del prefijo del código de procedimiento**(`TC*`→`CT`,`RM*`→`MR`,`MAMO*`→`MG`) o de la sala de`OBR-34.5`, sólo como respaldo y cuando el acuerdo de integración fije por escrito esa correspondencia. Los prefijos deben validarse contra el catálogo real del RIS, que puede incluir otras modalidades (ecografía, radiología convencional, densitometría).

Si ninguna fuente resuelve la modalidad, **el estudio no se crea y el informe se publica igual**: es preferible publicar sólo el informe a publicar un `ImagingStudy` con una modalidad inferida. La trazabilidad se sostiene con el Accession Number registrado en `InformeRadiologicoMinsal.identifier`. Es la decisión D-008 del registro de decisiones de diseño de esta guía.

## Perfiles de emisor y versiones del estándar

En producción hay más de un emisor, con tipos de mensaje, versiones del estándar y codificaciones distintas. El modelo canónico es **uno solo**: lo que varía es de dónde se obtiene cada dato.

### El perfil de emisor se declara, no se infiere

**`MSH-12` no es un discriminador confiable.** Se ha observado un emisor que declara `MSH-12 = 2.4` y puebla `ORC-25` y `ORC-30`, campos que no existen en la estructura de `ORC` de esa versión. Por eso el perfil de emisor —tipo de mensaje, versión, catálogos, charset y campos comprometidos— **se fija en el acuerdo de integración del establecimiento** y se verifica en la certificación, no se deduce del contenido del mensaje.

### Mensajes admitidos

| | | |
| :--- | :--- | :--- |
| Solicitud de examen | `ORM^O01`y**`OMG^O19`** | `MinsalServiceRequestImagen` |
| Informe radiológico | `ORU^R01` | `InformeRadiologicoMinsal` |

**`OMG^O19` se declara estructuralmente equivalente a `ORM^O01`** para todos los efectos de este mapeo: ambos producen `MinsalServiceRequestImagen` con las mismas reglas. La versión declarada en `MSH-12` no altera el modelo canónico resultante; sólo determina qué campos **pueden** estar presentes.

### Equivalencia de fuentes por versión

| | | | |
| :--- | :--- | :--- | :--- |
| Identificador del mensaje | `MSH-10` | `MSH-10` | Idéntica |
| Codificación de caracteres | no declarada | `MSH-18` | Ver**N2** |
| Identificador del paciente | `PID-3`completo con DV, tipo`PI` | `PID-3.1`+`PID-3.2`, tipo`RUT` | Ver**N1**. Es clave de búsqueda contra el MPI, no un dato del recurso |
| Identificador del examen | `ORC-2.1`/`OBR-2.1` | `ORC-2.1`/`OBR-2.1` | Idéntica |
| Número de solicitud agrupador | `ORC-4` | `ORC-4`; si no viene, el folio de`ORC-2.3` | Precedencia`ORC-4`→`ORC-2.3`→ ausente |
| Solicitante | `ORC-12` | `ORC-12` | **Obligatorio.**`ORC-10`es**Entered By**y`PV1-7`es**Attending Doctor**: ninguno es el solicitante |
| Prioridad | `ORC-7.6` | `ORC-7.6` | `ConceptMap`de prioridad. Un valor fuera de la tabla HL7 0485 no se mapea hasta que el emisor confirme su significado |
| Estado | `ORC-1`y`ORC-5` | `ORC-1` | Ver**N6** |
| Código del procedimiento | `OBR-4.1` | `OBR-4.1` | El catálogo se identifica en`OBR-4.3`. Ver**N4** |
| Accession Number | `OBR-18`/`OBR-19`/`OBR-20` | puede no venir | Se registra una sola vez, con tipo`ACSN`. Su envío es obligación del acuerdo de integración y se verifica en la certificación (decisión D-007) |
| Fecha del procedimiento | `OBR-27` | `OBR-36` | Cualquiera de las dos alimenta`occurrenceDateTime` |

> Los atributos demográficos del `PID` —sexo, estado civil, religión, domicilio, teléfonos, correo— **no se transforman**: el recurso `Patient` se reconstruye desde el MPI, que es la fuente autoritativa de identidad: el `PID` se usa exclusivamente como clave de resolución (decisión D-001).

## Reglas de normalización

Las aplica el Bus antes de construir los recursos.

| | | |
| :--- | :--- | :--- |
| **N1** | **RUT.**Si`PID-3.2`contiene un solo carácter alfanumérico y el tipo declarado es de RUN, la clave de búsqueda es`PID-3.1 + "-" + PID-3.2`. Si`PID-3.1`ya trae guión, se usa tal cual. En ambos casos**se valida el dígito verificador antes de consultar al MPI** | Los emisores usan convenciones distintas y ninguno valida el DV |
| **N2** | **Codificación.**Si`MSH-18`está vacío, se aplica el charset del acuerdo de integración y se registra advertencia.**No se intenta corrección automática de mojibake**sin acuerdo explícito | Un emisor no declara charset y entrega texto corrupto |
| **N3** | **Autorreferencia.**Si`ORC-10.1`u`ORC-11.1`coincide con el identificador de`PID-3`, ese campo se descarta y no se crea`Practitioner` | Se ha observado al propio paciente en`ORC-11` |
| **N4** | **Catálogo del código.**Si`OBR-4.3`no identifica un catálogo conocido, se aplica el`system`acordado por escrito con el emisor.**Sin acuerdo registrado, el mensaje se rechaza** | El`system`no se infiere de la forma del código |
| **N5** | **Modalidad.**Precedencia del apartado anterior: objeto DICOM →`OBR-24`vía`ConceptMap`→ código de procedimiento vía`ConceptMap`a DICOM CID 29 → prefijo o sala con acuerdo escrito | `OBR-24`no es el campo de modalidad DICOM |
| **N6** | **Estado.**`ORC-5`gobierna sobre`ORC-1`cuando ambos están presentes y son contradictorios | Se han observado mensajes con`ORC-1 = NW`y`ORC-5`de orden ya cumplida |
| **N7** | **Notas.**`OBR-13`alimenta`note[0]`; los`NTE-3`siguen en orden de aparición | El segmento`NTE`no estaba mapeado |
| **N8** | **Campos retirados.**`PID-2`se ignora en v2.5 y superiores | Ambos emisores lo pueblan duplicando`PID-3` |

## Requisitos por emisor

Lista de conformidad que acompaña al acuerdo de integración. Se verifica en la certificación del establecimiento, antes de habilitar producción.

**Todo emisor**

* Poblar `ORC-12` con el profesional solicitante. Es **Requerido** en ORM-In v2.04 y es la única fuente de `ServiceRequest.requester`, que el modelo canónico exige.
* Declarar el catálogo del código de examen en `OBR-4.3`.
* Declarar la codificación de caracteres en `MSH-18`.
* Usar valores de la tabla HL7 0485 en `ORC-7.6`.
* Incluir offset horario en los timestamps.
* Dejar de poblar `PID-2` en v2.5 y superiores.

**Emisor FHIR nativo**

Un establecimiento que entrega la solicitud directamente en FHIR (Caso de uso 1, UC1-a) cumple los mismos requisitos sobre los elementos equivalentes:

| | |
| :--- | :--- |
| `MSH-10`identificador del mensaje | `Bundle.identifier`, con el`system`del emisor |
| `MSH-7`fecha del evento, con offset horario | `Bundle.timestamp` |
| `PID`del paciente | Recurso`Patient`completo en`entry[paciente]`, conforme al perfil de NID (D-012) |
| `ORC-2.1`identificador del examen | `ServiceRequest.identifier`, tipo`PLAC` |
| `ORC-4.1`número de solicitud agrupador | `ServiceRequest.requisition`, con`system`y`value` |
| `ORC-9.1`fecha de la solicitud | `ServiceRequest.authoredOn` |
| `ORC-12`profesional solicitante | `ServiceRequest.requester` |
| `OBR-4`con catálogo en`OBR-4.3` | `ServiceRequest.code.coding`con`system`; la prestación FONASA la agrega o verifica el Bus (D-014) |

El ejemplo [BundleSolicitudImagenFhirDirectoEjemplo](Bundle-BundleSolicitudImagenFhirDirectoEjemplo.md) muestra un envío completo.

**Emisor que hoy no puebla el solicitante**

* `ORC-12` con RUT, dígito verificador y nombre. `ORC-10` (**Entered By**) y `PV1-7` (**Attending Doctor**) no lo sustituyen.
* `ORC-4.1` con el número de solicitud agrupador.
* Acordar con MINSAL el transporte de la encuesta de medio de contraste: `ORC-16` no es su lugar, y su contenido es dato de salud.

**Emisor que hoy no declara charset**

* `MSH-18 = UNICODE UTF-8`. Corrige el texto corrupto en la glosa del procedimiento.
* Alinear `ORC-1` con `ORC-5`, o documentar cuál gobierna.
* Corregir `ORC-11`, que hoy transporta al paciente en lugar de quien verificó la orden.
* Hora real en `MSH-7`, no medianoche exacta.

