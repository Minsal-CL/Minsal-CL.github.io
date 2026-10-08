# Documento por documento - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Documento por documento**

## Documento por documento

Para cada documento se indica su perfil, un ejemplo y **dónde queda cada campo de la API v1.5**. Hay campos comunes que se resuelven siempre igual, así que se describen una sola vez.

### Campos comunes a todos los documentos

| | |
| :--- | :--- |
| deisOrigen | `MessageHeader.sender`→`Organization.identifier[deis]`(DEIS de 6 dígitos,`http://deis.minsal.cl/establecimientos`) y, en transición,`identifier[deisSigges]`(`NN-NNN`) |
| tipoDeisOrigen | `MessageHeader.sender`→`Organization.type[tipoOrigen]`(`publico`/`privado`) |
| nombreSistemaOrigen | `MessageHeader.source.name` |
| folioDocumentoHospital | foco`.identifier[folio]` |
| runPaciente, dvPaciente | `Patient.identifier[run].value`(`12345678-5`), con el tipo RUN de NID (`CSTipoIdentificador#1`) |
| nombres / primer y segundo apellido del paciente | `Patient.name[NombreOficial]`(`given`,`family`, extensión`segundoApellido`) |
| problemaSalud, ramaProblemaSalud, pscCasoPaci | `EpisodeOfCare.type[problemaSalud]`,`EpisodeOfCare.type[rama]` |
| runProfesional, dvProfesional, nombres y apellidos del profesional | rol del documento →`PractitionerRole.practitioner`→`Practitioner.identifier[run]`(oficial, con`system`),`name` |
| deisEstablecimientoOtorga | rol →`PractitionerRole.organization`→ DEIS |
| deisServicioSaludOtorga | **Derivado**del DEIS con[CSEstablecimientoDEIS](CodeSystem-establecimiento-deis.md)(propiedad`servicioSalud`) |
| especialidadOrigen | rol →`PractitionerRole.specialty` |
| fechaInicioDocumento, horaInicioDocumento | fecha propia del foco (`authoredOn`,`recordedDate`o`performedPeriod.start`) en ISO 8601 |

El **rol del documento** es:

* `requester` en SIC, OA, CC y EXGO.
* `recorder` en IPD y HD.
* `performer.actor` en PO.

-------

### SIC — Solicitud de interconsulta

Perfil: [SolicitudInterconsultaGES](StructureDefinition-sic-ges.md) + [DiagnosticoGES](StructureDefinition-diagnostico-ges.md) en `reasonReference`. Ejemplos: [SIC caso A](ServiceRequest-sic-a.md), [mensaje A1](Bundle-msg-a1-sic.md).

| | |
| :--- | :--- |
| derivadaPara / otraDerivadaPara | `ServiceRequest.category[derivadaPara]`/`.text`([VSDerivadaParaSIC](ValueSet-vs-derivada-para-sic.md)) |
| especialidadDestino | `ServiceRequest.performerType` |
| deisEstablecimientoDestino / deisServicioSaludDestino | `ServiceRequest.performer`→ DEIS / derivado |
| confirmaSospechaDescarta | `Condition.verificationStatus`(`provisional`en la SIC) |
| diagnostico | `Condition.code.text` |
| fundamentoDiag | `Condition.note.text` |
| indicacionExamen | `Condition.extension[indicaciones]` |
| fechaRealizacion | `ServiceRequest.occurrenceDateTime` |
| direccion/comuna/provincia/región, sexo, fecha de nacimiento, edad, fono, email | `Patient.address`,`gender`,`birthDate`,`telecom`. La edad se calcula |

### IPD — Informe de proceso diagnóstico

Perfil: [InformeProcesoDiagnosticoGES](StructureDefinition-ipd-ges.md). Ejemplos: [confirma (A)](Condition-ipd-a.md), [confirma con VFG (B)](Condition-ipd-b.md), [descarta (D)](Condition-ipd-d.md).

| | |
| :--- | :--- |
| confirmaSospechaDescarta | `Condition.verificationStatus`:`confirmed`/`provisional`/`refuted` |
| diagnostico / fundamentoDiag / indicacionExamen | `code.text`/`note.text`/`extension[indicaciones]` |
| deisEstablecimientoDestino / deisServicioSaludDestino | `extension[destino]`→ DEIS / derivado |
| enfermedadRenalVfg1..3, parametroEspecial | `evidence.detail`→[DatoEspecialGES](StructureDefinition-dato-especial-ges.md)(`vfg`,`etapa-erc`, …) |
| (nuevo) CIE-10 / SNOMED CT | `code.coding[cie10]`u otro`coding` |

