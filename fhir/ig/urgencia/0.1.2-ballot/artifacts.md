# Artifacts Summary - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Acompañante Urgencia](StructureDefinition-AcompananteUrg.md) | Información del acompañante del paciente que acude a una unidad de urgencias. |
| [Alergias e Intolerancia](StructureDefinition-AlergiaIntolerancia.md) | Perfíl empleado para registrar alergias e intolerancias de un paciente. |
| [Bundle Admision](StructureDefinition-BundleAdmision.md) | Recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia |
| [Bundle Atención](StructureDefinition-BundleAtencion.md) | Recurso Bundle para la atención de pacientes en un servicio de atención de urgencia |
| [Bundle Categorizacion](StructureDefinition-BundleCategorizacion.md) | Recurso Bundle para registrar la categorización de pacientes en un servicio de atención de urgencia |
| [Bundle Egreso](StructureDefinition-BundleEgreso.md) | Recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia |
| [CarePlan Indicaciones](StructureDefinition-CarePlanIndicaciones.md) | Registro de indicaciones al término de una atención de urgencia |
| [Condition Diagnostico](StructureDefinition-ConditionDiagnosticoLE.md) | Condicion Diagnostico, recurso que se utiliza para indicar el diagnóstico tanto de ingreso como egreso de un paciente en un servicio de urgencias |
| [Encuentro Atención](StructureDefinition-EncounterAtencion.md) | Recurso que representa los diferentes encuentros clínicos durante su estancia en el servicio de urgencia de un paciente en un establecimiento de salud. |
| [Encuentro Urgencia](StructureDefinition-EncounterUrg.md) | Recurso que representa el episodio de urgencia de un paciente en un establecimiento de salud. |
| [Establecimiento Urgencia](StructureDefinition-EstablecimientoUrg.md) | Recurso empleado para representar un establecimiento de salud en el cual se realiza la atención de urgencia de un paciente. |
| [MedicationAdministration Urgencia](StructureDefinition-MedicationAdministrationUrg.md) | Recurso MedicationAdministration para registrar la administración de medicamentos en un servicio de atención de urgencia |
| [Observación Anamnesis](StructureDefinition-ObservacionAnamnesis.md) | Observación de la anamnesis de un paciente en un servicio de urgencia |
| [Observación Evolución Clínica](StructureDefinition-observacion-evol-clin.md) | Observación de la evolución clínica de un paciente en un servicio de urgencia |
| [Observación Hospitalización Reciente](StructureDefinition-ObservacionHospitalizacionReciente.md) | Observación que registra si el paciente ha sido hospitalizado recientemente |
| [Observación Lesión Auto Infligida](StructureDefinition-ObservacionLesionAutoInfligida.md) | Observación que registra si el paciente ha sufrido una lesión auto infligida |
| [Observación Medico Legal Alcoholemia](StructureDefinition-ObservacionMedLegalAlcoholemia.md) | Observación que registra la fecha y hora de la toma de alcoholemia |
| [Observación Medico Legal Certificación](StructureDefinition-ObservacionMedLegalCert.md) | Observación que registra la fecha y hora de la certificación de riesgo vital o secuela grave |
| [Observación Medico Legal Examen Toxicológico](StructureDefinition-ObservacionMedLegalExamenToxico.md) | Observación que registra la fecha y hora en que se realiza un examen toxicológico |
| [Observación Medico Legal Lesiones](StructureDefinition-ObservacionMedLegalLesiones.md) | Observación que registra la fecha y hora de la realización del informe de lesiones |
| [Observación Medico Legal Violencia Sexual](StructureDefinition-ObservacionMedLegalVS.md) | Observación que registra la fecha y hora de la realización del informe de violencia sexual |
| [Observación Reconsulta Urgencia](StructureDefinition-ObservacionReconsultaUrgencia.md) | Observación que registra si el paciente ha tenido un evento de urgencia previo en el período de 15-21 días |
| [Observación Signos Vitales](StructureDefinition-ObservationSignosVitales.md) | Recurso empleado para registrar la información de signos vitales de un paciente en un servicio de urgencia. |
| [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md) | Resultado de examen |
| [Paciente Urgencia](StructureDefinition-PatientUrg.md) | Paciente definido para el registro de atenciones de urgencia |
| [Prestador Administrativo de Urgencia](StructureDefinition-PrestadorAdministrativo.md) | Prestador Administrativo que participa en la atención de urgencia durante el proceso de admisión |
| [Prestador Profesional de Urgencia](StructureDefinition-PrestadorProfesional.md) | Profesional médico u odontólogo que participa en la atención de urgencia de un paciente. |
| [Procedimientos de Urgencias](StructureDefinition-Procedimiento.md) | Registro de un procedimiento realizado a un paciente |
| [Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios](StructureDefinition-ServiceRequestSolicitudes.md) | Recurso ServiceRequest para las solicitudes de exámenes, procedimientos y otros servicios durante la atención de un paciente |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abandono](StructureDefinition-Abandono.md) | Extension para regitrar el tipo de abandono que un paciente puede efectuar durante el proceso de urgencia. |
| [Acompañante](StructureDefinition-Acompanante.md) | Extensión empleada para indicar si el paciente tiene un acompañante en la atención de salud. |
| [Consulta por Accidente](StructureDefinition-ConsultaPorAccidente.md) | Extensión que registra si la atención de urgencia se debe a un accidente. |
| [Fallecido](StructureDefinition-Fallecido.md) | Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia. |
| [Indicación Alta](StructureDefinition-IndicacionAlta.md) | Extensión que registra la indicación de alta en el contexto de un encuentro de atención de urgencia. |
| [Indicación Derivación](StructureDefinition-IndicacionDerivacion.md) | Extensión que registra la indicación de derivación en el contexto de un encuentro de atención de urgencia. |
| [Indicación Hospitalización](StructureDefinition-IndicacionHospitalizacion.md) | Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia. |
| [Ley Previsional](StructureDefinition-LeyPrevisional.md) | Extensión para registrar la Ley Previsional asociada al episodio de atención de urgencia. |
| [Medio de Llegada](StructureDefinition-MedioDeLlegada.md) | Extensión que registra el medio de llegada del paciente al establecimiento de salud |
| [Mención profesional añadida al título profesional](StructureDefinition-Mencion.md) | Mención profesional obtenida junto con el título, dato que se agrega en texto lible |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | País de origen del paciente |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | Pueblos Afrodescendiente |
| [Pueblos Originarios](StructureDefinition-PueblosOriginarios.md) | Almacenar si el paciente pertenece a algun pueblo originario |
| [Pueblos Originarios Perteneciente](StructureDefinition-PueblosOriginariosPerteneciente.md) | Pueblos Originarios Perteneciente |
| [Religión](StructureDefinition-Religion.md) | Religión |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abandono](ValueSet-abandono.md) | Códigos asociados al tipo de abandono del paciente desde urgencia. |
| [Categorización Urgencia](ValueSet-categorizacion-urgencia.md) | Códigos de categorización asociados a la urgencia de pacientes en el sistema de salud chileno |
| [Códigos de Examenes](ValueSet-CodigoExamen.md) | Codigos de Examenes |
| [Códigos de Urgencia](ValueSet-VSCodigosUrgencia.md) | Códigos creados para registrar información dentro de la atención de urgencia |
| [Destino Fallecido](ValueSet-destino-fallecido.md) | Códigos asociados a la situación final de los usuarios fallecidos durante la atención de urgencia. |
| [Destino Traslado](ValueSet-destino-traslado.md) | Códigos asociados a destino de traslado del paciente desde urgencia. |
| [Especialidad Médica](ValueSet-EspecialidadMedica.md) | Códigos de especialidades médicas (Norma 820) |
| [Especialidad Odontológica](ValueSet-especialidad-odontologica.md) | Códigos de especialidades odontológicas (Norma 821) |
| [EstadoCivil](ValueSet-VSEstadoCivil.md) | EstadoCivil |
| [Eventos Urgencia](ValueSet-eventos-urgencia.md) | Códigos de eventos de urgencia |
| [Fallecido](ValueSet-fallecido.md) | Códigos asociados al momento en que el paciente fallece en el servicio de urgencia. |
| [Identificador Prestador](ValueSet-IdentificadorPrestador.md) | Identificador Prestador |
| [Indicación Hospitalización](ValueSet-indicacion-hospitalizacion.md) | Códigos asociados al destino de hospitalización dados por parte del profesional médico al usuario posterior a su atención de urgencia. |
| [Indicación Traslado Otro Centro](ValueSet-indicacion-traslado-otro-centro.md) | Códigos correspondientes a la derivación o traslado del usuario a otro centro asistencial de salud, el cual puede ser o no perteneciente al Servicio Nacional de Salud. |
| [Indicación de Alta](ValueSet-indicacion-alta.md) | Códigos asociados al destino de alta dados por parte del profesional médico al usuario posterior a su atención de urgencia. |
| [Lesión Autoinflingida](ValueSet-lesion-autoinflingida.md) | Códigos de lesión autoinflingida |
| [Ley Previsional](ValueSet-LeyPrevisional.md) | Códigos de Ley Previsional |
| [Medio de Llegada](ValueSet-MedioDeLlegada.md) | Set de códigos que corresponden a las posibles formas de llegada de un paciente a un servicio de atención de urgencia |
| [Procedencia](ValueSet-Procedencia.md) | Códigos de lugares físicos desde donde proviene el paciente cuando concurre a la atención de urgencia. |
| [Pueblos Originarios de Chile](ValueSet-PueblosOriginariosVS.md) | Pueblos Originarios de Chile |
| [Relación Acompañante](ValueSet-RelacionAcompanante.md) | Conjunto de códigos que representan la relación del acompañante con el paciente. |
| [Religion](ValueSet-VSReligion.md) | Religion |
| [Signos Vitales](ValueSet-SignosVitales.md) | Códigos empleados para registrar los diferentes signos vitales de un paciente en un servicio de urgencia. |
| [TerminologiasDiag](ValueSet-VSTerminologiasDiag.md) | TerminologiasDiag |
| [Tipo Egreso](ValueSet-tipo-egreso.md) | Corresponde a códigos asociados a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia. |
| [Tipo Participante Encuentro Urgencia](ValueSet-TipoParticipanteEncuentroUrgencia.md) | Códigos de los tipos de participante de un Encounter |
| [Título Profesional](ValueSet-TituloProfesional.md) | Códigos de los títulos profesionales de un profesional de la salud que participa de la atención de un paciente |
| [Unidad Hospitalaria Destino](ValueSet-unidad-hospitalaria-destino.md) | Códigos asociados a Unidad Funcional de destino si es que el paciente requiere hospitalización en el mismo establecimiento. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abandono](CodeSystem-abandono.md) | Códigos asociados al tipo de abandono del paciente desde urgencia. |
| [CSCategorizacionDiscrecional](CodeSystem-categorizacion-discrecional.md) | Códigos de categorización discrecional de pacientes en el sistema de salud chileno |
| [CSCategorizacionESI](CodeSystem-categorizacion-esi.md) | Códigos de categorización ESI de pacientes en el sistema de salud chileno |
| [CSCategorizacionNoRealizada](CodeSystem-categorizacion-no-realizada.md) | Código asociado a la categorización no realizada en el sistema de salud chileno |
| [CSCategorizacionUGO](CodeSystem-categorizacion-ugo.md) | Códigos de categorización Gineco-obstétrica (UGO) de pacientes en el sistema de salud chileno |
| [CSEventosUrgencia](CodeSystem-eventos-urgencia.md) | Códigos de eventos de urgencia |
| [Códigos de Urgencia](CodeSystem-CSCodigosUrgencia.md) | Códigos creados para registrar información dentro de la atención de urgencia |
| [Destino Fallecido](CodeSystem-destino-fallecido.md) | Códigos asociados a la situación final de los usuarios fallecidos durante la atención de urgencia. |
| [Destino Traslado](CodeSystem-destino-traslado.md) | Códigos asociados a destino de traslado del paciente desde urgencia. |
| [Especialidad Médica](CodeSystem-EspecialidadMedica.md) | Especialidades médicas reconocidas en el sistema de salud de Chile. |
| [Especialidad Odontológica](CodeSystem-especialidad-odontologica.md) | Especialidades odontológicas |
| [EstadoCivil](CodeSystem-CSEstadoCivil.md) | EstadoCivil |
| [Fallecido](CodeSystem-fallecido.md) | Códigos asociados al momento en que el paciente fallece en el servicio de urgencia. |
| [Indicación Alta](CodeSystem-indicacion-alta.md) | Códigos asociados al destino de alta dados por parte del profesional médico al usuario posterior a su atención de urgencia. |
| [Indicación Hospitalización](CodeSystem-indicacion-hospitalizacion.md) | Códigos asociados al destino de hospitalización dados por parte del profesional médico al usuario posterior a su atención de urgencia. |
| [Indicación Traslado Otro Centro](CodeSystem-indicacion-traslado-otro-centro.md) | Códigos correspondientes a la derivación o traslado del usuario a otro centro asistencial de salud, el cual puede ser o no perteneciente al Servicio Nacional de Salud. |
| [Lesión Autoinflingida](CodeSystem-lesion-autoinflingida.md) | Códigos de lesión autoinflingida |
| [Ley Previsional](CodeSystem-LeyPrevisional.md) | Códigos para la ley previsional |
| [Medio de Llegada](CodeSystem-MedioDeLlegada.md) | Corresponde a las posibles formas de llegada de un paciente a un servicio de atención de urgencia |
| [Procedencia](CodeSystem-Procedencia.md) | Corresponde al lugar físico desde donde proviene el paciente cuando consulta en un servicio de atención de urgencia |
| [Pueblos Originarios de Chile](CodeSystem-PueblosOriginariosCS.md) | Pueblos Originarios de Chile |
| [Relación Acompañante](CodeSystem-RelacionAcompanante.md) | Códigos asociados a la relación del acompañante con el paciente. |
| [Religion](CodeSystem-CSReligion.md) | Religion |
| [Tipo Egreso](CodeSystem-tipo-egreso.md) | Corresponde a códigos asociados a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia. |
| [Tipo Participante Urgencia](CodeSystem-TipoParticipanteUrgencia.md) | Tipo de participante en un evento de urgencia. |
| [Titulo Profesional](CodeSystem-TituloProfesional.md) | Códigos asociados a los títulos profesionales de los participantes en un encuentro de urgencia |
| [Unidad Hospitalaria Destino](CodeSystem-unidad-hospitalaria-destino.md) | Códigos asociados a Unidad Funcional de destino si es que el paciente requiere hospitalización en el mismo establecimiento. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Acompañante urgencia](RelatedPerson-bb7f34f7-8f4e-42c8-aa84-1f64bf584a05.md) | Persona que acompaña a un paciente en una situación de urgencia |
| [Alergia o Intolerancia](AllergyIntolerance-39d71be0-2eea-4672-ac70-73373a19e714.md) | Ejemplo de una alergia o intolerancia de un paciente. |
| [Anamnesis de paciente con dolor abdominal](Observation-7ea8cb9a-fc10-44ad-8c52-de03c4517b30.md) | Ejemplo de observación de la anamnesis de un paciente con dolor abdominal |
| [Bundle Admision](Bundle-Ej1BundleAdmision.md) | Ejemplo de recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia |
| [Bundle Atención](Bundle-EjBundleAtencion.md) | Ejemplo de recurso Bundle para la atención de pacientes en un servicio de atención de urgencia |
| [Bundle Categoriazación](Bundle-Ej1BundleCategorizacion.md) | Ejemlo de recurso Bundle para la categorización de pacientes en un servicio de atención de urgencia |
| [Bundle Egreso](Bundle-EjBundleEgreso.md) | Ejemplo de recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia |
| [Comorbilidad de Diabetes Mellitus](Condition-c08c94fd-bd58-4be8-bd1d-193441b4567e.md) | Ejemplo de condición diagnóstica de comorbilidad de diabetes mellitus en un paciente en un servicio de atención de urgencia. |
| [EjProfesionalAdministrativo](Practitioner-b9f6967f-51b5-49f4-8576-ce9f588523c2.md) | Ejemplo de recurso Practitioner para la admisión de pacientes en un servicio de atención de urgencia |
| [Ejemplo Encuentro Urgencia Egreso por Alta](Encounter-bd36a211-7b55-4ff7-905b-0dac7bf35aee.md) | Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por alta del paciente, utilizando la extensión Indicacion Alta. |
| [Ejemplo Encuentro Urgencia Egreso por Defunción](Encounter-e383a62a-628f-4408-b98f-5e5914869bfe.md) | Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por defunción del paciente, utilizando la extensión Fallecido. |
| [Ejemplo Encuentro Urgencia Egreso por Derivación](Encounter-fbce23ed-b195-47a2-81a2-be4aaf11b038.md) | Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por derivación o traslado a otro centro asistencial, utilizando la extensión IndicacionDerivacion. |
| [Ejemplo de un profesional TENS de urgencia](Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.md) | Ejemplo de un profesional que de un servicio de urgencia |
| [Ejemplo de un profesional especialista de urgencia](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md) | Ejemplo de un profesional que atiende en un servicio de urgencia |
| [Ejemplo de un profesional médico de urgencia](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md) | Ejemplo de un profesional que atiende en un servicio de urgencia |
| [Ejemplo de una organización de establecimiento](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md) | Ejemplo de una organización con un establecimiento de salud |
| [Encuentro Urgencia](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md) | Ejemplo de recurso Encounter con información que debería contener para indicar las atenciones de un paciente en un servicio de urgencia |
| [Encuentro Urgencia Abandono](Encounter-4c9a3e03-a907-492e-b69c-710cb8c42347.md) | Ejemplo de recurso Encounter con registro de abandono de atención de un paciente en un servicio de urgencia |
| [Evolución clínica de paciente con dolor abdominal](Observation-3d07043e-adc5-4047-a309-26e2c38ab074.md) | Ejemplo de observación de la evolución clínica de un paciente con dolor abdominal |
| [Hipótesis Diagnóstica de Dolor Abdominal](Condition-e27704ff-fa1a-4750-9d23-36ce567f35b0.md) | Ejemplo de condición hipótesis diagnóstica de dolor abdominal en un paciente en un servicio de atención de urgencia. |
| [Indicaciones Plan de Cuidados](CarePlan-23eb67e4-4fd5-4315-963a-3c5e63fff3a5.md) | Ejemplo de un plan de cuidados con indicaciones al término de una atención de urgencia |
| [Medicación Administrada en Urgencia](MedicationAdministration-716cd145-cd36-4935-9351-263d4e43f3da.md) | Ejemplo de administración de medicación en un servicio de atención de urgencia |
| [Observación Lesión Auto Infligida](Observation-70763f44-cded-482d-9afc-05894c7615c9.md) | Ejemplo de observación que registra si el paciente ha sufrido una lesión auto infligida |
| [Observación Medico Legal Examen Toxicológico](Observation-535e0438-315b-4291-b5cc-4469cef1ffb6.md) | Ejemplo de observación que registra la fecha y hora en que se realiza un examen toxicológico |
| [Observación Medico Legal Riesgo Vital o Secuela Grave](Observation-8bac861c-c8cc-48fa-a37c-14eeb054974f.md) | Ejemplo de observación que registra la fecha y hora de la certificación de riesgo vital o secuela grave |
| [Observación Medico Legal Violencia Sexual](Observation-80d57f5d-fde9-4df3-95b8-4f223428659c.md) | Ejemplo de observación que registra la fecha y hora de la realización del informe de violencia sexual |
| [Observación Médico Legal Alcoholemia](Observation-39b30e0d-76d2-4ec1-b047-6c2a13291863.md) | Ejemplo de observación que registra la fecha y hora de la toma de alcoholemia |
| [Observación Médico Legal Lesiones](Observation-813c8069-e56d-42a9-b2c8-91b11703c13e.md) | Ejemplo de observación que registra la fecha y hora de la realización del informe de lesiones |
| [Observación Reconsulta Urgencia](Observation-d00b0ce5-aee0-475d-8028-a360f60b810c.md) | Ejemplo de observación que registra si el paciente ha tenido un evento de urgencia previo en el período de 15-21 días |
| [Observación Resultado Examen](Observation-aeb13c46-8eb3-4b8f-9bc2-e3d57024cb86.md) | Ejemplo de observación que registra el resultado de un examen |
| [Observación Signos Vitales - Peso](Observation-3d609e5a-730d-4a32-947c-e632253fa5ff.md) | Ejemplo de observación de signos vitales de un paciente en un servicio de urgencia - Peso. |
| [Observación Signos Vitales - Pulso](Observation-d01f4e15-7f0a-49cf-b5a7-e7dd717526d2.md) | Ejemplo de observación de signos vitales de un paciente en un servicio de urgencia - Pulso. |
| [Observación de hospitalización reciente](Observation-447eef01-d4b1-4312-9c4f-c34ca46dce11.md) | Observación que registra si el paciente ha sido hospitalizado recientemente |
| [Paciente Urgencia con datos básicos](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md) | Ejemplo de un paciente de urgencia con datos básicos |
| [Procedimiento](Procedure-dc28ac35-92d9-495c-b97f-78ce3733c671.md) | Ejemplo de recurso Procedure para el registro de un procedimiento realizado a un paciente |
| [Solicitud de Examen de Laboratorio](ServiceRequest-b8b2b855-e554-40ef-98fe-55a07556fc48.md) | Ejemplo de solicitud de exámen de laboratorio para un paciente |

