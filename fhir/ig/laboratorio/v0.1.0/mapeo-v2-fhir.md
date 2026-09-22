# Mapeo HL7 v2 a FHIR - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* **Mapeo HL7 v2 a FHIR**

## Mapeo HL7 v2 a FHIR

# Mapeo HL7 v2 a FHIR R4

## Alcance

Esta sección define la transformación estructural de mensajes HL7 v2 a recursos FHIR R4. La transformación de estructura es independiente de la validación o traducción de códigos realizada por el servicio terminológico.

## Mapeo de solicitud: OML^O21 (mensaje objetivo) y ORM^O01 (legacy)

La columna **¿Transformado?** indica representación en FHIR, no traducción terminológica.

`OML^O21` es el mensaje objetivo de esta guía para la solicitud de laboratorio. HL7 introdujo `OML^O21` específicamente para órdenes de laboratorio: además de los segmentos `MSH`, `PID`, `PV1`, `ORC` y `OBR` que comparte con `ORM^O01`, `OML^O21` incorpora el grupo `SPM`/`SAC` para representar el espécimen y su contenedor de forma estructurada, algo que `ORM^O01` no contempla en el estándar base (por ser un mensaje de orden genérico, no especializado en laboratorio). Esta especialización permite mapear la muestra a `MinsalEspecimenLaboratorio` sin depender de extensiones o campos fuera de propósito.

`ORM^O01` se admite como mensaje legacy, para los establecimientos cuyo HIS todavía no emite `OML^O21`: sus segmentos `MSH`, `PID`, `PV1`, `ORC` y `OBR` se transforman con las mismas reglas de la tabla siguiente. Si el establecimiento emisor solo dispone de `ORM^O01` y necesita informar la muestra, debe hacerlo mediante un `Bundle` FHIR nativo que incluya `MinsalEspecimenLaboratorio` junto al `MinsalServiceRequestLab` (ver [Casos de uso](casos-de-uso.md)), ya que el segmento `SPM` no forma parte de `ORM^O01` en el estándar. Se recomienda a los establecimientos nuevos implementar directamente `OML^O21`; `ORM^O01` no debe usarse en integraciones nuevas de laboratorio.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `MSH-3` | `RCE` | Sí | `MessageHeader.source.name` | MessageHeader | Informar también`source.endpoint` |
| `MSH-4` | `HOSPITAL_001` | Sí | `MessageHeader.sender` | Organization | Organización emisora |
| `MSH-5` | `LIS` | Sí | `MessageHeader.destination.name` | MessageHeader | Aplicación receptora |
| `MSH-6` | `LABORATORIO` | Parcial | `MessageHeader.destination.receiver` | Organization | Resolver la organización receptora |
| `MSH-7` | `20260824153000` | Sí | `Bundle.timestamp` | Bundle | Aplicar política horaria si no existe offset |
| `MSH-9` | `OML^O21` | Sí | `MessageHeader.eventCoding` | MessageHeader | Sistema v2-0003, código`O21`. Si el emisor solo dispone de`ORM^O01`(legacy), el código es`O01` |
| `MSH-10` | `MSG000001` | Sí | `Bundle.identifier` | Bundle | No usar como`MessageHeader.id` |
| `PID-3` | `12345678-9^^^HOSPITAL_001^PI` | Sí | `PacienteLaboratorio.identifier` | PacienteLaboratorio | Conservar valor, tipo y autoridad |
| `PID-5` | `PEREZ^JUAN^CARLOS` | Sí | `PacienteLaboratorio.name` | PacienteLaboratorio | Separar apellido y nombres |
| `PID-7` | `19800115` | Sí | `PacienteLaboratorio.birthDate` | PacienteLaboratorio | Convertir a fecha FHIR |
| `PID-8` | `M` | Sí | `PacienteLaboratorio.gender` | PacienteLaboratorio | Aplicar ConceptMap, por ejemplo`M → male` |
| `PID-11` | dirección | Sí | `PacienteLaboratorio.address` | PacienteLaboratorio | Normalizar país según acuerdo |
| `PID-13` | `+56912345678` | Sí | `PacienteLaboratorio.telecom` | PacienteLaboratorio | `system=phone` |
| `PV1-2` | `O` | Sí | `Encounter.class` | Encounter | Aplicar ConceptMap, habitualmente`O → AMB` |
| `PV1-3` | `AMBULATORIO^BOX01^HOSPITAL_001` | Sí | `Encounter.location.location` | Encounter, Location | Crear o resolver`Location` |
| `PV1-7` | médico tratante | Sí | `Encounter.participant.individual` | Encounter, Practitioner | Tipo de participación acordado |
| `ORC-1` | `NW` | Sí | `ServiceRequest.status`,`intent` | MinsalServiceRequestLab | Para nueva orden:`active`,`order` |
| `ORC-2` | `SOL123456` | Sí | `ServiceRequest.identifier` | MinsalServiceRequestLab | Tipo`PLAC` |
| `ORC-3` | `LAB123456` | Sí | `ServiceRequest.identifier` | MinsalServiceRequestLab | Tipo`FILL`si está asignado |
| `ORC-4` | `SOL-MULTIPLE-001` | Sí | `ServiceRequest.requisition` | MinsalServiceRequestLab | Placer Group Number: identificador de la orden agrupadora cuando la solicitud contiene más de una prestación. No confundir con`OBR-4`, que identifica el examen, no el grupo (ver regla más abajo) |
| `ORC-7` | temporización | Parcial | `ServiceRequest.occurrence[x]` | MinsalServiceRequestLab | Solo componentes válidos |
| `ORC-8` | `^^^20260824153000` | No | — | — | Es orden padre; el valor está desplazado y no es una fecha de ejecución |
| `ORC-9` | fecha de transacción | Sí | `ServiceRequest.authoredOn` | MinsalServiceRequestLab | Fuente preferida para autoría |
| `ORC-11` | proveedor | No como requester | — | Practitioner | En v2.3 es Verified By |
| `ORC-12` | solicitante | Sí | `ServiceRequest.requester` | Practitioner | Usar si está poblado correctamente |
| `OBR-2`/`OBR-3` | `SOL123456`/`LAB123456` | Sí | `ServiceRequest.identifier` | MinsalServiceRequestLab | Validar contra ORC-2/ORC-3 |
| `OBR-4` | `HEM001^HEMOGRAMA COMPLETO^L` | Sí | `ServiceRequest.code` | MinsalServiceRequestLab | Conservar código y sistema; no añadir LOINC automáticamente |
| `OBR-6` | fecha solicitada | Parcial | `ServiceRequest.occurrenceDateTime` | MinsalServiceRequestLab | Según acuerdo de interfaz |
| `OBR-7` | `20260824153000` | Parcial | `ServiceRequest.occurrence[x]`o`Specimen.collection.collected[x]` | ServiceRequest, Specimen | No corresponde a`authoredOn` |
| `OBR-16` | solicitante | Sí | `ServiceRequest.requester` | Practitioner | Puede ser la fuente autoritativa |

