# Artifacts Summary - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Modelo Logico para el tipo de dato Direccion](StructureDefinition-ModeloLogicoEISDireccion.md) | Modelo Logico para el tipo de dato Nombre |
| [Modelo Logico para el tipo de dato Nombre](StructureDefinition-ModeloLogicoEISNombre.md) | Modelo Logico para el tipo de dato Nombre |
| [Modelo Logico para el tipo de dato RUN](StructureDefinition-ModeloLogicoEISRUN.md) | Modelo Logico para el tipo de dato RUN |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DEIS Identificador Paciente](StructureDefinition-deis-identifier.md) | Forma de identificar a un paciente en Chile |
| [Dirección](StructureDefinition-eis-direccion.md) | Dirección |
| [Nombre Oficial](StructureDefinition-eis-nombre-oficial.md) | Tipo relacionado con el formato en que se define un nombre oficial según Deis. Se recomienda agregar use para la definición del tipo de nombre |
| [Nombre Social](StructureDefinition-eis-nombre-social.md) | Tipo relacionado con el formato en que se define un nombre social según Deis. Se recomienda agregar use para la definición del tipo de nombre |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Códigos para Comunas en Chile](StructureDefinition-eis-comunas.md) | Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección |
| [Códigos para Países](StructureDefinition-eis-paises.md) | Esta extensión que permite codificar los Países en el campo de Dirección |
| [Códigos para Provincias en Chile](StructureDefinition-eis-provincias.md) | Esta extensión que permite codificar las Provincias en Chile en el campo de Dirección |
| [Códigos para Regiones en Chile](StructureDefinition-eis-regiones.md) | Esta extensión que permite codificar las Regiones en Chile en el campo de Dirección |
| [Códigos para Tipo de Via](StructureDefinition-eis-tipo-de-via.md) | Esta extensión que permite codificar el tipo de vía en el campo de Dirección |
| [Segundo Apellido](StructureDefinition-SegundoApellido.md) | Segundo Apellido |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Codigo DEIS](ValueSet-eis-establecimientoscodigodeis-VS.md) | Código único el cual permite reconocer de forma inequívoca a cada prestador institucional. |
| [Comunas](ValueSet-eis-comunas-vs.md) | Comunas |
| [Condicion de la Actividad Laboral](ValueSet-eis-CondiciondelaActividadLaboral-VS.md) | La condición de la actividad corresponde a la relación que mantiene la persona con el trabajo al momento del registro, y se vincula con su ciclo de vida laboral, permitiendo identificar su situación de actividad económica. |
| [Consulta clínica](ValueSet-eis-consultaclinica-vs.md) | Consulta clínica |
| [Códigos Para Nacionalidad](ValueSet-eis-nacionalidad-vs.md) | Nacionalidad Codigos de países segun norma ISO3166-N |
| [Códigos de países para asignar país de emisión de documento](ValueSet-eis-pais-emision-vs.md) | Códigos de países para asignar país de emisión de documento a los pacientes |
| [Códigos de países para asignar país de origen a los pacientes](ValueSet-eis-paises-vs.md) | Códigos de países para asignar país de origen a los pacientes |
| [Códigos de países para pais de nacimiento](ValueSet-eis-pais-nacimiento-vs.md) | Códigos de países para asignar país de nacimiento a los pacientes |
| [Especialidades Farmacéuticas](ValueSet-eis-especialidades-farmaceuticas-vs.md) | Conjunto de códigos y valores asociados a las especialidades y subespecialidades farmacéuticas o químico-farmacéuticas, que permiten identificar y registrar el ámbito específico de desempeño profesional del prestador individual del área farmacéutica. |
| [Especialidades y Subespecialidades Bioquímicas](ValueSet-eis-especialidades-bioquimicas-vs.md) | Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades bioquímicas, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de la bioquímica en el sistema de salud. |
| [Especialidades y Subespecialidades Medicas](ValueSet-eis-EspecialidadesySubespecialidadesMedicas-VS.md) | La certificación de especialidades y subespecialidades médicas corresponden al proceso mediante el cual se reconoce oficialmente que un prestador individual de salud posee y domina un conjunto de conocimientos, competencias y experiencias específicas, relevantes para el ejercicio profesional en un ámbito determinado de la atención de salud. |
| [Especialidades y Subespecialidades Odontológicas](ValueSet-eis-especialidades-odontologicas-vs.md) | La certificación de especialidades y subespecialidades odontológicas corresponde al proceso mediante el cual se reconoce oficialmente que un prestador individual del área odontológica posee los conocimientos, competencias y experiencias específicas requeridas para el ejercicio profesional en un ámbito determinado de la atención odontológica. |
| [Especialidades y Subespecialidades de Enfermería](ValueSet-eis-especialidades-enfermeria-vs.md) | Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades de enfermería, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de enfermería en el sistema de salud. |
| [Establecimientos según Nivel de Complejidad](ValueSet-eis-establecimientos-nivel-complejidad-vs.md) | El nivel de complejidad de los establecimientos que integran la Red Asistencial del Sistema Nacional de Servicios de Salud se determina conforme a lo establecido en el Reglamento Orgánico de los Servicios de Salud, considerando su infraestructura, capacidad resolutiva y tipo de prestaciones que otorgan. |
| [Estado Civil](ValueSet-eis-EstadoCivil-VS.md) | El estado civil es la situación de un individuo jurídica de una persona dentro de la sociedad, determinada principalmente por sus relaciones de familia, que la habilita para ejercer determinados derechos y contraer obligaciones de carácter civil. |
| [Grupos de Ocupaciones](ValueSet-eis-GruposdeOcupaciones-VS.md) | La ocupación corresponde al conjunto de tareas y funciones asociadas al empleo que la persona desempeña o ha desempeñado. Una persona puede estar vinculada a una ocupación a través de su empleo principal, un empleo secundario o un empleo desempeñado anteriormente. |
| [Identidad de Género](ValueSet-eis-identidad-genero-vs.md) | De acuerdo con la Ley 21.120, la identidad de género se entiende como la convicción personal e interna de ser hombre, mujer u otra identidad de género, tal como la persona se percibe a sí misma. Esta puede o no corresponder con el sexo y nombre de pila consignadas en la inscripción de nacimiento. |
| [Leyes Relacionadas a la Atención en Salud](ValueSet-LeyesAtencionSaludVS.md) | Leyes que otorgan beneficio de salud por causas específicas y se relacionan con el seguro de salud general de la persona ya sea FONASA o ISAPRE. |
| [Modalidad de Atención FONASA](ValueSet-eis-ModalidaddeAtencionFONASA-VS.md) | La modalidad de atención FONASA corresponde a la forma en que una persona afiliada voluntariamente al Fondo Nacional de Salud (FONASA) accede a las prestaciones de salud, permitiéndole contar con los servicios y la protección financiera otorgada por el Seguro Público de Salud |
| [Modalidad de atención](ValueSet-eis-modalidad-atencion-vs.md) | Modalidad de atención |
| [Nivel de Discapacidad](ValueSet-eis-NiveldeDiscapacidad-VS.md) | Las personas en situación de discapacidad son aquellas que, en relación con condiciones de salud de carácter físico, psíquico, intelectual, sensorial u otras, y al interactuar con diversas barreras contextuales, actitudinales y ambientales, presentan restricciones en su participación plena y efectiva en la sociedad, en igualdad de condiciones con las demás personas. |
| [Nivel de Instrucción](ValueSet-eis-NiveldeInstruccion-CS.md) | Código del último nivel aprobado |
| [Ocupaciones Desagregadas](ValueSet-eis-OcupacionesDesagregadas-VS.md) | Código asociados a el detalle de las ocupaciones de un paciente |
| [Origen de Discapacidad](ValueSet-eis-OrigendeDiscapacidad-VS.md) | El origen de la discapacidad corresponde al evento, condición o circunstancia a partir de la cual se genera una situación de discapacidad en la persona, considerando la interacción entre sus condiciones de salud y las barreras contextuales, actitudinales y ambientales. |
| [Pertenencia al Sistema Nacional de Servicios de Salud](ValueSet-eis-pertenencia-sistema-nacional-servicios-salud-vs.md) | Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema. |
| [Previsión de Salud](ValueSet-eis-PrevisiondeSalud-VS.md) | La previsión corresponde a la variable que identifica el sistema de aseguramiento de salud vigente al que se encuentra adscrita la persona, el cual define la cobertura para acciones de promoción, prevención, tratamiento y control de las enfermedades. |
| [Provincias](ValueSet-eis-provincias-vs.md) | Provincias |
| [Pueblo Afrodescendiente Chileno](ValueSet-eis-PuebloAfrodescendienteChileno-VS.md) | Se entiende por pueblo afrodescendiente chileno al grupo humano que, teniendo nacionalidad chilena conforme a la Constitución Política de la República, comparte una historia, cultura, tradiciones y costumbres comunes, unidas por la conciencia de identidad y reconocimiento colectivo. |
| [Pueblos Indígenas u Originarios](ValueSet-eis-PueblosOriginarios-VS.md) | Los Pueblos Indígenas u Originarios en Chile corresponden a los descendientes de agrupaciones humanas que habitaban el territorio nacional en tiempos precolombinos, y que conservan manifestaciones culturales, sociales y étnicas propias, o parte de ellas, teniendo para estos pueblos la tierra un rol fundamental en su existencia y desarrollo cultural. |
| [Regiones](ValueSet-eis-regiones-vs.md) | Regiones |
| [Religiones y Cultos](ValueSet-eis-religion-vs.md) | La religión o credo corresponde a un sistema de creencias y prácticas, de carácter individual o colectivo, relacionadas con lo que la persona considera sagrado o divino, y que se vinculan a su dimensión espiritual, existencial y cultural. |
| [Seremi](ValueSet-eis-seremi-vs.md) | Corresponde a los códigos y valores asociados a cada Secretaría Regional Ministerial (SEREMI), utilizados en los sistemas de información en salud. La codificación de la SEREMI es coincidente con el código de la región, el cual prevalece para efectos de registro e interoperabilidad. |
| [Servicios de Salud](ValueSet-eis-servicios-salud-vs.md) | Corresponde a los códigos y valores asociados a los servicios de salud del país, utilizados para la identificación territorial y administrativa de la red asistencial en los sistemas de información en salud. |
| [Sexo Biológico](ValueSet-SexoBiologicoVS.md) | El sexo biológico corresponde a la determinación realizada mediante la aplicación de criterios biológicos y anatómicos, utilizados para clasificar a las personas como hombre o mujer al momento del nacimiento. |
| [Sexo Registral](ValueSet-SexoRegistralVS.md) | o Reúne los códigos y valores relacionados con el sexo registral explicitado por el SRCeI |
| [Tipo de Identificador](ValueSet-eis-tipo-identificador-vs.md) | Define el tipo de documento de identificación del usuario, paciente o prestador de salud individual |
| [Tipo de Prestador](ValueSet-eis-tipo-prestador-vs.md) | Tipo de Prestador |
| [Tipo de Vía](ValueSet-eis-tipo-via-vs.md) | Corresponde al tipo o clasificación de calle. |
| [Tipo de proceso asistencial](ValueSet-eis-tipo-proceso-asistencial-VS.md) | Tipo de proceso asistencial |
| [Tipo específico de prestador](ValueSet-eis-tipo-especifico-prestador-vs.md) | Tipo específico de prestador |
| [Tramos FONASA](ValueSet-eis-tramos-fonasa-vs.md) | Los tramos FONASA corresponden a la clasificación que realiza el Fondo Nacional de Salud (FONASA) en función del nivel de ingreso mensual que percibe la persona, la cual determina el acceso a beneficios, copagos y modalidades de atención dentro del Seguro Público de Salud. |
| [Título Profesional](ValueSet-eis-titulo-profesional-vs.md) | El título profesional corresponde al documento oficial que acredita que una persona ha completado un programa formal de estudios y ha aprobado las evaluaciones, pruebas o exámenes requeridos para el ejercicio de una determinada profesión, certificando las competencias generales, científicas y técnicas necesarias para su adecuado desempeño profesional. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Codigo DEIS](CodeSystem-eis-establecimientoscodigodeis-CS.md) | Código único el cual permite reconocer de forma inequívoca a cada prestador institucional. |
| [Comunas](CodeSystem-eis-comunas-cs.md) | Código de comunas |
| [Condicion de la Actividad Laboral](CodeSystem-eis-CondiciondelaActividadLaboral-CS.md) | La condición de la actividad corresponde a la relación que mantiene la persona con el trabajo al momento del registro, y se vincula con su ciclo de vida laboral, permitiendo identificar su situación de actividad económica. |
| [Consulta clínica](CodeSystem-eis-consultaclinica-cs.md) | Consulta clínica |
| [Códigos de Países](CodeSystem-eis-paises-cs.md) | Códigos de Países |
| [Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas](CodeSystem-eis-especialidades-bioquimicas-cs.md) | Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades bioquímicas, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de la bioquímica en el sistema de salud. |
| [Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas](CodeSystem-eis-especialidades-farmaceuticas-cs.md) | Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades farmacéuticas o químico-farmacéuticas, que permiten identificar y registrar el ámbito específico de desempeño profesional del prestador individual del área farmacéutica. |
| [Especialidades y Subespecialidades Medicas](CodeSystem-eis-EspecialidadesySubespecialidadesMedicas-CS.md) | La certificación de especialidades y subespecialidades médicas corresponden al proceso mediante el cual se reconoce oficialmente que un prestador individual de salud posee y domina un conjunto de conocimientos, competencias y experiencias específicas, relevantes para el ejercicio profesional en un ámbito determinado de la atención de salud. |
| [Especialidades y Subespecialidades Odontológicas](CodeSystem-eis-especialidades-odontologicas-cs.md) | La certificación de especialidades y subespecialidades odontológicas corresponde al proceso mediante el cual se reconoce oficialmente que un prestador individual del área odontológica posee los conocimientos, competencias y experiencias específicas requeridas para el ejercicio profesional en un ámbito determinado de la atención odontológica. |
| [Especialidades y Subespecialidades de Enfermería](CodeSystem-eis-especialidades-enfermeria-cs.md) | Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades de enfermería, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de enfermería en el sistema de salud. |
| [Establecimientos según Nivel de Complejidad](CodeSystem-eis-establecimientos-nivel-complejidad-cs.md) | El nivel de complejidad de los establecimientos que integran la Red Asistencial del Sistema Nacional de Servicios de Salud se determina conforme a lo establecido en el Reglamento Orgánico de los Servicios de Salud, considerando su infraestructura, capacidad resolutiva y tipo de prestaciones que otorgan. |
| [Estado Civil](CodeSystem-eis-EstadoCivil-CS.md) | El estado civil es la situación de un individuo jurídica de una persona dentro de la sociedad, determinada principalmente por sus relaciones de familia, que la habilita para ejercer determinados derechos y contraer obligaciones de carácter civil. |
| [Grupos de Ocupaciones](CodeSystem-eis-GruposdeOcupaciones-CS.md) | La ocupación corresponde al conjunto de tareas y funciones asociadas al empleo que la persona desempeña o ha desempeñado. Una persona puede estar vinculada a una ocupación a través de su empleo principal, un empleo secundario o un empleo desempeñado anteriormente. |
| [Identidad de Género](CodeSystem-eis-identidadgenero-cs.md) | De acuerdo con la Ley 21.120, la identidad de género se entiende como la convicción personal e interna de ser hombre, mujer u otra identidad de género, tal como la persona se percibe a sí misma. Esta puede o no corresponder con el sexo y nombre de pila consignadas en la inscripción de nacimiento. |
| [Leyes Relacionadas a la Atención en Salud](CodeSystem-LeyesAtencionSaludCS.md) | Leyes que otorgan beneficio de salud por causas específicas y se relacionan con el seguro de salud general de la persona ya sea FONASA o ISAPRE. |
| [Modalidad de Atención FONASA](CodeSystem-eis-ModalidaddeAtencionFONASA-CS.md) | La modalidad de atención FONASA corresponde a la forma en que una persona afiliada voluntariamente al Fondo Nacional de Salud (FONASA) accede a las prestaciones de salud, permitiéndole contar con los servicios y la protección financiera otorgada por el Seguro Público de Salud |
| [Modalidad de atención](CodeSystem-eis-modalidad-atencion-cs.md) | Modalidad de atención |
| [Nivel de Discapacidad](CodeSystem-eis-NiveldeDiscapacidad-CS.md) | Las personas en situación de discapacidad son aquellas que, en relación con condiciones de salud de carácter físico, psíquico, intelectual, sensorial u otras, y al interactuar con diversas barreras contextuales, actitudinales y ambientales, presentan restricciones en su participación plena y efectiva en la sociedad, en igualdad de condiciones con las demás personas. |
| [Nivel de Instrucción](CodeSystem-eis-NiveldeInstruccion-CS.md) | Código del último nivel aprobado |
| [Ocupaciones Desagregadas](CodeSystem-eis-OcupacionesDesagregadas-CS.md) | Código asociados a el detalle de las ocupaciones de un paciente |
| [Origen de Discapacidad](CodeSystem-eis-OrigendeDiscapacidad-CS.md) | El origen de la discapacidad corresponde al evento, condición o circunstancia a partir de la cual se genera una situación de discapacidad en la persona, considerando la interacción entre sus condiciones de salud y las barreras contextuales, actitudinales y ambientales. |
| [Pertenencia al Sistema Nacional de Servicios de Salud](CodeSystem-eis-pertenencia-sistema-nacional-servicios-salud-cs.md) | Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema. |
| [Previsión de Salud](CodeSystem-eis-PrevisiondeSalud-CS.md) | La previsión corresponde a la variable que identifica el sistema de aseguramiento de salud vigente al que se encuentra adscrita la persona, el cual define la cobertura para acciones de promoción, prevención, tratamiento y control de las enfermedades. |
| [Provincias](CodeSystem-eis-provincias-cs.md) | Provincias |
| [Pueblo Afrodescendiente Chileno](CodeSystem-eis-PuebloAfrodescendienteChileno-CS.md) | Se entiende por pueblo afrodescendiente chileno al grupo humano que, teniendo nacionalidad chilena conforme a la Constitución Política de la República, comparte una historia, cultura, tradiciones y costumbres comunes, unidas por la conciencia de identidad y reconocimiento colectivo. |
| [Pueblos Indígenas u Originarios](CodeSystem-eis-PueblosOriginarios-CS.md) | Los Pueblos Indígenas u Originarios en Chile corresponden a los descendientes de agrupaciones humanas que habitaban el territorio nacional en tiempos precolombinos, y que conservan manifestaciones culturales, sociales y étnicas propias, o parte de ellas, teniendo para estos pueblos la tierra un rol fundamental en su existencia y desarrollo cultural. |
| [Regiones](CodeSystem-eis-regiones-cs.md) | Regiones |
| [Religiones y Cultos](CodeSystem-eis-religion-cs.md) | La religión o credo corresponde a un sistema de creencias y prácticas, de carácter individual o colectivo, relacionadas con lo que la persona considera sagrado o divino, y que se vinculan a su dimensión espiritual, existencial y cultural. |
| [Seremi](CodeSystem-eis-seremi-cs.md) | Corresponde a los códigos y valores asociados a cada Secretaría Regional Ministerial (SEREMI), utilizados en los sistemas de información en salud. La codificación de la SEREMI es coincidente con el código de la región, el cual prevalece para efectos de registro e interoperabilidad. |
| [Servicios de Salud](CodeSystem-eis-servicios-salud-cs.md) | Corresponde a los códigos y valores asociados a los servicios de salud del país, utilizados para la identificación territorial y administrativa de la red asistencial en los sistemas de información en salud. |
| [Sexo Biológico](CodeSystem-eis-SexoBiologico-CS.md) | El sexo biológico corresponde a la determinación realizada mediante la aplicación de criterios biológicos y anatómicos, utilizados para clasificar a las personas como hombre o mujer al momento del nacimiento. |
| [Sexo Registral](CodeSystem-eis-SexoRegistral-CS.md) | o Reúne los códigos y valores relacionados con el sexo registral explicitado por el SRCeI |
| [Tipo de Identificador](CodeSystem-eis-tipo-identificador-cs.md) | Define el tipo de documento de identificación del usuario, paciente o prestador de salud individual |
| [Tipo de Prestador](CodeSystem-eis-tipo-prestador-cs.md) | Tipo de Prestador |
| [Tipo de Vía](CodeSystem-eis-tipo-via-cs.md) | Corresponde al tipo o clasificación de calle. |
| [Tipo de proceso asistencial](CodeSystem-eis-tipo-proceso-asistencial-CS.md) | Tipo de proceso asistencial |
| [Tipo específico de prestador](CodeSystem-eis-tipo-especifico-prestador-cs.md) | Tipo específico de prestador |
| [Tramos FONASA](CodeSystem-eis-tramos-fonasa-cs.md) | Los tramos FONASA corresponden a la clasificación que realiza el Fondo Nacional de Salud (FONASA) en función del nivel de ingreso mensual que percibe la persona, la cual determina el acceso a beneficios, copagos y modalidades de atención dentro del Seguro Público de Salud. |
| [Título Profesional](CodeSystem-eis-titulo-profesional-cs.md) | El título profesional corresponde al documento oficial que acredita que una persona ha completado un programa formal de estudios y ha aprobado las evaluaciones, pruebas o exámenes requeridos para el ejercicio de una determinada profesión, certificando las competencias generales, científicas y técnicas necesarias para su adecuado desempeño profesional. |

