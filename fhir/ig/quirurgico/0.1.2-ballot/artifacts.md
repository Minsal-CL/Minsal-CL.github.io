# Artifacts Summary - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md) | AllergyIntolerance Iniciar LE |
| [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md) | Appointment Agendar LE |
| [Bundle Agendar Cirugía LE](StructureDefinition-BundleAgendarCirugiaLE.md) | Recurso Bundle Agendar Cirugía LE que se utiliza para representar el agendamiento de la cirugía. |
| [Bundle Agendar Entrevista LE](StructureDefinition-BundleAgendarEntrevistaLE.md) | Recurso Bundle Agendar Entrevista LE que se utiliza para representar el agendamiento de la entrevista prequirúrgica. |
| [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md) | Recurso Bundle Atender LE que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico. |
| [Bundle Cierre LE](StructureDefinition-BundleCierreLE.md) | Recurso Bundle Cierre LE que se utiliza para representar el cierre de la solicitud de cirugía. |
| [Bundle Cirugía LE](StructureDefinition-BundleCirugiaLE.md) | Recurso Bundle Cirugía LE que se utiliza para representar la entrevista prequirúrgica. |
| [Bundle Entrevista LE](StructureDefinition-BundleEntrevistaLE.md) | Recurso Bundle Entrevista LE que se utiliza para representar la entrevista prequirúrgica. |
| [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md) | Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico |
| [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md) | Encounter Atender LE recurso que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico. |
| [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md) | Encounter Entrevista LE recurso que se utiliza para representar el encuentro que se realiza para la entrevista pre-quirúrgica con el paciente. |
| [MedicationStatement LE](StructureDefinition-MedicationStatementLE.md) | Recurso utilizado para representar la información de medicamentos que el paciente está consumiendo. |
| [Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md) | Observation Anamnesis LE |
| [Observation Notas Clinicas LE](StructureDefinition-ObservationNotasClinicasLE.md) | Observation Notas Clinicas LE |
| [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md) | Resultado de examen anterior como antecedente |
| [Organization LE](StructureDefinition-OrganizationLE.md) | Organization LE según[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [Patient LE](StructureDefinition-PatientLE.md) | Paciente definido para el Registro Maestro de Pacientes |
| [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md) | PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud. |
| [Prestador Administrativo LE](StructureDefinition-PractitionerAdministrativoLE.md) | Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |
| [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md) | Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |
| [Procedure Cirugia LE](StructureDefinition-ProcedureCirugiaLE.md) | Recursos que se utilizan para representar la intervención quirúrgica realizada al paciente. |
| [ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md) | ServiceRequest Cirugia LE recurso utilizado para la representación de los datos de la solicitud de cirugía. |
| [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md) | ServiceRequestExamen LE recurso utilizado para la representación de la solicitud de examen |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [En Condicion Cirugia](StructureDefinition-EnCondicionCirugia.md) | En Condicion Cirugia |
| [Extension ContactadoLE](StructureDefinition-Contactado.md) | Extension ContactadoLE |
| [Extension Resultado Evaluación Pre-Qx](StructureDefinition-ExtensionResultadoEvaluacionPreQx.md) | Extensión para representar el resultado de la evaluación pre-quirúrgica. |
| [Extension String Fundamento Priorizacion](StructureDefinition-ExtensionStringFundamentoPriorizacion.md) | Extensión para fundamenta la priorización de la solicitud de cirugía |
| [Extension Tipo Priorización](StructureDefinition-ExtensionTipoPriorizacion.md) | Extensión para representar el tipo de priorización de la solicitud de cirugía. |
| [Medio de Contacto](StructureDefinition-ExtensionMediodeContacto.md) | Medio de Contacto |
| [Mención profesional añadida al título profesional](StructureDefinition-Mencion.md) | Mención profesional obtenida junto con el título, dato que se agrega en texto lible |
| [Motivo Cierre Solicitud Cirugía](StructureDefinition-ExtensionMotivoCierreSolicitudCirugia.md) | Extensión utilizada para la representación de los datos del motivo por el cual se cierra la solicitud de cirugía. |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | País de origen del paciente |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | Pueblos Afrodescendiente |
| [Pueblos Originarios](StructureDefinition-PueblosOriginarios.md) | Almacenar si el paciente pertenece a algun pueblo originario |
| [Pueblos Originarios Perteneciente](StructureDefinition-PueblosOriginariosPerteneciente.md) | Pueblos Originarios Perteneciente |
| [Religión](StructureDefinition-Religion.md) | Religión |
| [Requirió Comite](StructureDefinition-RequirioComite.md) | Extension para indicar si se requirió comité |
| [Situacion Calle](StructureDefinition-SituacionCalle.md) | Situacion Calle |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Condición Salida Cirugía](ValueSet-VSCondicionSalidaCirugia.md) | Condición Salida Cirugía |
| [Códigos de Examenes](ValueSet-CodigoExamen.md) | Codigos de Examenes |
| [EspecialidadMed](ValueSet-VSEspecialidadMed.md) | EspecialidadMed |
| [Especialidades Odontológicas](ValueSet-VSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Establecimiento Destino Codigo](ValueSet-VSEstablecimientoDestino.md) | Establecimiento destino códigos de ejemplo hechos en base a este documento con los[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [EstadoCivil](ValueSet-VSEstadoCivil.md) | EstadoCivil |
| [IdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md) | IdentificadorPrestador |
| [Medio Notificación](ValueSet-VSMediodeContacto.md) | Medio Notificación |
| [Modalidad Atencion Codigo](ValueSet-VSModalidadAtencionCodigo.md) | Modalidad Atencion Codigo |
| [Motivo Cierre Solicitud Cirugía](ValueSet-VSMotivoCierreSolicitudCirugia.md) | Motivo Cierre Solicitud Cirugía |
| [Motivo No Contactabilidad](ValueSet-VSMotivoNoContactabilidad.md) | Motivo No Contactabilidad |
| [Motivo Suspensión Cirugía](ValueSet-VSMotivoSuspencionCirugia.md) | Motivo Suspensión Cirugía |
| [Pueblos Originarios de Chile](ValueSet-PueblosOriginariosVS.md) | Pueblos Originarios de Chile |
| [Religion](ValueSet-VSReligion.md) | Religion |
| [Resultado Evaluación Pre Quirúrgica](ValueSet-VSResultadoEvaluacionPreQuirurgica.md) | Códigos de resultado de la evaluación pre quirúrgica |
| [Rol de profesionales](ValueSet-VSPractitionerTipoRolLE.md) | Rol de profesionales(Practitioner) en algún evento, durante la intercosulta. |
| [TerminologiasDiag](ValueSet-VSTerminologiasDiag.md) | TerminologiasDiag |
| [Tipo Agendamiento](ValueSet-VSTipoAgendamiento.md) | Tipo Agendamiento |
| [Tipo Cirugía Propuesta](ValueSet-VSTipoCirugiaPropuesta.md) | Tipo Cirugía Propuesta |
| [Tipo Consulta](ValueSet-VSTipoConsulta.md) | Tipo Consulta |
| [Tipo Priorización](ValueSet-VSTipoPriorizacion.md) | Tipo Priorización |
| [Tipo Servicio Agendamiento](ValueSet-VSTipoServicioAgendamiento.md) | Tipo Servicio Agendamiento |
| [Tipo de Observación](ValueSet-TipoDeObservacion.md) | Estas son algunas de las observaciones que se pueden realizar en un encuentro, que permiten dar antecedentes a la interconsulta. |
| [TituloProfesional](ValueSet-VSTituloProfesional.md) | TituloProfesional |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Condición Salida Cirugía](CodeSystem-CSCondicionSalidaCirugia.md) | Condición Salida Cirugía |
| [EspecialidadMed](CodeSystem-CSEspecialidadMed.md) | EspecialidadMed |
| [Especialidades Odontológicas](CodeSystem-CSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Establecimiento Destino Código](CodeSystem-CSEstablecimientoDestino.md) | Establecimiento destino código ejemplos hechos en base a este documento con los[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [EstadoCivil](CodeSystem-CSEstadoCivil.md) | EstadoCivil |
| [Medio Notificación](CodeSystem-CSMediodeContacto.md) | Medio Notificación |
| [Modalidad Atencion Codigo](CodeSystem-CSModalidadAtencionCodigo.md) | Modalidad Atencion Codigo |
| [Motivo Cierre Solicitud Cirugía](CodeSystem-CSMotivoCierreSolicitudCirugia.md) | Motivo Cierre Solicitud Cirugía |
| [Motivo No Contactabilidad](CodeSystem-CSMotivoNoContactabilidad.md) | Motivo No Contactabilidad |
| [Motivo Suspensión Cirugía](CodeSystem-CSMotivoSuspencionCirugia.md) | Motivo Suspensión Cirugía |
| [Pueblos Originarios de Chile](CodeSystem-PueblosOriginariosCS.md) | Pueblos Originarios de Chile |
| [Religion](CodeSystem-CSReligion.md) | Religion |
| [Resultado Evaluación Pre Quirúrgica](CodeSystem-CSResultadoEvaluacionPreQuirurgica.md) | Códigos de resultado de la evaluación pre quirúrgica |
| [Rol de profesionales](CodeSystem-CSPractitionerTipoRolLE.md) | CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la lista de espera quirúrgica |
| [Tipo Agendamiento](CodeSystem-CSTipoAgendamiento.md) | Tipo Agendamiento |
| [Tipo Cirugía Propuesta](CodeSystem-CSTipoCirugiaPropuesta.md) | Códigos de tipo de cirugía propuesta |
| [Tipo Consulta](CodeSystem-CSTipoConsulta.md) | Tipo Consulta |
| [Tipo Priorización](CodeSystem-CSTipoPriorizacion.md) | Tipo Priorización |
| [Tipo Servicio Agendamiento](CodeSystem-CSTipoServicioAgendamiento.md) | Tipo Servicio Agendamiento |
| [Tipo de Observación](CodeSystem-CSTipoObservacionMinsal.md) | Son todos los tipos de observaciones dadas por el Ministerio De Salud |
| [TituloProfesional](CodeSystem-CSTituloProfesional.md) | TituloProfesional |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Agendamiento cirugía](Appointment-0708a908-fc3a-48ea-90e7-b5cd0e516e30.md) | Ejemplo de agendamiento de cirugía |
| [Agendamiento entrevista pre quirúrgica](Appointment-76adaeb4-4885-4aa6-96c1-13b9df9a61d7.md) | Ejemplo de agendamiento de entrevista pre quirúrgica |
| [Bundle Agendar Cirugía LE](Bundle-EjBundleAgendarCirugia.md) | Ejemplo de Bundle Agendar Cirugía LE que se utiliza para representar el agendamiento de la cirugía. |
| [Bundle Agendar Entrevista LE](Bundle-EjBundleAgendarEntrevista.md) | Ejemplo de Bundle Agendar Entrevista LE |
| [Bundle Atender LE](Bundle-EjBundleAtender.md) | Ejemplo de Bundle Atender LE |
| [Bundle Cierre LE](Bundle-EjBundleCierre.md) | Ejemplo de Bundle Cierre LE |
| [Bundle Cirugía LE](Bundle-EjBundleCirugia.md) | Ejemplo de Bundle Cirugía LE |
| [Bundle Entrevista LE](Bundle-EjBundleEntrevista.md) | Ejemplo de Bundle Entrevista LE |
| [Cirugía Hernia Ventral](Procedure-abfca780-745d-4c35-ae8a-fd0dbc3a9b16.md) | Ejemplo de una cirugía de hernia ventral |
| [Ejemplo de Alergia](AllergyIntolerance-8f627a17-27f4-4519-9ff7-4f1da6f0eef2.md) | Registro de alergia a la amoxicilina |
| [Ejemplo de Condition Diagnostico LE](Condition-b97a87f6-060d-48de-9e4d-db93518fd278.md) | Ejemplo de un recurso Condition Diagnostico LE |
| [Ejemplo de Paciente](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md) | Ejemplo de Paciente para lista de espera quirúrgica |
| [Ejemplo de una organización de establecimiento](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md) | Ejemplo de una organización con un establecimiento de salud |
| [Encounter Atender LE](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md) | Ejemlo de Encounter Atender LE |
| [Encounter Entrevista LE](Encounter-6c7dae68-552d-44cb-b414-e5024ae8e0a0.md) | Ejemplo de Encounter Entrevista LE |
| [Enfermera](Practitioner-2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210.md) | Ejemplo de un profesional de enfermería |
| [MedicationStatement LE](MedicationStatement-d853623b-9ad4-4ceb-8d25-09facfa877e3.md) | Ejemplo de MedicationStatement LE |
| [Médico Cirujano Gastroenterólogo](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md) | Ejemplo de un profesional médico cirujano con especialidad en gastroenterología adulto |
| [Observation Anamnesis](Observation-6f81d435-c6ca-4a73-9a59-2d89bc9b7e71.md) | Ejemplo de Observation Anamnesis |
| [Observation Notas Clinicas](Observation-913614cd-2069-49be-a1d8-0bc0cdacd5f2.md) | Ejemplo de Observation Notas Clinicas |
| [Observation Resultado Examen](Observation-de52c7f4-7022-4aab-9e7e-968fc792a9a4.md) | Ejemplo de un resultado de examen anterior como antecedente |
| [PractitionerRole Atendedor LE](PractitionerRole-4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa.md) | Ejemplo de PractitionerRole Atendedor LE |
| [PractitionerRole Entrevistador LE](PractitionerRole-0e5c9353-5f8e-4801-b7fc-59395f14344c.md) | Ejemplo de PractitionerRole Entrevistador LE |
| [PractitionerRole Entrevistador LE](PractitionerRole-2b238804-f4bd-4005-82d2-9777aa09bea8.md) | Ejemplo de PractitionerRole Entrevistador LE |
| [PractitionerRole Indicador LE](PractitionerRole-96f2b566-b17b-4e4e-ada0-3986748990ee.md) | Ejemplo de PractitionerRole Indicador LE |
| [PractitionerRole Planificador LE](PractitionerRole-ec19af63-cab4-46b5-a5d7-8df62f596e41.md) | Ejemplo de PractitionerRole Planificador LE |
| [PractitionerRole Terminador LE](PractitionerRole-5a4ca080-8d59-4409-92f3-e6fc1eb855d6.md) | Ejemplo de PractitionerRole Terminador LE |
| [ServiceRequest Cirugía LE](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md) | Ejemplo de ServiceRequest Cirugía LE |
| [Solicitud Examen](ServiceRequest-aecacd57-d7cf-4cb7-8bfd-339dc53d6e83.md) | Ejemplo de Solicitud Examen |

