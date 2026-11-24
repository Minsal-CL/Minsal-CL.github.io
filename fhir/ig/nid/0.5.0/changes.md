# Historial de Cambios - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* **Historial de Cambios**

## Historial de Cambios

### Versión 0.5.0

Versión construida sobre la 0.4.9, con CL Core 1.9.4 y EIS 0.2.1 como dependencias.

* Dependencias: EIS 0.2.1, corrección técnica de la 0.2.0 que arregla el ValueSet de regiones que usa la dirección; terminology 7.3.0 y extensions 5.3.0, que son las versiones de EIS; IHE PIXm 3.1.0 y PDQm 3.2.0, que son las de la publicación 0.4.9.
* Terminología de EIS en lugar de la propia de NID: religión, país de origen, pueblos originarios, estado civil, tipo de identificador del paciente, nacionalidad, país de emisión del documento, sexo biológico, título profesional, especialidades, previsión, tramos FONASA, ocupación y origen de la discapacidad. Los CodeSystem y ValueSet propios de NID se mantienen.
* El [mapa de estado civil](ConceptMap-MPIMaritalStatusMap.md) parte del CodeSystem de estado civil de EIS.
* Los ejemplos usan los códigos de EIS.
* Perfiles nuevos del modelo transversal de organizaciones y lugares que piden las guías que dependen de NID: [MINSAL Organización](StructureDefinition-MINSALOrganizacion.md), [MINSAL Localización](StructureDefinition-MINSALLocalizacion.md), [MINSAL Rol Profesional](StructureDefinition-MINSALRolProfesional.md) y [MINSAL Resolución Sanitaria](StructureDefinition-MINSALResolucionSanitaria.md), que autoriza instalaciones o actividades en las localizaciones. Incluyen la terminología de clase de organización, tipo de recinto, autorización sanitaria, actividad autorizada y estado de la resolución, y los NamingSystems de RUT, DEIS, MIDAS y SAFIS.
* [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md) deriva de MINSAL Organización: código DEIS obligatorio, clase `establecimiento-asistencial`, tipo de establecimiento de EIS y código del establecimiento madre DEIS, como lo usan las guías que dependen de NID.
* MINSAL Organización y MINSAL Localización son el contrato transversal de establecimientos y recintos para las guías dependientes y para la carga de catálogos de prestadores institucionales (identificadores por `system` y `value`: RUT, DEIS, MIDAS, SAFIS, GLN).
* Correcciones: el segundo apellido del acompañante usa la URL de la extensión de CL Core, porque EIS define otra con el mismo nombre; el ValueSet de identificador del prestador recupera los textos del paquete publicado de la 0.4.9.
* La operación [$ihe-pix](OperationDefinition-MPI.PIXm.pix.md) vuelve a la guía, como en la publicación 0.4.9.
* El parámetro de entrada `resource` de la operación [$match](OperationDefinition-MPI.PDQm.match.md) vuelve a exigir [MINSAL Paciente Búsqueda](StructureDefinition-MINSALPacienteBusqueda.md), y su resultado, MINSAL Bundle Resultado Operación Match, como en la publicación 0.4.9 y como dice la descripción de la operación.
* [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) declara, como opcionales, las extensiones de IHE PDQm Patient (apellido de soltera de la madre, identidad de género, pronombres y sexo o género registrado), para cumplir el perfil IHE PIXm Patient que declara.
* [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) cumple EIS 0.2.0 en los datos de la persona: 
* Sexo registral opcional, en la extensión [Sexo Registral](StructureDefinition-SexoRegistral.md) con los códigos de EIS; las guías de caso de uso pueden exigirlo. `gender` sigue obligatorio, con los códigos de HL7.
* Identidad de género con los códigos de EIS, en la extensión de identidad de género de HL7. La extensión IdentidadDeGenero de CL Core, que usa otros códigos, queda prohibida.
 
* La [dirección](StructureDefinition-NIDAddress.md) cumple la de CL Core y la de EIS 0.2.0: comuna, provincia, región y país se codifican con las extensiones de ambas (CL Core escribe los códigos con ceros a la izquierda). La calle y la comuna son obligatorias y se agrega el tipo de vía de EIS.
* Los ejemplos de paciente usan las extensiones de EIS y las de CL Core que exige la dirección.

### Versión 0.4.9

Correción del ValueSet [Identificador del Prestador](ValueSet-VSIdentificadorPrestador.md) porque no permitia validar en servidores terminológicos.

### Versión 0.4.8

Actualización de la core de la 1.9.2 a la 1.9.4

### Versión 0.4.7

Se cambia el nombre de la extensión de pueblos originarios

Se elimina obligatoriedad en la extensión identidad de genero

En el perfil [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md):

* identifier 1..1 -> 0..*
* name 0..1 -> 1..1

### Versión 0.4.6

Se crea la estructura de dato de NIDAddress necesario para considerar lo mínimo requerido para la dirección del paciente. Corrección de url de la guía de implementación

Se eliminan los globals

### Versión 0.4.1

Perfil [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md):

* Se agrega el segundo apellido en el name de manera opcional
* Se deja opcional la dirección y el medio de comunicación pasan a ser oligatorio
* Y el Address pasa a **CLAddress**

Se cambia el computableName a **Minsal-NucleoInteroperabilidadDatos**

### Versión 0.4.0

Se crean nuevos perfiles para cubrir del Directorio de proveedores de atención médica o HPD(Healthcare Provider Directory) por sus siglas en inglés.

Se modifica computable Name a **Nid_Mpi_Hpd_Minsal**

