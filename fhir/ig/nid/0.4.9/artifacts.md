# Artefactos Generados - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* **Artefactos Generados**

## Artefactos Generados

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Administrador del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Manager.md) | El CapabilityStatement del administador del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.* Uso de FHIR R4
* Uso **PUEDE** devolver el recurso en JSON o XML
* **DEBE** Soportar Perfil "Prestador Administrativo", "Prestador Individual" y "Prestador Organizacional"
* Los parámetros de búsquedas de los Perfiles Practitioner **DEBEN** ser: 
* _id
* identifier
* family
* given
* identifier
 
* Los parámetros de búsquedas del Perfil Organization **DEBEN** ser: 
* _id
* identifier
* name
 
 |
| [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md) | El CapabilityStatement del administador del Indice Maestro Paciente debe cumplir con las siguientes especificiones normadas.* Uso de FHIR R4
* Uso **PUEDE** devolver el recurso en JSON o XML
* **DEBE** Soportar Perfil MINSAL Paciente
* **DEBE** Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
* Los parámetros de búsquedas **DEBEN** ser: 
* _id
* active
* family
* given
* identifier
* segundo-apellido
* segundo-apellido:exact
 
* **DEBE** soportar los _revinclude que permitan traer la información adicional requerida.
* **DEBE** soportar el uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix) descrita en está guía.
* **DEBE** soportar el uso de la operación [$match](OperationDefinition-MPI.PDQm.match.md) descrita en está guía.
 |
| [Consumidor del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Consumer.md) | El CapabilityStatement de los requisitos del consumidor del directorio de proveedores de atención médica expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Profesionales.* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Soportar Perfiles de Prestador Administrativo, Prestador Profesional y Prestador Institucional
* Los parámetros de búsquedas de los Perfiles Practitioner **PUEDEN** ser: 
* _id
* identifier
* family
* given
* identifier
 
* Los parámetros de búsquedas del Perfil Organization **PUEDEN** ser: 
* _id
* identifier
* name
* type
 
 |
| [Indice Maestro Paciente: "Cliente Buscador PIXm"](CapabilityStatement-MPI.IHE.PIXm.Buscador.md) | El CapabilityStatement del Actor Cliente Buscador MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa.* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix)
 |
| [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.md) | El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes mediante la operación Match.* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Los parámetros de entrada y salida deben ser conforme a los perfiles MPI Paciente
* Invoca la operación $match en un endpoint FHIR
 |
| [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.md) | El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes.* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Soportar Perfil MINSAL Paciente
* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
* Los parámetros de búsquedas **PUEDEN** ser: 
* _id
* active
* family
* given
* identifier
* segundo-apellido
 
* **PUEDE** soportar los _revinclude que permitan traer la información adicional requerida.
 |
| [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) | El CapabilityStatement del Actor Cliente de Origen del MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa.* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso condicional para actualizar Paciente
* Soportar Perfil MINSAL Paciente
* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
 |
| [Origen del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Source.md) | El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso condicional del Perfil "Prestador Administrativo", "Prestador Individual" y "Prestador Organizacional"
 |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MPI PDQm $Match](OperationDefinition-MPI.PDQm.match.md) | Operación compatible con la operación[$match](http://hl7.org/fhir/R4/patient-operation-match.html)del estandar y la del operación[$match](https://profiles.ihe.net/ITI/PDQm/OperationDefinition-PDQmMatch.html)del PDQm. Los únicos cambios son restringir los parámetros de entrada para usar el perfil de[Paciente MPI Busqueda](./StructureDefinition-MINSALPacienteBusqueda.md)para el perfil de Entrada de $match y restringir los parámetros de salida para usar el perfil de[Paciente MPI](./StructureDefinition-MINSALPaciente.md)cuya respuesta es el[MINSAL Bundle Resultado Operación Match](./StructureDefinition-BundleSearchMPIMatch.md). |
| [Operación para Obtener Identificadores Correspondientes](OperationDefinition-MPI.PIXm.pix.md) | Operación compatible con la[$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition-IHE.PIXm.pix.html)para obtener los identificadores correspondientes de cada recurso paciente* Input: sourceIdentifier, targetSystem, and _format
* Output: targetIdentifier, targetId
 |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [Busqueda Paciente por Segundo Apellido](SearchParameter-mpi-paciente-segundoApellido.md) | Regresa los pacientes que cumplan con el criterio de segundo apellido. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md) | Información sobre una persona que participa en la atención a un paciente, pero que no es el destinatario de la asistencia sanitaria ni tiene una responsabilidad formal en el proceso asistencial. |