### Reglas de consistencia de la solicitud

* `ORC-2/OBR-2` y `ORC-3/OBR-3` deben coincidir.
* `ORC-8` no se convierte a `occurrenceDateTime`; representa la orden padre.
* `authoredOn` se obtiene preferentemente de `ORC-9`, no de `OBR-7`.
* `requester` proviene de `ORC-12` u `OBR-16`, según el acuerdo.
* En `OBR-4`, el emisor identifica LOINC, FONASA o sistema local; el terminológico valida o traduce.
* `ORC-4` (Placer Group Number) se transforma a `ServiceRequest.requisition`, con `system` = URI del establecimiento (código DEIS, ver [Inicio](index.md#solicitud-con-múltiples-prestaciones)) y `value` = el valor recibido en el campo, sin modificar. `requisition` es must-support en `MinsalServiceRequestLab`; todas las prestaciones de una misma orden deben compartir el mismo par `system`+`value`.

### Mapeo del espécimen: SPM / SAC → MinsalEspecimenLaboratorio

Cuando el mensaje es `OML^O21` y el emisor ya conoce los datos de la muestra al momento de generar la solicitud, el grupo `SPM`/`SAC` se transforma en una instancia de `MinsalEspecimenLaboratorio`, referenciada desde `ServiceRequest.specimen`. Si la orden agrupa varias prestaciones sobre la misma muestra, todas comparten la referencia al mismo `MinsalEspecimenLaboratorio`.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `SPM-2` | Identificador del espécimen (placer/filler) | Sí | `Specimen.identifier` | Conservar valor y autoridad asignadora |
| `SPM-4` | Tipo de espécimen | Sí | `Specimen.type` | Transformar CE/CWE a`CodeableConcept`; no homologar automáticamente a SNOMED CT |
| `SPM-8` | Sitio anatómico de origen | Parcial | `Specimen.collection.bodySite` | Según acuerdo de interfaz; puede venir como texto libre |
| `SPM-17` | Fecha/hora de toma de la muestra | Sí | `Specimen.collection.collected[x]` | Convertir a`dateTime`o`Period`según granularidad |
| `SPM-24` | Condición o rechazo del espécimen | Parcial | `Specimen.status`/`Specimen.note` | Aplicar ConceptMap si el código es reconocido; de lo contrario conservar como texto |
| `SAC-3` | Identificador del contenedor | Sí | `Specimen.container.identifier` | Conservar valor y autoridad asignadora |
| `SAC-17` | Tipo de contenedor | Sí | `Specimen.container.type` | Transformar CE/CWE a`CodeableConcept` |
| `SAC-23`/`SAC-24` | Cantidad y unidad del contenedor | Parcial | `Specimen.container.specimenQuantity` | Preferir UCUM cuando la unidad venga identificada |

`Specimen.request` se completa con la referencia al `MinsalServiceRequestLab` correspondiente, y `Specimen.subject` con `PacienteLaboratorio`, igual que en el `Bundle` FHIR nativo. Si `ORM^O01` (legacy) no trae `SPM`/`SAC`, la muestra no se representa en ese envío; queda pendiente para un mensaje posterior o para el flujo de resultado, si el laboratorio la informa recién en `ORU^R01`.

## Flujo de resultados

flowchart TD MSG["ORU^R01"] --> MSH[MSH] --> BUN["Bundle / MessageHeader"] MSG --> PID[PID] --> PAC["PacienteLaboratorio (Patient)"] MSG --> PV1[PV1] --> ENC[Encounter] MSG --> ORC["ORC / OBR"] --> DR["ResultadoDiagnosticoLaboratorio (DiagnosticReport)"] DR --> OBX1["OBX de resultados"] --> OBS["Observation[]"] DR --> OBX2["OBX con PDF"] --> PF["DiagnosticReport.presentedForm"]

`DiagnosticReport.basedOn` debe apuntar al `ServiceRequest` original. La referencia se resuelve usando los identificadores de orden enviados en `ORC-2`, `ORC-3`, `OBR-2` u `OBR-3`, según el acuerdo de integración.

## Mapeo principal

| | | | |
| :--- | :--- | :--- | :--- |
| `MSH-10` | Identificador del mensaje | `Bundle.identifier` | Conservar para trazabilidad del intercambio |
| `MSH-7` | Fecha del mensaje | `Bundle.timestamp` | Convertir a`instant`incluyendo zona horaria cuando esté disponible |
| `PID-3` | Identificador del paciente | `PacienteLaboratorio.identifier` | Conservar valor, tipo y autoridad asignadora |
| `PID-5` | Nombre del paciente | `PacienteLaboratorio.name` | Separar apellidos y nombres según los componentes v2 |
| `PID-7` | Fecha de nacimiento | `PacienteLaboratorio.birthDate` | Convertir a fecha FHIR |
| `PID-8` | Sexo administrativo | `PacienteLaboratorio.gender` | Aplicar tabla de equivalencias acordada |
| `PV1-2` | Clase de atención | `Encounter.class` | Aplicar tabla de equivalencias v2 a FHIR |
| `PV1-19` | Identificador de atención | `Encounter.identifier` | Conservar sistema y valor |
| `ORC-2`/`OBR-2` | Número de orden del solicitante | `DiagnosticReport.identifier`y resolución de`basedOn` | Buscar el`ServiceRequest.identifier`correspondiente |
| `ORC-3`/`OBR-3` | Número asignado por el laboratorio | `DiagnosticReport.identifier` | Conservar como identificador del ejecutor |
| `OBR-4` | Examen o panel informado | `DiagnosticReport.code` | Transformar CE/CWE a`CodeableConcept` |
| `OBR-7` | Fecha de la observación | `DiagnosticReport.effectiveDateTime` | Usar periodo si también existe fecha de término |
| `OBR-22` | Fecha de emisión/cambio | `DiagnosticReport.issued` | Convertir a`instant` |
| `OBR-25` | Estado del resultado | `DiagnosticReport.status` | Aplicar ConceptMap de estados |
| `OBX-3` | Código de observación | `Observation.code` | Transformar CE/CWE a`CodeableConcept` |
| `OBX-5` | Valor del resultado | `Observation.value[x]` | El tipo depende de`OBX-2` |
| `OBX-6` | Unidad | `Observation.valueQuantity.unit/code/system` | Preferir UCUM cuando venga identificado |
| `OBX-7` | Rango de referencia | `Observation.referenceRange` | Conservar texto si no puede estructurarse |
| `OBX-8` | Interpretación | `Observation.interpretation` | Aplicar tabla de equivalencias |
| `OBX-11` | Estado del resultado | `Observation.status` | Por ejemplo,`F`se transforma a`final` |

## PDF encapsulado

Si `OBX-5` contiene un PDF Base64, se transforma a `DiagnosticReport.presentedForm.data`, con `presentedForm.contentType` igual a `application/pdf`. El receptor debe validar el Base64 y la firma del archivo.

El tipo recomendado en HL7 v2 es `OBX-2 = ED`. Si una integración existente utiliza `FT`, la excepción debe documentarse en el acuerdo de interfaz y solo debe tratarse como PDF cuando las validaciones de contenido sean satisfactorias.

## Identificación del sistema terminológico

El emisor debe enviar el código del examen en `OBR-4` y el código de cada resultado en `OBX-3`, indicando el sistema en el componente correspondiente del dato CE/CWE.

Ejemplos:

```
OBR|1|||58410-2^CBC panel - Blood by Automated count^LN
OBR|1|||CODIGO_FONASA^Descripción de la prestación^FONASA

```

Las reglas son:

* `LN` se transforma a `Coding.system = http://loinc.org`.
* `FONASA` se transforma al URI canónico acordado para ese catálogo en el servicio terminológico.
* El código recibido se conserva en `Coding.code` y su descripción en `Coding.display`.
* `CodeableConcept.text` es solo una descripción legible; no identifica el sistema de códigos.
* La traducción entre FONASA y LOINC, si corresponde, la realiza el servicio terminológico. No se infiere durante el mapeo estructural.
* Si el sistema no viene identificado, el mensaje no debe homologarse automáticamente; debe rechazarse o quedar pendiente según la política de integración.

Cuando el terminológico entregue una traducción validada, el código original debe conservarse y la codificación traducida puede agregarse como un segundo `Coding`, manteniendo trazabilidad del proceso.

## Resultado atomizado por prestación (Caso de uso 3)

Esta sección está en el alcance de la versión actual de la guía, con prioridad de entrega secundaria respecto al informe PDF (Caso de uso 2, ver [Casos de uso](casos-de-uso.md)).

El mensaje de origen sigue siendo `ORU^R01`, pero en lugar de un único `OBX` con el PDF en Base64, cada resultado individual llega en su propio segmento `OBX` y se transforma en un recurso `Observation` independiente (perfil `MinsalObservacionLaboratorio`), referenciado desde `DiagnosticReport.result`. El mapeo de `OBX-3`, `OBX-5`, `OBX-6`, `OBX-7`, `OBX-8` y `OBX-11` de la tabla de la sección [Mapeo principal](#mapeo-principal) aplica sin cambios a cada `OBX` individual. Cuando el informe también trae la muestra, `Observation.specimen` referencia el mismo `MinsalEspecimenLaboratorio` que ya se describió para la solicitud.

Ambos recursos (`ResultadoDiagnosticoLaboratorio` y las `Observation` atomizadas) se empaquetan en un único `Bundle` transaccional, perfil `MinsalBundleResultadoLaboratorio` (ver ejemplo `BundleResultadoMultipleEjemplo`), simétrico al de la solicitud.

Queda pendiente de diseño, para una fase posterior, y que no corresponde resolver únicamente con el mapeo estructural:

* La convivencia entre el resultado atomizado y el PDF firmado del mismo informe, para evitar que ambas representaciones difieran entre sí.
* El filtrado de resultados por área del laboratorio (`category:studyType`/`category:specialty`).

