# Artifacts Summary - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bundle de Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalBundleSolicitudLaboratorio.md) | Perfil para el envío transaccional de una o más prestaciones de laboratorio que pertenecen a una misma orden. Exige al menos una entrada `MinsalServiceRequestLab` y valida que todas las entradas de solicitud comparten el mismo `requisition`. Paciente, profesional solicitante y establecimiento se asumen preexistentes en el servidor de destino (resueltos previamente mediante el flujo de identidad descrito en Arquitectura); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la solicitud en vez de asumir su preexistencia. |
| [Espécimen de Laboratorio MINSAL](StructureDefinition-MinsalEspecimenLaboratorio.md) | Perfil para representar la muestra biológica asociada a una solicitud de laboratorio, cuando el sistema de origen informa esta información en el mensaje HL7 v2 (por ejemplo, en el segmento SPM de ORM^O01/ORU^R01). |
| [Organización participante en el flujo de laboratorio](StructureDefinition-OrganizacionParticipanteLaboratorio.md) | Perfil para representar establecimientos de origen, laboratorios ejecutores y otras organizaciones participantes en el intercambio de solicitudes y resultados de laboratorio. Extiende el perfil de organización de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Organization de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. |
| [Paciente de Laboratorio](StructureDefinition-PacienteLaboratorio.md) | Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende el perfil de paciente de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Patient de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. |
| [Profesional de Laboratorio MINSAL](StructureDefinition-MinsalPractitionerLaboratorio.md) | Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende el perfil de prestador de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Practitioner de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. |
| [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md) | Perfil para representar el resultado de una solicitud de laboratorio y el informe PDF recibido desde un mensaje HL7 v2 ORU^R01. |
| [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md) | Perfil para representar una solicitud de examen de laboratorio clínico en el modelo canónico nacional FHIR R4. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Motivo de Cancelación de Solicitud de Laboratorio](ValueSet-motivo-cancelacion-solicitud-laboratorio.md) | Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Este ValueSet no define códigos propios; referencia el CodeSystem externo SNOMED CT. Binding extensible: permite agregar otros códigos SNOMED CT si se identifican nuevos motivos de cancelación sin muestra. |
| [Motivo de Rechazo de Muestra de Laboratorio](ValueSet-motivo-rechazo-muestra-laboratorio.md) | Subconjunto del catálogo oficial HL7 v2 Tabla 0490 (Specimen Reject Reason) con los motivos de rechazo de muestra reconocidos por esta guía: cantidad insuficiente, coagulación y problema de etiquetado. Este ValueSet no define códigos propios; selecciona un subconjunto del CodeSystem externo `http://terminology.hl7.org/CodeSystem/v2-0490`, el mismo catálogo que usa HL7 v2 en el segmento SPM-21. Binding extensible: si en el futuro se identifica un motivo de rechazo no incluido aquí (por ejemplo hemólisis o contaminación), puede usarse cualquier otro código válido del mismo CodeSystem. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Códigos de prestaciones FONASA](CodeSystem-CodigoPrestacionFonasa.md) | Identificador canónico provisional para códigos de prestaciones FONASA. El contenido es administrado externamente por el servicio terminológico. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Bundle de solicitud con cinco prestaciones FONASA](Bundle-BundleSolicitudMultipleEjemplo.md) | TransacciÃ³n FHIR que crea cinco prestaciones FONASA pertenecientes a una misma solicitud de laboratorio. El paciente, el profesional solicitante y el laboratorio ejecutor se asumen preexistentes en el servidor de destino (ver Inicio, secciÃ³n "Solicitud con mÃºltiples prestaciones"), por lo que no se incluyen como entradas propias de este Bundle. |
| [EspÃ©cimen rechazado por coagulaciÃ³n](Specimen-EspecimenRechazadoEjemplo.md) | Muestra recibida en el laboratorio y rechazada por coagulaciÃ³n. SegÃºn lo acordado, la solicitud original no se reutiliza: se debe generar una nueva ServiceRequest con nuevo identificador y nueva etiqueta (ver Casos de uso, Caso de uso 4). |
| [Espécimen de ejemplo](Specimen-EspecimenEjemplo.md) | Muestra de sangre venosa asociada a la prestación de Hemograma del ejemplo de solicitud múltiple. |
| [Establecimiento de origen de ejemplo](Organization-EstablecimientoOrigenEjemplo.md) | Organización que origina la solicitud de laboratorio, identificada con un Código de Establecimiento DEIS real y vigente (ver [Códigos de establecimientos de salud vigentes](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes), referencia ya usada como criterio de identificación de organizaciones en NID): 116105, Hospital Dr. César Garavagno Burotto (Hospital de Talca), Servicio de Salud del Maule. `identifier.system` usa `http://deis.minsal.cl/establecimientos`, el mismo URI que ya usan las guías de Tiempos de Espera Quirúrgico y Urgencia para este mismo dato; CoreOrganizacionCl aún no fija un `system` oficial (queda pendiente en su definición), por lo que se adopta este URI como estándar de facto compartido, en vez de crear uno propio de esta guía. |
| [Laboratorio ejecutor de ejemplo](Organization-LaboratorioEjecutorEjemplo.md) | Laboratorio clínico interno del mismo establecimiento (116105, Hospital de Talca) que ejecuta las prestaciones solicitadas; escenario habitual en hospitales públicos, que procesan sus exámenes de rutina (hemograma, glicemia, perfil bioquímico) en su propio laboratorio en vez de derivarlos a un tercero. Mismo `system` de Código de Establecimiento DEIS que el establecimiento de origen. |
| [Paciente de ejemplo](Patient-PacienteEjemplo.md) | Ejemplo ficticio de un paciente utilizado para validar el perfil. Usa un identificador RUN con el tipo y el sistema de identificación reales definidos por NID, y cumple las cardinalidades obligatorias heredadas de CL-Core (CorePacienteCl): nombre oficial con uso, apellido y nombre; sexo administrativo; fecha de nacimiento. |
| [PrestaciÃ³n FONASA: Bilirrubina total](ServiceRequest-PrestacionBilirrubinaEjemplo.md) | PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple. |
| [PrestaciÃ³n FONASA: Colesterol total](ServiceRequest-PrestacionColesterolTotalEjemplo.md) | PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple. |
| [PrestaciÃ³n FONASA: Glucosa (glicemia)](ServiceRequest-PrestacionGlicemiaEjemplo.md) | PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple. |
| [PrestaciÃ³n FONASA: Hemograma](ServiceRequest-PrestacionHemogramaEjemplo.md) | PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple. |
| [PrestaciÃ³n FONASA: NitrÃ³geno ureico](ServiceRequest-PrestacionNitrogenoUreicoEjemplo.md) | PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple. |
| [Profesional solicitante de ejemplo](Practitioner-ProfesionalSolicitanteEjemplo.md) | Profesional ficticio que solicita las prestaciones del ejemplo. Usa la slice `identifier[run]` ya definida por CorePrestadorCl (CL-Core), con el mismo `system` de referencia que usa la guÃ­a MPI/HPD de MINSAL para el RUN de prestadores (`https://api.cl/system/run`, ver `IG_hpd`). |
| [Solicitud cancelada por no presentaciÃ³n del paciente](ServiceRequest-SolicitudCanceladaNoPresentacionEjemplo.md) | Solicitud de laboratorio cancelada porque el paciente no concurriÃ³ a la toma de muestra. No existe Specimen asociado (ver Casos de uso, Caso de uso 4). |