| [MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md) | Agrupación por marcas |
| [MINSAL Bundle Resultado Consulta: Pacientes](StructureDefinition-BundleSearchMPI.md) | Bundle resultado de una busqueda de un recurso paciente mediante parámetros |
| [MINSAL Bundle Resultado Consulta: Prestadores Institucinales](StructureDefinition-BundleSearchINSHPD.md) | Bundle resultado de una busqueda de un recurso "Organization" mediante parametros |
| [MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos](StructureDefinition-BundleSearchProfHPD.md) | Bundle resultado de una busqueda de un recurso "Practitioner" mediante parámetros. Se debe incluir el Parámetro de "_profile" e incluir la url canonica del perfil[Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)o[Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md), esto permite especificar la busqueda según cada tipo de profesional. |
| [MINSAL Bundle Resultado Operación Match](StructureDefinition-BundleSearchMPIMatch.md) | Bundle resultado de una busqueda de un recurso paciente mediante la operación[$match](OperationDefinition-MPI.PDQm.match.md) |
| [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md) | Recurso para almacenar la cobertura del paciente |
| [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md) | Nivel Educacional como dato estadistico para el ingreso de un paciente en el sistema. |
| [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md) | Ocupación laboral de un paciente, como dato estadistico requerido para el ingreso del paciente al sistema. |
| [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) | Paciente definido para el Registro Maestro de Pacientes |
| [MINSAL Paciente Busqueda](StructureDefinition-MINSALPacienteBusqueda.md) | Paciente definido para la busqueda dentro del "Indice Maestro de Pacientes". Este es utilizado en la operación $match como parámetro de entrada. |
| [MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md) | Describe de manera simplificada la situacion de discapacidad de un paciente. |
| [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md) | Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |
| [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md) | Organization según[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md) | Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Dirección del Paciente](StructureDefinition-NIDAddress.md) | Dirección especificada para el paciente Minsal. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Mención profesional añadida al título profesional](StructureDefinition-Mencion.md) | Mención profesional obtenida junto con el título, dato que se agrega en texto lible |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | País de origen del paciente |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | Pueblos Afrodescendiente |
| [Pueblos Originarios](StructureDefinition-PueblosOriginariosMPI.md) | Extensión para describir si el paciente pertenece algún pueblo originario |
| [Religión](StructureDefinition-Religion.md) | Religión |
| [Situacion Calle](StructureDefinition-SituacionCalle.md) | Situacion Calle |
| [Valor de la Clase](StructureDefinition-ValorDeLaClase.md) | Da el valor de class del Coverage, de manera codificada |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Calificación Previsional](ValueSet-VScalificacionPrevisional.md) | Calificación Previsional |
| [Clase de Cobertura de Salud](ValueSet-VSClasesDeCobertura.md) | Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación. |
| [Componentes de Observación de Discapacidad](ValueSet-VSComponenteDiscapacidad.md) | Diferenciación entre los componentes de la observación de discapacidad |
| [Códigos de Países para NID](ValueSet-vs-codigos-paises-nid.md) | códigos de países según norma ISO 3166-1, para uso en NID (Identificador Nacional de Paciente) |
| [Especialidades Farmaceúticas o Química Farmaceúticas](ValueSet-VSEspecialidadFarma.md) | Especialidades Farmaceúticas o Química Farmaceúticas |
| [Especialidades Médicas](ValueSet-VSEspecialidadMed.md) | Especialidades Médicas |
| [Especialidades Odontológicas](ValueSet-VSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Especialidades y Subespecialidades Bioquímicas](ValueSet-VSEspecialidadBioqca.md) | Especialidades y Subespecialidades Bioquímicas |
| [Estado Civil](ValueSet-VSEstadoCivil.md) | Estado Civil |
| [Grupo Marcas](ValueSet-VSGrupoMarcas.md) | Diferenciación entre los posibles grupos dentro del MPI |
| [Identidad De Género](ValueSet-VSIdentidadDeGenero.md) | Identidad De Género |
| [Identificador del Prestador](ValueSet-VSIdentificadorPrestador.md) | Identificador del Prestador Profesional o Administrativo |
| [Leyes Previsionales](ValueSet-VSLeyPrevisionales.md) | Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva |
| [Leyes Reparación](ValueSet-VSLeyReparacion.md) | Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva |
| [Medios de Comunicación con el Paciente](ValueSet-VSSistemasComunicacion.md) | Este es un filtro del "system" del telecom del paciente solo para que se ocupen los indicados por normativa |
| [Nivel Educacional Descripción](ValueSet-VSNivelEducacionalDesc.md) | Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación |
| [Ocupaciones Detalladas](ValueSet-VSOcupacionesDet.md) | Código asociados a el detalle de las ocupaciones de un paciente |
| [Origen Discapacidad](ValueSet-VSOrigenDiscapacidad.md) | Origen Discapacidad |
| [Previsión](ValueSet-VSPrevision.md) | Previsión |
| [Pueblos Originarios de Chile](ValueSet-PueblosOriginariosVS.md) | Pueblos Originarios de Chile |
| [Religión](ValueSet-VSReligion.md) | Religión |
| [Tipo Identificador](ValueSet-VSTipoIdentificador.md) | Tipo Identificador |
| [Tipo de Observacion](ValueSet-VSTipoObservacion.md) | Codificación para identificar las distintas observaciones existentes dentro del MPI |
| [Tipos de Identificadores de Paciente](ValueSet-VSTiposIdentificadorPaciente.md) | Tipos de Identificadores de Paciente |
| [Tramos de FONASA](ValueSet-VSTramosFONASA.md) | Tramos de FONASA |
| [Título Profesional](ValueSet-VSTituloProfesional.md) | Título del Prestador Profesional |
| [Valoracion Desempeño](ValueSet-VSValoracionDesempeno.md) | Valoracion Desempeño |
| [Último nivel aprobado](ValueSet-VSUNivelAprob.md) | Código del último nivel aprobado |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Calificación Previsional](CodeSystem-CScalificacionPrevisional.md) | Calificación Previsional |
| [Clase de Cobertura de Salud](CodeSystem-CSClasesDeCobertura.md) | Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación. |
| [Componentes de Observación de Discapacidad](CodeSystem-CSComponenteDiscapacidad.md) | Diferenciación entre los componentes de la observación de discapacidad |
| [Especialidades Farmaceúticas o Química Farmaceúticas](CodeSystem-CSEspecialidadFarma.md) | Especialidades Farmaceúticas o Química Farmaceúticas |
| [Especialidades Médicas](CodeSystem-CSEspecialidadMed.md) | Especialidades Médicas |
| [Especialidades Odontológicas](CodeSystem-CSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Especialidades y Subespecialidades Bioquímicas](CodeSystem-CSEspecialidadBioqca.md) | Especialidades y Subespecialidades Bioquímicas |
| [Estado Civil](CodeSystem-CSEstadoCivil.md) | Estado Civil |
| [Grupo Marcas](CodeSystem-CSGrupoMarcas.md) | Diferenciación entre los posibles grupos dentro del MPI |
| [Identidad De Género](CodeSystem-CSIdentidadDeGenero.md) | Identidad De Género |
| [Leyes Previsionales](CodeSystem-CSLeyPrevisionales.md) | Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva |
| [Leyes Reparación](CodeSystem-CSLeyReparacion.md) | Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva |
| [Nivel Educacional Descripción](CodeSystem-CSNivelEducacionalDesc.md) | Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación |
| [Ocupaciones Detalladas](CodeSystem-CSOcupacionesDet.md) | Código asociados a el detalle de las ocupaciones de un paciente |
| [Origen Discapacidad](CodeSystem-CSOrigenDiscapacidad.md) | Origen Discapacidad |
| [País Desconocido](CodeSystem-cs-pais-desconocido.md) | Código para país desconocido |
| [Previsión](CodeSystem-CSPrevision.md) | Previsión |
| [Pueblos Originarios de Chile](CodeSystem-PuebloOriginarioCS.md) | Pueblos Originarios de Chile |
| [Religión](CodeSystem-CSReligion.md) | Religión |
| [Tipo Identificador](CodeSystem-CSTipoIdentificador.md) | Tipo Identificador |
| [Tipo Observacion](CodeSystem-CSTipoObservacion.md) | Codificación para identificar las distintas observaciones existentes dentro del MPI |
| [Tramos de FONASA](CodeSystem-CSTramosFONASA.md) | Tramos de FONASA |
| [Título Profesional](CodeSystem-CSTituloProfesional.md) | Título del Prestador Profesional |
| [Valoracion Desempeno](CodeSystem-CSValoracionDesempeno.md) | Valoracion Desempeno |
| [Último nivel aprobado](CodeSystem-CSUNivelAprob.md) | Código del último nivel aprobado |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR](ConceptMap-MPIMaritalStatusMap.md) | Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Acompañante de un Paciente](RelatedPerson-EjemploAcompanate.md) | Padre de una paciente dentro del Maestro Paciente |
| [Agrupacion Marcas](Group-AgrupacionMarcas.md) | Agrupación de pacientes que están con la condición de TEA |
| [Ejemplo de Cobertura FONASA](Coverage-CoberturaFONASAEjemplo.md) | Ejemplo de la cobertura FONASA de un paciente |
| [Ejemplo de Paciente para Busqueda](Patient-EjemploPacienteBusqueda.md) | Este un ejemplo del recurso "MINSAL Paciente Busqueda", el cual es útilizado para buscar pacientes dentro del MPI utilizando la operación[$match](OperationDefinition-MPI.PDQm.match.md). |
| [Ejemplo de una Busqueda](Bundle-EjemploBusqueda.md) | Ejemplo del resultado de una busqueda de paciente según los parámetros de run, nacimiento y nombre |
| [Ejemplo de una Busqueda Match](Bundle-EjemploBusquedaMatch.md) | Ejemplo del resultado de una busqueda de paciente según el parámetro de busqueda de una operación[$match](OperationDefinition-MPI.PDQm.match.md). |
| [Ejemplo de una Busqueda Match con OperationOutcome](Bundle-EjemploBusquedaMatchOutcomeOperation.md) | Ejemplo del resultado de una busqueda de paciente según el parámetro de busqueda de una operación[$match](OperationDefinition-MPI.PDQm.match.md), el cual entrego un OperationOutcome por timeout. |
| [Ejemplo de una Búsqueda de Prestador Administrativo](Bundle-EjemploBusquedaAdm.md) | Ejemplo del resultado de una búsqueda de administrativo según los parámetros de run, nacimiento y nombre |
| [Ejemplo de una Búsqueda de Prestador Institucional](Bundle-EjemploBusquedaOrg.md) | Ejemplo del resultado de una búsqueda de una organización según los parametros de código deis y nombre |
| [Ejemplo de una Búsqueda de Prestador Profesional](Bundle-EjemploBusquedaProf.md) | Ejemplo del resultado de una búsqueda de profesional según los parametros de run, nacimiento y nombre |
| [FONASA](Organization-FONASA.md) | Información del Fondo Nacional de Salud |
| [Hospital de Ejemplo](Organization-OrganizationLEEjemplo.md) | Ejemplo de un prestador institucional |
| [Nivel Educacional de un Paciente](Observation-EjemploNivelEducacional.md) | Nivel Educacional de un Paciente registrado como dato estadistico en un recinto de salud, requerido en el ingreso de él en el sistema. |
| [Ocupación de un Paciente](Observation-EjemploOcupacion.md) | Ejemplo del trabajo que cumple como dato estadistico requerido al momento de realizar el ingreso a la atención. |
| [Paciente Ejemplo MPI](Patient-MinsalPacienteEjemplo.md) | Ejemplo de un paciente dentro del Indice Maestro del Paciente. |
| [Paciente Ejemplo MPI Duplicado](Patient-DuplicadoMPIPaciente.md) | Este paciente se encuentra duplicado pero con información adicional y que no existe en otro sistema. |
| [Profesional Administrativo de Ejemplo](Practitioner-EjemploPractiAdmin.md) | Ejemplo de un profesional que es administrativo |
| [Profesional de Salud de Ejemplo](Practitioner-EjemploPractiProf.md) | Ejemplo de un profesional que entrega servicios de salud |
| [Situacion Discapacidad de un Paciente](Observation-EjemploSituacionDiscapacidad.md) | Describe de manera simplificada la situacion de discapacidad de un paciente. En este caso una visual |

