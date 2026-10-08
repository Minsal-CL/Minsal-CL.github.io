# Artifacts Summary - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Emisor — sistema del establecimiento](CapabilityStatement-CSEmisorEstablecimiento.md) | Lo que debe hacer el sistema clínico que notifica: invocar $process-message con un BundleNotificacionGES válido, conservar el número de caso SIGGES y consultar casos. |
| [Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)](CapabilityStatement-CSReceptorSIGGES.md) | Lo que debe exponer quien recibe las notificaciones GES: la operación $process-message para los 7 documentos y la búsqueda de casos con sus garantías. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bundle — Notificación GES](StructureDefinition-bundle-notificacion-ges.md) | Sobre de un documento SIGGES: MessageHeader + núcleo común (Patient, PractitionerRole, Practitioner, Organization, EpisodeOfCare) + recurso foco + Observation opcionales. Se envía a $process-message. |
| [Bundle — Respuesta SIGGES](StructureDefinition-bundle-respuesta-ges.md) | Respuesta a una notificación. |
| [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md) | Cierre del caso GES con su causal. focus apunta al caso. |
| [Caso GES](StructureDefinition-caso-ges.md) | El caso GES: paciente + problema de salud + rama. Es el hilo que une todos los documentos. Lo abre la primera notificación (SIC, IPD o HD) y lo cierra un CC. |
| [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md) | Mecanismo de crecimiento: los datos que sólo aplican a un problema de salud (VFG, cuarto turno, etapa…) se envían como Observation con un código de CSDatoEspecialGES, en vez de agregar campos nuevos a la API. |
| [Diagnóstico GES](StructureDefinition-diagnostico-ges.md) | Afirmación diagnóstica sobre el problema de salud GES. verificationStatus reemplaza confirmaSospechaDescarta (provisional = sospecha, confirmed = confirma, refuted = descarta). Es el motivo de la SIC y la base de IPD y HD. |
| [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md) | Exceptúa una garantía del caso con su causal y justificación. |
| [Establecimiento GES](StructureDefinition-establecimiento-ges.md) | Establecimiento identificado por código DEIS. El Servicio de Salud se deriva del catálogo (CSEstablecimientoDEIS.servicioSalud) o se informa en partOf como referencia lógica. |
| [Garantía de oportunidad](StructureDefinition-garantia-oportunidad-ges.md) | Garantía activa de un caso con su plazo. La publica SIGGES (no la envía el establecimiento) y se obtiene en la consulta de casos. |
| [HD — Hoja diaria APS](StructureDefinition-hoja-diaria-ges.md) | Registro APS del estado del caso por rama. El estado específico (catálogo ESTADOS HD) va en extensión; verificationStatus lleva la semántica genérica. |
| [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md) | Confirma, mantiene en sospecha o descarta el problema de salud. Los datos propios de un PS (p.ej. VFG en ERC) van en evidence.detail como DatoEspecialGES. |
| [MessageHeader — Notificación GES](StructureDefinition-mh-notificacion-ges.md) | Cabecera del mensaje. eventCoding indica qué documento se notifica; sender es el establecimiento (deisOrigen) y source el sistema (nombreSistemaOrigen). |
| [MessageHeader — Respuesta SIGGES](StructureDefinition-mh-respuesta-ges.md) | Respuesta de SIGGES. response.code indica el resultado; focus devuelve el caso con su número SIGGES; details apunta a un OperationOutcome con advertencias o errores. |
| [OA — Orden de atención](StructureDefinition-oa-ges.md) | Orden de una prestación garantizada. La prestación va en code, la garantía en extensión y los datos especiales (p.ej. cuarto turno) en supportingInfo. |
| [PO — Prestación otorgada](StructureDefinition-po-ges.md) | Prestación efectivamente realizada. basedOn apunta a la OA o SIC que la originó. |
| [Paciente GES](StructureDefinition-paciente-ges.md) | Beneficiario del caso GES. Se identifica por RUN; los datos demográficos viajan una sola vez aquí y no se repiten en cada documento. |
| [Profesional GES](StructureDefinition-prestador-ges.md) | Profesional que firma el documento (runProfesional + dvProfesional). |
| [Rol clínico GES](StructureDefinition-rol-clinico-ges.md) | Quién, dónde y en qué especialidad se emite el documento: profesional + establecimiento que otorga + especialidad de origen. Un solo recurso resuelve runProfesional, deisEstablecimientoOtorga y especialidadOrigen. |
| [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md) | Derivación con sospecha GES. El diagnóstico, su fundamento y la marca confirma/sospecha/descarta viajan en el DiagnosticoGES referenciado en reasonReference. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Caso GES](StructureDefinition-ext-caso-ges.md) | Referencia al caso GES (EpisodeOfCare) al que pertenece el documento. En R4 ServiceRequest, Procedure y Condition no tienen un elemento para el episodio. |
| [Establecimiento de destino](StructureDefinition-ext-establecimiento-destino.md) | Establecimiento donde continúa la atención tras el IPD (deisEstablecimientoDestino). |
| [Estado de hoja diaria APS](StructureDefinition-ext-estado-hoja-diaria.md) | Estado del caso en la hoja diaria APS, específico por rama (campo estado de la API v1.5). |
| [Garantía GES](StructureDefinition-ext-garantia-ges.md) | Garantía GES a la que se imputa el documento (campo garantia de la API v1.5). |
| [Tratamiento e indicaciones](StructureDefinition-ext-indicaciones-clinicas.md) | Texto libre de tratamiento e indicaciones (indicacionExamen en la API v1.5). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Causales de cierre de caso](ValueSet-vs-causal-cierre-caso.md) | Causales de tipo cierre-caso. |
| [Causales de excepción de garantía](ValueSet-vs-causal-excepcion-garantia.md) | Causales de tipo excepcion-garantia. |
| [Datos específicos por PS](ValueSet-vs-dato-especial-ges.md) | Códigos de Observation para datos específicos por problema de salud. |
| [Derivada para — OA](ValueSet-vs-derivada-para-oa.md) | Motivos de derivación válidos en una OA. |
| [Derivada para — SIC](ValueSet-vs-derivada-para-sic.md) | Motivos de derivación válidos en una SIC. |
| [Especialidades SIGGES](ValueSet-vs-especialidad-sigges.md) | Todas las especialidades del catálogo. |
| [Establecimientos DEIS](ValueSet-vs-establecimiento-deis.md) | Todos los establecimientos del catálogo. |
| [Estado de garantía](ValueSet-vs-estado-garantia-ges.md) | Estados de negocio de una garantía. |
| [Estados de hoja diaria](ValueSet-vs-estado-hoja-diaria-ges.md) | Todos los estados de hoja diaria APS. |
| [Garantías GES](ValueSet-vs-garantia-ges.md) | Todas las garantías. |
| [Prestaciones Fonasa](ValueSet-vs-prestacion-fonasa.md) | Todas las prestaciones del catálogo. |
| [Problemas de salud GES](ValueSet-vs-problema-salud-ges.md) | Todos los problemas de salud GES del catálogo. |
| [Programas GES (SNOMED CT, extensión chilena)](ValueSet-vs-programa-ges-snomed.md) | Conceptos de programa GES de la extensión chilena de SNOMED CT: descendientes de 1741000325106 (programa de Garantías Explícitas en Salud). Es el mismo criterio de vs-problema-ges-tei de la guía TEI 0.2.3. Clasifican el caso (EpisodeOfCare.type), no el diagnóstico: son conceptos de programa, no hallazgos clínicos. |
| [Ramas de problema de salud GES](ValueSet-vs-rama-problema-salud-ges.md) | Todas las ramas. |
| [Tipos de documento SIGGES](ValueSet-vs-tipo-documento-sigges.md) | Eventos de mensaje admitidos. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Causales SIGGES](CodeSystem-causal-sigges.md) | Causales de cierre de caso, excepción de garantía y cierre de garantía de oportunidad (hoja CAUSALES). |
| [Datos específicos por problema de salud](CodeSystem-dato-especial-ges.md) | Códigos para Observation que reemplazan los campos ad hoc de la API v1.5 (enfermedadRenalVfg1..3, cuartoTurnoEspecial, parametroEspecial). Agregar un dato nuevo = agregar un código aquí; la API y los perfiles no cambian. |
| [Derivada para (SIGGES)](CodeSystem-derivada-para-ges.md) | Motivo de la derivación en SIC y OA (hoja DERIVAPARA). |
| [Especialidades SIGGES](CodeSystem-especialidad-sigges.md) | Especialidades según catálogo SIGGES 2.0 (formato DEIS NN-NNN-N). |
| [Establecimientos (DEIS)](CodeSystem-establecimiento-deis.md) | Establecimientos de salud según catálogo UNIDADES de SIGGES 2.0. Código = DEIS formato NN-NNN. |
| [Estado de negocio de la garantía](CodeSystem-estado-garantia-ges.md) | Estado de negocio (Task.businessStatus) de una garantía de oportunidad. |
| [Estados de Hoja Diaria APS](CodeSystem-estado-hoja-diaria-ges.md) | Estados de la Hoja Diaria APS por rama (hoja ESTADOS HD - RAMAS). |
| [Garantías GES](CodeSystem-garantia-ges.md) | Garantías GES por rama de problema de salud (hoja GARANTIAS). |
| [Prestaciones (arancel Fonasa)](CodeSystem-prestacion-fonasa.md) | Prestaciones según catálogo SIGGES 2.0 (hoja PRESTACIONES). |
| [Problemas de salud GES](CodeSystem-problema-salud-ges.md) | Problemas de salud GES según catálogo SIGGES 2.0 (hoja PROBLEMAS DE SALUD). |
| [Ramas de problema de salud GES](CodeSystem-rama-problema-salud-ges.md) | Ramas (subdivisiones por decreto) de cada problema de salud GES. Derivado de la hoja GARANTIAS. |
| [Servicios de Salud (DEIS)](CodeSystem-servicio-salud-deis.md) | Servicios de Salud según catálogo UNIDADES de SIGGES 2.0. |
| [Sexo (SIGGES)](CodeSystem-sexo-sigges.md) | Codificación de sexo usada por SIGGES 2.0 (hoja SEXO). |
| [Tipo de establecimiento de origen](CodeSystem-tipo-origen-ges.md) | Dependencia del establecimiento que notifica (tipoDeisOrigen en API v1.5). |
| [Tipos de documento SIGGES](CodeSystem-tipo-documento-sigges.md) | Documentos del ciclo de un caso GES. Se usan como evento del MessageHeader. La propiedad codigoSIGGES es el identificador numérico interno de SIGGES 2.0. |
| [Tipos de tarea GES](CodeSystem-tipo-tarea-ges.md) | Clasifica las tareas (Task) de gestión de garantías y del caso. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Código DEIS de establecimiento](NamingSystem-NSDeis.md) | Identificador DEIS de establecimiento en formato NN-NNN (DEIS2 del catálogo UNIDADES). |
| [Folio de documento del establecimiento](NamingSystem-NSFolioDocumento.md) | Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia. |
| [Identificador de caso SIGGES](NamingSystem-NSCasoSIGGES.md) | Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación. |
| [NSCasoLocal](NamingSystem-NSCasoLocal.md) | Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [Derivado para: TEI → SIGGES (SIC)](ConceptMap-tei-a-sigges-derivado-para.md) | CSDerivadoParaCodigo de TEI a CSDerivadaParaGES de SIGGES en contexto SIC. Los códigos 2, 3 y 4 significan cosas distintas en cada sistema. SIGGES 11 (Rehabilitación) no tiene origen en TEI 0.2.3. |
| [Especialidad: TEI → SIGGES](ConceptMap-tei-a-sigges-especialidad.md) | CSEspecialidadMed de TEI (códigos numéricos) a CSEspecialidadSIGGES (formato NN-NNN-N). Sólo se mapean coincidencias exactas de nombre; el resto queda pendiente de homologación. |
| [Motivo de cierre de interconsulta TEI → causal SIGGES](ConceptMap-tei-a-sigges-motivo-cierre.md) | CSMotivoCierreInterconsulta de TEI a CSCausalSIGGES. Cerrar una interconsulta no es cerrar el caso GES: sólo los motivos que también cierran el caso tienen equivalente. |
| [Problema de salud: TEI → SIGGES](ConceptMap-tei-a-sigges-problema-salud.md) | Códigos 1–90 de cs-problema-ges-tei a CSProblemaSaludGES. Son el mismo listado del catálogo FONASA. |
| [Sexo FHIR → SIGGES](ConceptMap-sexo-fhir-a-sigges.md) | Traducción de Patient.gender (administrative-gender) al código SIGGES del campo sexoPaciente. |
| [verificationStatus → confirmaSospechaDescarta](ConceptMap-verificacion-a-csd.md) | Traducción de Condition.verificationStatus al campo confirmaSospechaDescarta de SIC/IPD en la API v1.5 (valores a confirmar con FONASA). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Caso 8812345 en SIGGES (vista del receptor)](EpisodeOfCare-8812345.md) | El caso A tal como lo devuelve SIGGES en la consulta; las garantías gar-a-701 a 703 lo referencian (SG-01). |
| [Caso A · 1 — SIC con sospecha de cáncer gástrico](ServiceRequest-sic-a.md) | CESFAM La Florida deriva a Gastroenterología del Hospital La Florida para confirmación diagnóstica. |
| [Caso A · 2 — OA de endoscopía digestiva alta](ServiceRequest-oa-a-endoscopia.md) | Gastroenterología ordena gastroduodenoscopía con biopsia para confirmar. |
| [Caso A · 3 — PO endoscopía realizada](Procedure-po-a-endoscopia.md) | La unidad de endoscopía registra la prestación. PO no exige profesional: el rol no trae practitioner. |
| [Caso A · 4 — IPD confirma cáncer gástrico](Condition-ipd-a.md) | verificationStatus = confirmed. Incluye además un coding CIE-10 (crecimiento sin cambiar el perfil). |
| [Caso A · 5 — OA de gastrectomía](ServiceRequest-oa-a-cirugia.md) | Cirugía digestiva ordena gastrectomía subtotal con disección ganglionar. |
| [Caso A · 6 — PO gastrectomía realizada](Procedure-po-a-cirugia.md) | Cumple la garantía de intervención quirúrgica. |
| [Caso A — Diagnóstico de sospecha (motivo de la SIC)](Condition-cond-a-sospecha.md) | Condition en estado provisional = sospecha GES. |
| [Caso A — cáncer gástrico (estado tras la PO de cirugía)](EpisodeOfCare-caso-a.md) | Caso GES del paciente A publicado como ejemplo independiente, para que los ejemplos sueltos que lo referencian resuelvan (SG-01). |
| [Caso B · 1 — IPD confirma ERC etapa 5](Condition-ipd-b.md) | La VFG y la etapa viajan como DatoEspecialGES en evidence.detail (reemplazan enfermedadRenalVfg1..3). |
| [Caso B · 2 — OA de hemodiálisis](ServiceRequest-oa-b-hemodialisis.md) | Orden de hemodiálisis con cuarto turno. Comuna, fono y email del beneficiario salen del Patient (no son campos especiales). |
| [Caso B · 3 — PO hemodiálisis mensual](Procedure-po-b-hemodialisis.md) | Prestación con período: fechaRealizacion = start, fechaFin = end. |
| [Caso B — ERC (estado tras la PO de hemodiálisis)](EpisodeOfCare-caso-b.md) | Caso GES del paciente B publicado como ejemplo independiente (SG-01). |
| [Caso C · 1 — HD sospecha DM2](Condition-hd-c-sospecha.md) | Estado HD 1191 + verificationStatus provisional. |
| [Caso C · 2 — HD confirma DM2](Condition-hd-c-confirmado.md) | Estado HD 1192 + verificationStatus confirmed. |
| [Caso C · 3 — EXGO por inasistencia](Task-exgo-c.md) | Excepción de la garantía de atención por especialista (endocrinología) por inasistencia. |
| [Caso C — hoja diaria APS (estado tras la EXGO)](EpisodeOfCare-caso-c.md) | Caso GES del paciente C publicado como ejemplo independiente (SG-01). |
| [Caso D · 1 — SIC sospecha cáncer gástrico](ServiceRequest-sic-d.md) | Segunda paciente con el mismo flujo de entrada que el caso A. |
| [Caso D · 2 — IPD descarta](Condition-ipd-d.md) | verificationStatus = refuted (descarta). Destino: retorno a APS. |
| [Caso D · 3 — CC por descarte](Task-cc-d.md) | Cierre de caso con causal 8 (Descarte). |
| [Caso D — Diagnóstico de sospecha](Condition-cond-d-sospecha.md) | Motivo de la SIC del caso D. |
| [Caso D — descartado y cerrado (estado tras el CC)](EpisodeOfCare-caso-d.md) | Caso GES del paciente D publicado como ejemplo independiente (SG-01). |
| [Consulta de casos por RUN — paciente A](Bundle-consulta-casos-pac-a.md) | 
| | |
| :--- | :--- |
| Respuesta a GET EpisodeOfCare?patient.identifier=… | 9876543-3&_revinclude=Task:focus. Reemplaza /consultar-sigges. |
 |