### OA — Orden de atención

Perfil: [OrdenAtencionGES](StructureDefinition-oa-ges.md). Ejemplos: [endoscopía](ServiceRequest-oa-a-endoscopia.md), [gastrectomía](ServiceRequest-oa-a-cirugia.md), [hemodiálisis con cuarto turno](ServiceRequest-oa-b-hemodialisis.md).

| | |
| :--- | :--- |
| codigoPrestacion / nombrePrestacion | `ServiceRequest.code`([CSPrestacionFonasa](CodeSystem-prestacion-fonasa.md)) /`code.text` |
| garantia | `extension[garantia]`([CSGarantiaGES](CodeSystem-garantia-ges.md)) |
| derivadaPara / otraDerivadaPara | `category[derivadaPara]`([VSDerivadaParaOA](ValueSet-vs-derivada-para-oa.md)) |
| especialidadDestino, establecimiento y SS destino | `performerType`,`performer` |
| diagnostico | `reasonCode.text` |
| cuartoTurnoEspecial | `supportingInfo`→ Observation`cuarto-turno` |
| comunaEspecial, regionEspecial, fonoBeneficiarioEspecial, emailBeneficiarioEspecial | **`Patient.address` y `Patient.telecom`.**No son datos especiales: son datos del paciente |

### PO — Prestación otorgada

Perfil: [PrestacionOtorgadaGES](StructureDefinition-po-ges.md). Ejemplos: [endoscopía](Procedure-po-a-endoscopia.md), [hemodiálisis mensual](Procedure-po-b-hemodialisis.md).

| | |
| :--- | :--- |
| codigoPrestacion / nombrePrestacion | `Procedure.code`/`code.text` |
| fechaRealizacion / fechaFin | `performedPeriod.start`/`performedPeriod.end` |
| fechaInicioDocumento / hora | `performedPeriod.start` |
| (nuevo) OA que la origina | `basedOn` |
| (nuevo) garantía que cumple | `extension[garantia]` |

La PO **no exige profesional**: el rol puede traer solo el establecimiento y la especialidad, como en el [ejemplo de la unidad de endoscopía](PractitionerRole-rol-endoscopia-hlf.md).

### CC — Cierre de caso

Perfil: [CierreCasoGES](StructureDefinition-cierre-caso-ges.md). Ejemplo: [cierre por descarte](Task-cc-d.md).

| | |
| :--- | :--- |
| tipCieCa | `Task.statusReason`([VSCausalCierreCaso](ValueSet-vs-causal-cierre-caso.md)) |
| observacionCierre | `Task.note.text` |
| (caso) | `Task.focus`→ EpisodeOfCare con`status = finished`y`period.end` |

### EXGO — Excepción de garantía de oportunidad

Perfil: [ExcepcionGarantiaGES](StructureDefinition-excepcion-garantia-ges.md). Ejemplo: [inasistencia](Task-exgo-c.md).

| | |
| :--- | :--- |
| garantia | `extension[garantia]` |
| tipCieCa (causal de excepción) | `Task.statusReason`([VSCausalExcepcionGarantia](ValueSet-vs-causal-excepcion-garantia.md)) |
| justificacionCausal | `Task.statusReason.text` |
| pscCasoPaci | `EpisodeOfCare.type[problemaSalud]`(el mismo dato que problemaSalud) |

### HD — Hoja diaria APS

Perfil: [HojaDiariaGES](StructureDefinition-hoja-diaria-ges.md). Ejemplos: [sospecha](Condition-hd-c-sospecha.md), [confirmado](Condition-hd-c-confirmado.md).

| | |
| :--- | :--- |
| estado | `extension[estadoHD]`([CSEstadoHojaDiariaGES](CodeSystem-estado-hoja-diaria-ges.md))**y**`verificationStatus`equivalente (propiedad`verificacion`del CodeSystem) |
| ramaProblemaSalud | `EpisodeOfCare.type[rama]` |

La HD usa el mismo perfil base que el IPD. Por eso un sistema APS que ya emite HD tiene resuelto casi todo el IPD.