Se modifica el indice para incluir el caso de uso de HPD, replanteando los objetivos de la guía.

Se modifica la página de arteactos.

Se agrega el negocio de un HPD.

Se agrega las Busquedas de información del HPD.

Se crea el CapabilityStatement del Servidor:

* [Administrador del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Manager.md)

Se cren los CapabilityStatement del Cliente:

* [Consumidor del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Consumer.md)
* [del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Source.md)

Se Incluyen los siguientes perfiles:

* [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)
* [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)
* [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)

Se crea la siguiente extensión:

* [Mención profesional añadida al título profesional](StructureDefinition-Mencion.md)

Se crean los siguientes CodeSystems:

* [Especialidades Médicas](CodeSystem-CSEspecialidadMed.md)
* [Especialidades y Subespecialidades Bioquímicas](CodeSystem-CSEspecialidadBioqca.md)
* [Especialidades Farmaceúticas o Química Farmaceúticas](CodeSystem-CSEspecialidadFarma.md)

Se crean los siguientes ValueSet:

* [Especialidades Médicas](ValueSet-VSEspecialidadMed.md)
* [Especialidades y Subespecialidades Bioquímicas](ValueSet-VSEspecialidadBioqca.md)
* [Especialidades Farmaceúticas o Química Farmaceúticas](ValueSet-VSEspecialidadFarma.md)

### Versión 0.3.0

Se cambia el nombre a guía Núcle de Interoperabilidad de Datos del Ministerio de Salud (NID-Minsal)

Se agrega más información complementaria en la página de transacciones.

Se generan las dependencias a las guías [PIXm](https://profiles.ihe.net/ITI/PIXm/index.html) y [PDQm](https://profiles.ihe.net/ITI/PDQm/).

Se crea el CapabilityStatement del Servidor:

* [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

Se crean los CapabilityStatement de Cliente:

* [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.md)
* [Indice Maestro Paciente: "Cliente Buscador PIXm"](CapabilityStatement-MPI.IHE.PIXm.Buscador.md)
* [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md)
* [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.md)

Se define la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix) para está guía.

Se define la operación [$match](OperationDefinition-MPI.PDQm.match.md) para está guía.

Se crean los parametros de la operación **$ihe-pix**:

* **MINSAL Parametros Entrada PIXm**
* **MINSAL Parametros Salida PIXm**

Se crean los parametros y perfiles para la operación **$match**:

* [MINSAL Parametros Entrada $match PDQM](StructureDefinition-ParametrosEntradaPDQmMpi.md)
* [MINSAL Paciente Busqueda](StructureDefinition-MINSALPacienteBusqueda.md)
* [MINSAL Bundle Resultado Operación $match](StructureDefinition-BundleSearchMPIMatch.md)

Se crea perfil [MINSAL Bundle Resultado Consulta](StructureDefinition-BundleSearchMPI.md) para los resultados de búsquedas mediante consultas.

Perfil [MINSAL Cobertura](StructureDefinition-MINSALCobertura.md):

* Se cambia la referencia de **Organization** al perfil de la core **OrganizacionCL**.
* Se incluye el dato type para definir la ley previsional.
* Se utiliza el class para definir el tipo de Tramo de FONASA, el tipo de plan de isapre, el Leyes previsionales, leyes reparatorias.
* Se crea la extensión **Valor de la Clase** para mantener el valor de manera codificada y responder las necesidades nacionales.

Perfil [MINSAL Agrupacion por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md):

* Se depreca el MS al characteristic.
* Se da MS al Code y obligatoriedad para definir el tipo de Agrupación.

Perfil [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md):

* Se agrega dependencia al ObservacionCL de la Core de HL7.
* Se cambia la referencia del subject a perfil **Minsal Paciente**.
* Se crea el CS y VS para diferenciar los componentes.
* Se agrega la categoría de social-history.
* Se agrega el code como tipo de obsercación y obliga a Nivel Educacional.

Perfil [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md):

* Se agrega dependencia al ObservacionCL de la Core de HL7.
* Se cambia la referencia del subject a perfil **Minsal Paciente**.
* Se agrega la categoría de social-history.
* Se agrega el code como tipo de obsercación y obliga a Ocupación.

Perfil [MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md):

* Se agrega dependencia al ObservacionCL de la Core de HL7.
* Se cambia la referencia del subject a perfil **Minsal Paciente**.
* Se agrega la categoría de social-history.
* Se agrega el code como tipo de obsercación y obliga a Situación de Discapacidad.
* Se crea invariante para obligar el uso de los componenetes en caso de ser Verdadero.

Perfil [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md):

* Se crea invariante para obligar el uso de un dato given o family o text en caso de utilizar el dato name.

Perfil [MINSAL Paciente](StructureDefinition-MINSALPaciente.md):

* Se convalida Paciente LE con MINSAL Paciente.
* Se crea el parámetro de busqueda de [SegundoApellido](SearchParameter-mpi-paciente-segundoApellido.md).
* Se incluye el dato Link por recomendación de la guía PIXm.
* Se crea un nuevo VS llamado [Medios de Comunicación con el Paciente](ValueSet-VSSistemasComunicacion.md) para reducir los system del telecom a los requeridos por norma.

Se combinan los extensiones **Pueblos Originarios** y **Pueblo Originarios Pertenecientes** en la extensión compleja [Pueblos Originarios](StructureDefinition-PueblosOriginariosMPI.md).

Se modifican los siguientes VS y CS para corregir según la norma:

* Valoracion Desempeno
* Origen Discapacidad
* Previsión

### Versión 0.2.0

Primera versión publicada de la guía MPI.