| [Dato especial — Etapa de enfermedad renal crónica](Observation-obs-b-etapa.md) | Dato específico del problema de salud, enviado como Observation. |
| [Dato especial — Requiere cuarto turno de diálisis](Observation-obs-b-cuarto-turno.md) | Dato específico del problema de salud, enviado como Observation. |
| [Dato especial — Velocidad de filtración glomerular estimada](Observation-obs-b-vfg.md) | Dato específico del problema de salud, enviado como Observation. |
| [Establecimiento 14-101 — Complejo Hospitalario Dr. Sótero del Río](Organization-sotero-del-rio.md) | Establecimiento de la red pública, Servicio de Salud Metropolitano Sur Oriente. |
| [Establecimiento 14-105 — Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-hosp-la-florida.md) | Establecimiento de la red pública, Servicio de Salud Metropolitano Sur Oriente. |
| [Establecimiento 14-317 — Centro de Salud Familiar Santo Tomás](Organization-cesfam-santo-tomas.md) | Establecimiento de la red pública, Servicio de Salud Metropolitano Sur Oriente. |
| [Establecimiento 14-331 — Centro de Salud Familiar La Florida](Organization-cesfam-la-florida.md) | Establecimiento de la red pública, Servicio de Salud Metropolitano Sur Oriente. |
| [FONASA](Organization-fonasa.md) | Fondo Nacional de Salud, receptor de las notificaciones SIGGES. |
| [Garantía 701 — Confirmación Diagnóstica (cumplida)](Task-gar-a-701.md) | Garantía del caso A publicada por SIGGES. |
| [Garantía 702 — Intervención Quirúrgica (cumplida)](Task-gar-a-702.md) | Garantía del caso A publicada por SIGGES. |
| [Garantía 703 — Seguimiento (vigente)](Task-gar-a-703.md) | Garantía del caso A publicada por SIGGES. |
| [Mensaje A1 — SIC (abre el caso)](Bundle-msg-a1-sic.md) | Primer mensaje del caso: aún no existe número SIGGES, el caso viaja con identificador local. |
| [Mensaje A2 — OA endoscopía](Bundle-msg-a2-oa.md) | El caso ya tiene número SIGGES (8812345), devuelto en la respuesta al mensaje A1. |
| [Mensaje A3 — PO endoscopía](Bundle-msg-a3-po.md) | Prestación otorgada vinculada a la OA por basedOn. |
| [Mensaje A4 — IPD confirma](Bundle-msg-a4-ipd.md) | Confirmación diagnóstica: inicia la garantía de tratamiento quirúrgico. |
| [Mensaje A5 — OA cirugía](Bundle-msg-a5-oa.md) | Orden de tratamiento imputada a la garantía 702. |
| [Mensaje A6 — PO cirugía](Bundle-msg-a6-po.md) | Prestación que cumple la garantía 702. |
| [Mensaje B1 — IPD ERC con VFG](Bundle-msg-b1-ipd.md) | El caso se abre directamente con un IPD (sin SIC previa). |
| [Mensaje B2 — OA hemodiálisis](Bundle-msg-b2-oa.md) | Datos especiales renales como Observation en supportingInfo. |
| [Mensaje B3 — PO hemodiálisis](Bundle-msg-b3-po.md) | Tratamiento mensual con fecha de fin. |
| [Mensaje C1 — HD sospecha](Bundle-msg-c1-hd.md) | Hoja diaria APS que abre el caso. |
| [Mensaje C2 — HD confirma](Bundle-msg-c2-hd.md) | Misma estructura que C1: sólo cambian estado y verificationStatus. |
| [Mensaje C3 — EXGO](Bundle-msg-c3-exgo.md) | Excepción con causal (statusReason) y justificación (statusReason.text). |
| [Mensaje D1 — SIC](Bundle-msg-d1-sic.md) | Abre el caso D. |
| [Mensaje D2 — IPD descarta](Bundle-msg-d2-ipd.md) | Descarte del problema de salud. |
| [Mensaje D3 — CC](Bundle-msg-d3-cc.md) | Cierre del caso: EpisodeOfCare.status = finished. |
| [Paciente Juan Carlos Pérez Soto](Patient-pac-a.md) | Beneficiario ficticio. |
| [Paciente Luis Alberto Muñoz Díaz](Patient-pac-c.md) | Beneficiario ficticio. |
| [Paciente María Isabel González Rojas](Patient-pac-b.md) | Beneficiario ficticio. |
| [Paciente Rosa Elena Tapia Vidal](Patient-pac-d.md) | Beneficiario ficticio. |
| [Profesional Andrés Fuentes Soto](Practitioner-pr-fuentes.md) | Profesional ficticio. |
| [Profesional Camila Andrea Rojas Muñoz](Practitioner-pr-rojas.md) | Profesional ficticio. |
| [Profesional Ignacio Paredes Lagos](Practitioner-pr-paredes.md) | Profesional ficticio. |
| [Profesional Tomás Vergara Pino](Practitioner-pr-vergara.md) | Profesional ficticio. |
| [Profesional Valentina Soto Araya](Practitioner-pr-soto.md) | Profesional ficticio. |
| [Respuesta A1 — OK con número de caso](Bundle-resp-a1-ok.md) | SIGGES acepta la SIC y devuelve el caso con identifier[casoSIGGES] = 8812345. El HIS debe guardarlo y enviarlo en los siguientes mensajes. |
| [Respuesta B2 — OK con información](Bundle-resp-b2-aviso.md) | Aceptado; el OperationOutcome informa un dato que SIGGES derivó del catálogo. |
| [Respuesta — Error de validación](Bundle-resp-error.md) | Rechazo con fatal-error. No se crea nada en SIGGES; el HIS corrige y reenvía con un NUEVO Bundle.identifier y el MISMO folio. |
| [Respuesta — Reenvío idempotente](Bundle-resp-duplicado.md) | Reintento del mensaje A3: SIGGES reconoce el folio y responde ok con advertencia duplicate (idempotencia). |
| [Rol — Cirugía Abdominal Adulto en 14-105](PractitionerRole-rol-paredes-hlf.md) | Profesional + establecimiento + especialidad. |
| [Rol — Gastroenterología Adulto en 14-105](PractitionerRole-rol-fuentes-hlf.md) | Profesional + establecimiento + especialidad. |
| [Rol — Medicina Familiar en 14-317](PractitionerRole-rol-vergara-cesfam-st.md) | Profesional + establecimiento + especialidad. |
| [Rol — Medicina Familiar en 14-331](PractitionerRole-rol-rojas-cesfam-lf.md) | Profesional + establecimiento + especialidad. |
| [Rol — Nefrología Adulto en 14-101](PractitionerRole-rol-soto-sotero.md) | Profesional + establecimiento + especialidad. |
| [Rol — Procedimientos Gastroenterológicos en 14-105](PractitionerRole-rol-endoscopia-hlf.md) | Unidad (sin profesional) + establecimiento + especialidad. |

