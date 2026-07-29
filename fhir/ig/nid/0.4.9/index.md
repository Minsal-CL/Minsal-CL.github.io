# Inicio - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid | *Version*:0.4.9 |
| Draft as of 2025-12-05 | *Computable Name*:MinsalNucleoInteroperabilidadDatos |

### Alcance

El Núcleo de Interoperabilidad de Datos del Ministerio de Salud de Chile (NID - MINSAL) busca abordar diversos casos transversales dentro de la 'Arquitectura Nacional de Interoperabilidad'. Entre estos se destacan el uso del Índice Maestro de Pacientes (MPI, por sus siglas en inglés) y el Directorio de Prestadores Individuales e Institucionales (HPD). Estas herramientas permiten gestionar y mantener de manera eficiente la identidad de los usuarios de la red, así como de los profesionales e instituciones a nivel nacional.

### Antecedentes

Para cualquier prestador de salud, gestionar con precisión los datos clínicos de los pacientes es fundamental, ya que estos provienen de diversas fuentes. La identificación precisa de los pacientes resulta crucial, ya que la duplicación de registros demográficos no solo genera ineficiencias, sino que también incrementa los riesgos para la seguridad de los pacientes y añade costos innecesarios a la organización.

Asimismo, es esencial que los usuarios que acuden a una institución sean atendidos por profesionales acreditados y reconocidos por el Estado, lo que garantiza que estén capacitados y calificados para brindar servicios de cuidado adecuados. Esto asegura un nivel mínimo de calidad en la atención.

### Descripción del Índice Maestro de Pacientes (MPI)

En el marco de las funciones de la guía del NID, el MPI representa un pilar fundamental para la interoperabilidad en el ámbito de la salud. Su función es facilitar el intercambio seguro de datos de pacientes entre diversas organizaciones, sistemas y actores del sector sanitario. Sin un MPI robusto, los esfuerzos por lograr una interoperabilidad efectiva pueden verse comprometidos por inconsistencias y errores en los datos.

La identificación precisa de los pacientes es crucial para garantizar su seguridad. El MPI contribuye a prevenir errores en la medicación, diagnósticos incorrectos y otros eventos adversos que pueden surgir cuando los proveedores de atención médica no disponen de un historial completo y preciso del paciente.

Además, el MPI reduce los costos administrativos al simplificar el proceso de registro de los pacientes. Esto permite a las organizaciones sanitarias evitar la duplicación de datos y mejorar la eficiencia en el intercambio de información

#### Objetivos de la Implementación del MPI

##### General

* Generar un sistema seguro e interoperable de identificación unívoca de pacientes, para soportar la gestión (carga, consulta e identificación cruzada de duplicados) de la información de descripción de un paciente de manera fidedigna y de calidad.

##### Específicos

* Apoyar los esfuerzos de gobierno de datos garantizando que los datos de los pacientes sean coherentes y fiables. Esto es importante para cumplir con las regulaciones nacionales de privacidad de datos.
* Ayudar a prestar una atención centrada en el paciente al proporcionar a los profesionales sanitarios una visión completa y precisa del historial médico de un paciente, independientemente de dónde se hayan originado los datos.
* Reducir los registros duplicados y mejorar la precisión de los datos
* Ahorrar de costos para las organizaciones sanitarias y los aseguradores.

### Descripción del Directorio de Prestadores Individuales e Institucionales (HPD)

En el marco de las funciones de la guía del NID, el Directorio de Prestadores Individuales e Institucionales (HPD) constituye un componente clave para la interoperabilidad en el ámbito de la salud. El HPD permite gestionar la identidad de los profesionales de la salud y las instituciones a nivel nacional, asegurando que los datos sean confiables y estén disponibles de manera precisa para las organizaciones del sector sanitario. Sin un HPD bien implementado, los esfuerzos por mantener la coherencia y la calidad en la provisión de servicios de salud pueden verse afectados por la falta de información actualizada y validada sobre los prestadores.

La identificación precisa de los profesionales es esencial para garantizar que los pacientes reciban atención de proveedores acreditados y reconocidos por el Estado. El HPD facilita la verificación de las credenciales de los prestadores, lo que contribuye a mejorar la seguridad del paciente y a reducir el riesgo de ser atendido por profesionales no calificados.

Además, el HPD permite optimizar la gestión administrativa, ya que simplifica el acceso a la información sobre prestadores y evita la duplicación de registros de profesionales e instituciones. Esto reduce los costos administrativos, mejorando la eficiencia en el sistema de salud y permitiendo a las organizaciones sanitarias optimizar sus recursos.

#### Objetivos de la Implementación del HPD

##### General

* Implementar un sistema seguro e interoperable de identificación unívoca de prestadores individuales e institucionales, con el fin de garantizar una adecuada gestión de la información de los profesionales e instituciones de salud, de manera confiable y actualizada.

##### Específicos

* Apoyar los esfuerzos de gobierno de datos asegurando que los registros de prestadores sean coherentes, fiables y cumplan con las normativas nacionales, lo que permite un control adecuado de las acreditaciones y certificaciones profesionales.
* Contribuir a una atención centrada en el paciente, asegurando que los profesionales que brindan atención estén debidamente acreditados y cualificados, lo que genera confianza en el sistema de salud y protege a los usuarios.
* Reducir los registros duplicados y mejorar la precisión de los datos de los prestadores, optimizando la gestión de recursos humanos en salud.
* Generar ahorros significativos para las organizaciones sanitarias al evitar la duplicación de esfuerzos en la gestión de credenciales, mejorando la eficiencia en la validación de información de los prestadores.

### Objetivos del "Núcleo de Interoperabilidad de Datos - MINSAL"

#### General

* Brindar las directrices para el desarrollo de sistemas de información que garanticen la interoperabilidad con el Índice Maestro de Pacientes (MPI) y el Directorio de Prestadores Individuales e Institucionales (HPD), según los estándares definidos por el Ministerio de Salud.

#### Específicos

* Proporcionar las herramientas necesarias para el desarrollo de sistemas informáticos que interoperen tanto con el Índice Maestro de Pacientes como con el Directorio de Prestadores, en base al estándar HL7 FHIR.
* Describir los distintos perfiles de usuario y procesos asociados tanto al Índice Maestro de Pacientes como al Directorio de Prestadores, detallando los recursos específicos asociados a cada uno.
* Ejemplificar los distintos casos de uso relacionados con el intercambio seguro y eficiente de datos entre el MPI y el HPD, asegurando una correcta identificación de pacientes y prestadores dentro del sistema de salud.
* Promover la interoperabilidad que permita una integración fluida entre el MPI y el HPD, optimizando la gestión de la información sobre pacientes y prestadores en todo el territorio nacional.

### Perfiles Globales

*There are no Global profiles defined*

### Dependencias









### Analisis de versiones cruzadas

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.cl.minsal.nid.r4)](package.r4.tgz) and [R4B (hl7.fhir.cl.minsal.nid.r4b)](package.r4b.tgz) are available.

### Declaracion de propiedad intelectual

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaAdm](Bundle-EjemploBusquedaAdm.md)...Show 93 more,[Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md),[Bundle/EjemploBusquedaOrg](Bundle-EjemploBusquedaOrg.md),[BundleSearchINSHPD](StructureDefinition-BundleSearchINSHPD.md),[BundleSearchMPI](StructureDefinition-BundleSearchMPI.md),[BundleSearchMPIMatch](StructureDefinition-BundleSearchMPIMatch.md),[BundleSearchProfHPD](StructureDefinition-BundleSearchProfHPD.md),[CSClasesDeCobertura](CodeSystem-CSClasesDeCobertura.md),[CSComponenteDiscapacidad](CodeSystem-CSComponenteDiscapacidad.md),[CSEspecialidadBioqca](CodeSystem-CSEspecialidadBioqca.md),[CSEspecialidadFarma](CodeSystem-CSEspecialidadFarma.md),[CSEspecialidadMed](CodeSystem-CSEspecialidadMed.md),[CSEspecialidadOdont](CodeSystem-CSEspecialidadOdont.md),[CSEstadoCivil](CodeSystem-CSEstadoCivil.md),[CSGrupoMarcas](CodeSystem-CSGrupoMarcas.md),[CSIdentidadDeGenero](CodeSystem-CSIdentidadDeGenero.md),[CSLeyPrevisionales](CodeSystem-CSLeyPrevisionales.md),[CSLeyReparacion](CodeSystem-CSLeyReparacion.md),[CSNivelEducacionalDesc](CodeSystem-CSNivelEducacionalDesc.md),[CSOcupacionesDet](CodeSystem-CSOcupacionesDet.md),[CSOrigenDiscapacidad](CodeSystem-CSOrigenDiscapacidad.md),[CSPrevision](CodeSystem-CSPrevision.md),[CSReligion](CodeSystem-CSReligion.md),[CSTipoIdentificador](CodeSystem-CSTipoIdentificador.md),[CSTipoObservacion](CodeSystem-CSTipoObservacion.md),[CSTituloProfesional](CodeSystem-CSTituloProfesional.md),[CSTramosFONASA](CodeSystem-CSTramosFONASA.md),[CSUNivelAprob](CodeSystem-CSUNivelAprob.md),[CSValoracionDesempeno](CodeSystem-CSValoracionDesempeno.md),[CScalificacionPrevisional](CodeSystem-CScalificacionPrevisional.md),[Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md),[CsPaisDesconocido](CodeSystem-cs-pais-desconocido.md),[MINSALAcompanante](StructureDefinition-MINSALAcompanante.md),[MINSALAgrupacionPorMarcas](StructureDefinition-MINSALAgrupacionPorMarcas.md),[MINSALCobertura](StructureDefinition-MINSALCobertura.md),[MINSALNivelEducacional](StructureDefinition-MINSALNivelEducacional.md),[MINSALOcupacion](StructureDefinition-MINSALOcupacion.md),[MINSALPaciente](StructureDefinition-MINSALPaciente.md),[MINSALPacienteBusqueda](StructureDefinition-MINSALPacienteBusqueda.md),[MINSALPractitionerAdministrativo](StructureDefinition-MINSALPractitionerAdministrativo.md),[MINSALPrestadorOrganizacional](StructureDefinition-MINSALPrestadorOrganizacional.md),[MINSALPrestadorProfesional](StructureDefinition-MINSALPrestadorProfesional.md),[MINSALSituacionDiscapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md),[MPI_ConceptMap_MaritalStatusMap](ConceptMap-MPIMaritalStatusMap.md),[MPI_IHE_PDQm_Search_Cliente](CapabilityStatement-NID.IHE.HPD.Consumer.md),[MPI_IHE_PDQm_Search_Cliente_Match](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.md),[MPI_IHE_PIXm_Buscador](CapabilityStatement-MPI.IHE.PIXm.Buscador.md),[MPI_IHE_PIXm_Consumidor](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md),[MPI_IHE_PIXm_Origen](CapabilityStatement-MPI.IHE.PIXm.Origen.md),[MPI_PDQM_Matches](OperationDefinition-MPI.PDQm.match.md),[MPI_PIXM_pix](OperationDefinition-MPI.PIXm.pix.md),[Mencion](StructureDefinition-Mencion.md),[MinsalNucleoInteroperabilidadDatos](index.md),[NIDAddress](StructureDefinition-NIDAddress.md),[NID_IHE_HPD_Manager](CapabilityStatement-NID.IHE.HPD.Source.md),[Paciente_Segundo_Apellido_NID](SearchParameter-mpi-paciente-segundoApellido.md),[PaisOrigenMPI](StructureDefinition-PaisOrigenMPI.md),[Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md),[Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md),[Practitioner/EjemploPractiAdmin](Practitioner-EjemploPractiAdmin.md),[PueblosAfrodescendiente](StructureDefinition-PueblosAfrodescendiente.md),[PueblosOriginariosCS](CodeSystem-PuebloOriginarioCS.md),[PueblosOriginariosMPI](StructureDefinition-PueblosOriginariosMPI.md),[PueblosOriginariosVS](ValueSet-PueblosOriginariosVS.md),[Religion](StructureDefinition-Religion.md),[SituacionCalle](StructureDefinition-SituacionCalle.md),[VSClasesDeCobertura](ValueSet-VSClasesDeCobertura.md),[VSCodigosPaisesNID](ValueSet-vs-codigos-paises-nid.md),[VSComponenteDiscapacidad](ValueSet-VSComponenteDiscapacidad.md),[VSEspecialidadBioqca](ValueSet-VSEspecialidadBioqca.md),[VSEspecialidadFarma](ValueSet-VSEspecialidadFarma.md),[VSEspecialidadMed](ValueSet-VSEspecialidadMed.md),[VSEspecialidadOdont](ValueSet-VSEspecialidadOdont.md),[VSEstadoCivil](ValueSet-VSEstadoCivil.md),[VSGrupoMarcas](ValueSet-VSGrupoMarcas.md),[VSIdentidadDeGenero](ValueSet-VSIdentidadDeGenero.md),[VSIdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md),[VSLeyPrevisionales](ValueSet-VSLeyPrevisionales.md),[VSLeyReparacion](ValueSet-VSLeyReparacion.md),[VSNivelEducacionalDesc](ValueSet-VSNivelEducacionalDesc.md),[VSOcupacionesDet](ValueSet-VSOcupacionesDet.md),[VSOrigenDiscapacidad](ValueSet-VSOrigenDiscapacidad.md),[VSPrevision](ValueSet-VSPrevision.md),[VSReligion](ValueSet-VSReligion.md),[VSSistemasComunicacion](ValueSet-VSSistemasComunicacion.md),[VSTipoIdentificador](ValueSet-VSTipoIdentificador.md),[VSTipoObservacion](ValueSet-VSTipoObservacion.md),[VSTiposIdentificadorPaciente](ValueSet-VSTiposIdentificadorPaciente.md),[VSTituloProfesional](ValueSet-VSTituloProfesional.md),[VSTramosFONASA](ValueSet-VSTramosFONASA.md),[VSUNivelAprob](ValueSet-VSUNivelAprob.md),[VSValoracionDesempeno](ValueSet-VSValoracionDesempeno.md),[VScalificacionPrevisional](ValueSet-VScalificacionPrevisional.md)and[ValorDeLaClase](StructureDefinition-ValorDeLaClase.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.0.0/CodeSystem-observation-category.html): [MINSALNivelEducacional](StructureDefinition-MINSALNivelEducacional.md), [MINSALOcupacion](StructureDefinition-MINSALOcupacion.md)...Show 4 more,[MINSALSituacionDiscapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md),[Observation/EjemploNivelEducacional](Observation-EjemploNivelEducacional.md),[Observation/EjemploOcupacion](Observation-EjemploOcupacion.md)and[Observation/EjemploSituacionDiscapacidad](Observation-EjemploSituacionDiscapacidad.md)
* [contactRole2](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0131.html): [Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md) and [RelatedPerson/EjemploAcompanate](RelatedPerson-EjemploAcompanate.md)
* [MaritalStatus](http://terminology.hl7.org/7.0.0/CodeSystem-v3-MaritalStatus.html): [MINSALPaciente](StructureDefinition-MINSALPaciente.md) and [MINSALPacienteBusqueda](StructureDefinition-MINSALPacienteBusqueda.md)
* [NullFlavor](http://terminology.hl7.org/7.0.0/CodeSystem-v3-NullFlavor.html): [MINSALPaciente](StructureDefinition-MINSALPaciente.md) and [MINSALPacienteBusqueda](StructureDefinition-MINSALPacienteBusqueda.md)


* Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional.

* [Códigos de Comunas en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodComunasCL.html): [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md), [Bundle/EjemploBusquedaOrg](Bundle-EjemploBusquedaOrg.md), [Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)
* [Códigos de Provincias en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodProvinciasCL.html): [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)
* [Códigos de Regiones en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodRegionCL.html): [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaAdm](Bundle-EjemploBusquedaAdm.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md), [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md) and [Practitioner/EjemploPractiAdmin](Practitioner-EjemploPractiAdmin.md)
* [Identidad de Genero](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSIdentidaddeGenero.html): [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md), [Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)
* [Tipo Identificador](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSTipoIdentificador.html): [Bundle/EjemploBusquedaAdm](Bundle-EjemploBusquedaAdm.md), [Bundle/EjemploBusquedaProf](Bundle-EjemploBusquedaProf.md)...Show 5 more,[MINSALPractitionerAdministrativo](StructureDefinition-MINSALPractitionerAdministrativo.md),[MINSALPrestadorProfesional](StructureDefinition-MINSALPrestadorProfesional.md),[Practitioner/EjemploPractiAdmin](Practitioner-EjemploPractiAdmin.md),[Practitioner/EjemploPractiProf](Practitioner-EjemploPractiProf.md)and[VSIdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md)


### Autores y validadores

Para el desarrollo de esta Guía de implementación fue necesaria la colaboración de varios actores, los cuales se listan a continuación.

#### Autores

* [Unidad de Interoperabilidad](https://interoperabilidad.minsal.cl) - [Ministerio de Salud de Chile](https://www.minsal.cl/)

#### Validadores

* [HL7Chile](https://hl7chile.cl/)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.nid",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
  "version" : "0.4.9",
  "name" : "MinsalNucleoInteroperabilidadDatos",
  "title" : "Núcleo de Interoperabilidad de Datos (NID) - MINSAL",
  "status" : "draft",
  "date" : "2025-12-05T14:30:03-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Núcleo de Interoperabilidad de Datos del Ministerio de Salud de Chile",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "packageId" : "hl7.fhir.cl.minsal.nid",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_cl_clcore",
      "uri" : "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
      "packageId" : "hl7.fhir.cl.clcore",
      "version" : "1.9.4"
    },
    {
      "id" : "IHE_PIXm",
      "uri" : "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm",
      "packageId" : "ihe.iti.pixm",
      "version" : "3.1.0"
    },
    {
      "id" : "IHE_PDQm",
      "uri" : "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm",
      "packageId" : "ihe.iti.pdqm",
      "version" : "3.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "draft"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "draft"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RelatedPerson"
          }
        ],
        "reference" : {
          "reference" : "RelatedPerson/EjemploAcompanate"
        },
        "name" : "Acompañante de un Paciente",
        "description" : "Padre de una paciente dentro del Maestro Paciente",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/NID.IHE.HPD.Manager"
        },
        "name" : "Administrador del Directorio de Proveedores de Atención Médica",
        "description" : "El CapabilityStatement del administador del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso **PUEDE** devolver el recurso en JSON o XML\n* **DEBE** Soportar Perfil \\\"Prestador Administrativo\\\", \\\"Prestador Individual\\\" y \\\"Prestador Organizacional\\\"\n* Los parámetros de búsquedas de los Perfiles Practitioner **DEBEN** ser:\n  * _id\n  * identifier\n  * family\n  * given\n  * identifier\n* Los parámetros de búsquedas del Perfil Organization **DEBEN** ser:\n  * _id\n  * identifier\n  * name",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/MPI.IHE.PIXm.PDQm.Manager"
        },
        "name" : "Administrador del Indice Maestro Paciente",
        "description" : "El CapabilityStatement del administador del Indice Maestro Paciente debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso **PUEDE** devolver el recurso en JSON o XML\n* **DEBE** Soportar Perfil MINSAL Paciente\n* **DEBE** Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida. \n* Los parámetros de búsquedas **DEBEN** ser:\n  * _id\n  * active\n  * family\n  * given\n  * identifier\n  * segundo-apellido\n  * segundo-apellido:exact\n* **DEBE** soportar los _revinclude que permitan traer la información adicional requerida.\n* **DEBE** soportar el uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix) descrita en está guía.\n* **DEBE** soportar el uso de la operación [$match](OperationDefinition-MPI.PDQm.match.html) descrita en está guía.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Group"
          }
        ],
        "reference" : {
          "reference" : "Group/AgrupacionMarcas"
        },
        "name" : "Agrupacion Marcas",
        "description" : "Agrupación de pacientes que están con la condición de TEA",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAgrupacionPorMarcas"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "SearchParameter"
          }
        ],
        "reference" : {
          "reference" : "SearchParameter/mpi-paciente-segundoApellido"
        },
        "name" : "Busqueda Paciente por Segundo Apellido",
        "description" : "Regresa los pacientes que cumplan con el criterio de segundo apellido.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VScalificacionPrevisional"
        },
        "name" : "Calificación Previsional",
        "description" : "Calificación Previsional",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CScalificacionPrevisional"
        },
        "name" : "Calificación Previsional",
        "description" : "Calificación Previsional",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSClasesDeCobertura"
        },
        "name" : "Clase de Cobertura de Salud",
        "description" : "Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSClasesDeCobertura"
        },
        "name" : "Clase de Cobertura de Salud",
        "description" : "Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSComponenteDiscapacidad"
        },
        "name" : "Componentes de Observación de Discapacidad",
        "description" : "Diferenciación entre los componentes de la observación de discapacidad",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSComponenteDiscapacidad"
        },
        "name" : "Componentes de Observación de Discapacidad",
        "description" : "Diferenciación entre los componentes de la observación de discapacidad",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/NID.IHE.HPD.Consumer"
        },
        "name" : "Consumidor del Directorio de Proveedores de Atención Médica",
        "description" : "El CapabilityStatement de los requisitos del consumidor del directorio de proveedores de atención médica expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Profesionales.\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Soportar Perfiles de Prestador Administrativo, Prestador Profesional y Prestador Institucional\n* Los parámetros de búsquedas de los Perfiles Practitioner **PUEDEN** ser:\n  * _id\n  * identifier\n  * family\n  * given\n  * identifier\n* Los parámetros de búsquedas del Perfil Organization **PUEDEN** ser:\n  * _id\n  * identifier\n  * name\n  * type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-codigos-paises-nid"
        },
        "name" : "Códigos de Países para NID",
        "description" : "códigos de países según norma ISO 3166-1, para uso en NID (Identificador Nacional de Paciente)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/NIDAddress"
        },
        "name" : "Dirección del Paciente",
        "description" : "Dirección especificada para el paciente Minsal.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Coverage"
          }
        ],
        "reference" : {
          "reference" : "Coverage/CoberturaFONASAEjemplo"
        },
        "name" : "Ejemplo de Cobertura FONASA",
        "description" : "Ejemplo de la cobertura FONASA de un paciente",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/EjemploPacienteBusqueda"
        },
        "name" : "Ejemplo de Paciente para Busqueda",
        "description" : "Este un ejemplo del recurso \"MINSAL Paciente Busqueda\", el cual es útilizado para buscar pacientes dentro del MPI utilizando la operación [$match](OperationDefinition-MPI.PDQm.match.html).",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusqueda"
        },
        "name" : "Ejemplo de una Busqueda",
        "description" : "Ejemplo del resultado de una busqueda de paciente según los parámetros de run, nacimiento y nombre",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPI"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusquedaMatch"
        },
        "name" : "Ejemplo de una Busqueda Match",
        "description" : "Ejemplo del resultado de una busqueda de paciente según el parámetro de busqueda de una operación [$match](OperationDefinition-MPI.PDQm.match.html).",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPIMatch"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusquedaMatchOutcomeOperation"
        },
        "name" : "Ejemplo de una Busqueda Match con OperationOutcome",
        "description" : "Ejemplo del resultado de una busqueda de paciente según el parámetro de busqueda de una operación [$match](OperationDefinition-MPI.PDQm.match.html), el cual entrego un OperationOutcome por timeout.",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPIMatch"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusquedaAdm"
        },
        "name" : "Ejemplo de una Búsqueda de Prestador Administrativo",
        "description" : "Ejemplo del resultado de una búsqueda de administrativo según los parámetros de run, nacimiento y nombre",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusquedaOrg"
        },
        "name" : "Ejemplo de una Búsqueda de Prestador Institucional",
        "description" : "Ejemplo del resultado de una búsqueda de una organización según los parametros de código deis y nombre",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchINSHPD"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/EjemploBusquedaProf"
        },
        "name" : "Ejemplo de una Búsqueda de Prestador Profesional",
        "description" : "Ejemplo del resultado de una búsqueda de profesional según los parametros de run, nacimiento y nombre",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSEspecialidadFarma"
        },
        "name" : "Especialidades Farmaceúticas o Química Farmaceúticas",
        "description" : "Especialidades Farmaceúticas o Química Farmaceúticas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSEspecialidadFarma"
        },
        "name" : "Especialidades Farmaceúticas o Química Farmaceúticas",
        "description" : "Especialidades Farmaceúticas o Química Farmaceúticas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSEspecialidadMed"
        },
        "name" : "Especialidades Médicas",
        "description" : "Especialidades Médicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSEspecialidadMed"
        },
        "name" : "Especialidades Médicas",
        "description" : "Especialidades Médicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSEspecialidadOdont"
        },
        "name" : "Especialidades Odontológicas",
        "description" : "Especialidades Odontológicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSEspecialidadOdont"
        },
        "name" : "Especialidades Odontológicas",
        "description" : "Especialidades Odontológicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSEspecialidadBioqca"
        },
        "name" : "Especialidades y Subespecialidades Bioquímicas",
        "description" : "Especialidades y Subespecialidades Bioquímicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSEspecialidadBioqca"
        },
        "name" : "Especialidades y Subespecialidades Bioquímicas",
        "description" : "Especialidades y Subespecialidades Bioquímicas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSEstadoCivil"
        },
        "name" : "Estado Civil",
        "description" : "Estado Civil",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSEstadoCivil"
        },
        "name" : "Estado Civil",
        "description" : "Estado Civil",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/FONASA"
        },
        "name" : "FONASA",
        "description" : "Información del Fondo Nacional de Salud",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSGrupoMarcas"
        },
        "name" : "Grupo Marcas",
        "description" : "Diferenciación entre los posibles grupos dentro del MPI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSGrupoMarcas"
        },
        "name" : "Grupo Marcas",
        "description" : "Diferenciación entre los posibles grupos dentro del MPI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/OrganizationLEEjemplo"
        },
        "name" : "Hospital de Ejemplo",
        "description" : "Ejemplo de un prestador institucional",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSIdentidadDeGenero"
        },
        "name" : "Identidad De Género",
        "description" : "Identidad De Género",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSIdentidadDeGenero"
        },
        "name" : "Identidad De Género",
        "description" : "Identidad De Género",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSIdentificadorPrestador"
        },
        "name" : "Identificador del Prestador",
        "description" : "Identificador del Prestador Profesional o Administrativo",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/MPI.IHE.PDQm.Search.Cliente.Match"
        },
        "name" : "Indice Maestro Paciente: \"Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match\"",
        "description" : "El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes mediante la operación Match.\n\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Los parámetros de entrada y salida deben ser conforme a los perfiles MPI Paciente\n* Invoca la operación $match en un endpoint FHIR",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/MPI.IHE.PDQm.Search.Cliente"
        },
        "name" : "Indice Maestro Paciente: \"Cliente Buscador de Datos Demográficos (PDQm)\"",
        "description" : "El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes.\n\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Soportar Perfil MINSAL Paciente\n* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida. \n* Los parámetros de búsquedas **PUEDEN** ser:\n  * _id\n  * active\n  * family\n  * given\n  * identifier\n  * segundo-apellido\n* **PUEDE** soportar los _revinclude que permitan traer la información adicional requerida.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/MPI.IHE.PIXm.Buscador"
        },
        "name" : "Indice Maestro Paciente: \"Cliente Buscador PIXm\"",
        "description" : "El CapabilityStatement del Actor Cliente Buscador MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/MPI.IHE.PIXm.Origen"
        },
        "name" : "Indice Maestro Paciente: \"Cliente de Origen PIXm\"",
        "description" : "El CapabilityStatement del Actor Cliente de Origen del MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso condicional para actualizar Paciente\n* Soportar Perfil MINSAL Paciente\n* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSLeyPrevisionales"
        },
        "name" : "Leyes Previsionales",
        "description" : "Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSLeyPrevisionales"
        },
        "name" : "Leyes Previsionales",
        "description" : "Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSLeyReparacion"
        },
        "name" : "Leyes Reparación",
        "description" : "Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSLeyReparacion"
        },
        "name" : "Leyes Reparación",
        "description" : "Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/MPIMaritalStatusMap"
        },
        "name" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR",
        "description" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSSistemasComunicacion"
        },
        "name" : "Medios de Comunicación con el Paciente",
        "description" : "Este es un filtro del \"system\" del telecom del paciente solo para que se ocupen los indicados por normativa",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Mencion"
        },
        "name" : "Mención profesional añadida al título profesional",
        "description" : "Mención profesional obtenida junto con el título, dato que se agrega en texto lible",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALAcompanante"
        },
        "name" : "MINSAL Acompañante",
        "description" : "Información sobre una persona que participa en la atención a un paciente, pero que no es el destinatario de la asistencia sanitaria ni tiene una responsabilidad formal en el proceso asistencial.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALAgrupacionPorMarcas"
        },
        "name" : "MINSAL Agrupación por marcas",
        "description" : "Agrupación por marcas",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/BundleSearchMPI"
        },
        "name" : "MINSAL Bundle Resultado Consulta: Pacientes",
        "description" : "Bundle resultado de una busqueda de un recurso paciente mediante parámetros",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/BundleSearchINSHPD"
        },
        "name" : "MINSAL Bundle Resultado Consulta: Prestadores Institucinales",
        "description" : "Bundle resultado de una busqueda de un recurso \"Organization\" mediante parametros",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/BundleSearchProfHPD"
        },
        "name" : "MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos",
        "description" : "Bundle resultado de una busqueda de un recurso \\\"Practitioner\\\" mediante parámetros.\nSe debe incluir el Parámetro de \\\"_profile\\\" e incluir la url canonica del perfil [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.html) o [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.html), esto permite especificar la busqueda según cada tipo de profesional.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/BundleSearchMPIMatch"
        },
        "name" : "MINSAL Bundle Resultado Operación Match",
        "description" : "Bundle resultado de una busqueda de un recurso paciente mediante la operación [$match](OperationDefinition-MPI.PDQm.match.html)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALCobertura"
        },
        "name" : "MINSAL Cobertura de Salud del Paciente",
        "description" : "Recurso para almacenar la cobertura del paciente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALNivelEducacional"
        },
        "name" : "MINSAL Nivel Educacional",
        "description" : "Nivel Educacional como dato estadistico para el ingreso de un paciente en el sistema.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALOcupacion"
        },
        "name" : "MINSAL Ocupación",
        "description" : "Ocupación laboral de un paciente, como dato estadistico requerido para el ingreso del paciente al sistema.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALPaciente"
        },
        "name" : "MINSAL Paciente",
        "description" : "Paciente definido para el Registro Maestro de Pacientes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALPacienteBusqueda"
        },
        "name" : "MINSAL Paciente Busqueda",
        "description" : "Paciente definido para la busqueda dentro del \"Indice Maestro de Pacientes\". Este es utilizado en la operación $match como parámetro de entrada.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALSituacionDiscapacidad"
        },
        "name" : "MINSAL Situacion Discapacidad",
        "description" : "Describe de manera simplificada la situacion de discapacidad de un paciente.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/MPI.PDQm.match"
        },
        "name" : "MPI PDQm $Match",
        "description" : "Operación compatible con la operación [$match](http://hl7.org/fhir/R4/patient-operation-match.html) del estandar y la del operación [$match](https://profiles.ihe.net/ITI/PDQm/OperationDefinition-PDQmMatch.html) del PDQm. Los únicos cambios son restringir los parámetros de entrada para usar el perfil de [Paciente MPI Busqueda](./StructureDefinition-MINSALPacienteBusqueda.html) para el perfil de Entrada de $match y restringir los parámetros de salida para usar el perfil de [Paciente MPI](./StructureDefinition-MINSALPaciente.html) cuya respuesta es el [MINSAL Bundle Resultado Operación Match](./StructureDefinition-BundleSearchMPIMatch.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/EjemploNivelEducacional"
        },
        "name" : "Nivel Educacional de un Paciente",
        "description" : "Nivel Educacional de un Paciente registrado como dato estadistico en un recinto de salud, requerido en el ingreso de él en el sistema.",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALNivelEducacional"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSNivelEducacionalDesc"
        },
        "name" : "Nivel Educacional Descripción",
        "description" : "Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSNivelEducacionalDesc"
        },
        "name" : "Nivel Educacional Descripción",
        "description" : "Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSOcupacionesDet"
        },
        "name" : "Ocupaciones Detalladas",
        "description" : "Código asociados a el detalle de las ocupaciones de un paciente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSOcupacionesDet"
        },
        "name" : "Ocupaciones Detalladas",
        "description" : "Código asociados a el detalle de las ocupaciones de un paciente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/EjemploOcupacion"
        },
        "name" : "Ocupación de un Paciente",
        "description" : "Ejemplo del trabajo que cumple como dato estadistico requerido al momento de realizar el ingreso a la atención.",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOcupacion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/MPI.PIXm.pix"
        },
        "name" : "Operación para Obtener Identificadores Correspondientes",
        "description" : "Operación compatible con la [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition-IHE.PIXm.pix.html) para obtener los identificadores correspondientes de cada recurso paciente\n  * Input: sourceIdentifier, targetSystem, and _format\n  * Output: targetIdentifier, targetId",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/NID.IHE.HPD.Source"
        },
        "name" : "Origen del Directorio de Proveedores de Atención Médica",
        "description" : "El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso condicional del Perfil \\\"Prestador Administrativo\\\", \\\"Prestador Individual\\\" y \\\"Prestador Organizacional\\\"",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSOrigenDiscapacidad"
        },
        "name" : "Origen Discapacidad",
        "description" : "Origen Discapacidad",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSOrigenDiscapacidad"
        },
        "name" : "Origen Discapacidad",
        "description" : "Origen Discapacidad",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/MinsalPacienteEjemplo"
        },
        "name" : "Paciente Ejemplo MPI",
        "description" : "Ejemplo de un paciente dentro del Indice Maestro del Paciente.",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/DuplicadoMPIPaciente"
        },
        "name" : "Paciente Ejemplo MPI Duplicado",
        "description" : "Este paciente se encuentra duplicado pero con información adicional y que no existe en otro sistema.",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PaisOrigenMPI"
        },
        "name" : "País de origen del paciente",
        "description" : "País de origen del paciente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/cs-pais-desconocido"
        },
        "name" : "País Desconocido",
        "description" : "Código para país desconocido",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALPractitionerAdministrativo"
        },
        "name" : "Prestador Administrativo",
        "description" : "Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALPrestadorOrganizacional"
        },
        "name" : "Prestador Institucional",
        "description" : "Organization según [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MINSALPrestadorProfesional"
        },
        "name" : "Prestador Profesional",
        "description" : "Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSPrevision"
        },
        "name" : "Previsión",
        "description" : "Previsión",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSPrevision"
        },
        "name" : "Previsión",
        "description" : "Previsión",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/EjemploPractiAdmin"
        },
        "name" : "Profesional Administrativo de Ejemplo",
        "description" : "Ejemplo de un profesional que es administrativo",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/EjemploPractiProf"
        },
        "name" : "Profesional de Salud de Ejemplo",
        "description" : "Ejemplo de un profesional que entrega servicios de salud",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PueblosAfrodescendiente"
        },
        "name" : "Pueblos Afrodescendiente",
        "description" : "Pueblos Afrodescendiente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PueblosOriginariosMPI"
        },
        "name" : "Pueblos Originarios",
        "description" : "Extensión para describir si el paciente pertenece algún pueblo originario",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/PueblosOriginariosVS"
        },
        "name" : "Pueblos Originarios de Chile",
        "description" : "Pueblos Originarios de Chile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PuebloOriginarioCS"
        },
        "name" : "Pueblos Originarios de Chile",
        "description" : "Pueblos Originarios de Chile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Religion"
        },
        "name" : "Religión",
        "description" : "Religión",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSReligion"
        },
        "name" : "Religión",
        "description" : "Religión",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSReligion"
        },
        "name" : "Religión",
        "description" : "Religión",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/SituacionCalle"
        },
        "name" : "Situacion Calle",
        "description" : "Situacion Calle",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/EjemploSituacionDiscapacidad"
        },
        "name" : "Situacion Discapacidad de un Paciente",
        "description" : "Describe de manera simplificada la situacion de discapacidad de un paciente. En este caso una visual",
        "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSTipoObservacion"
        },
        "name" : "Tipo de Observacion",
        "description" : "Codificación para identificar las distintas observaciones existentes dentro del MPI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSTipoIdentificador"
        },
        "name" : "Tipo Identificador",
        "description" : "Tipo Identificador",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSTipoIdentificador"
        },
        "name" : "Tipo Identificador",
        "description" : "Tipo Identificador",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSTipoObservacion"
        },
        "name" : "Tipo Observacion",
        "description" : "Codificación para identificar las distintas observaciones existentes dentro del MPI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSTiposIdentificadorPaciente"
        },
        "name" : "Tipos de Identificadores de Paciente",
        "description" : "Tipos de Identificadores de Paciente",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSTramosFONASA"
        },
        "name" : "Tramos de FONASA",
        "description" : "Tramos de FONASA",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSTramosFONASA"
        },
        "name" : "Tramos de FONASA",
        "description" : "Tramos de FONASA",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSTituloProfesional"
        },
        "name" : "Título Profesional",
        "description" : "Título del Prestador Profesional",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSTituloProfesional"
        },
        "name" : "Título Profesional",
        "description" : "Título del Prestador Profesional",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ValorDeLaClase"
        },
        "name" : "Valor de la Clase",
        "description" : "Da el valor de class del Coverage, de manera codificada",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSValoracionDesempeno"
        },
        "name" : "Valoracion Desempeno",
        "description" : "Valoracion Desempeno",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSValoracionDesempeno"
        },
        "name" : "Valoracion Desempeño",
        "description" : "Valoracion Desempeño",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VSUNivelAprob"
        },
        "name" : "Último nivel aprobado",
        "description" : "Código del último nivel aprobado",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/CSUNivelAprob"
        },
        "name" : "Último nivel aprobado",
        "description" : "Código del último nivel aprobado",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Inicio",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "negocioMPI.html"
            }
          ],
          "nameUrl" : "negocioMPI.html",
          "title" : "Especificaciones de Negocio \"Índice Maestro de Pacientes\"",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "negocioHPD.html"
            }
          ],
          "nameUrl" : "negocioHPD.html",
          "title" : "Especificaciones de Negocio \"Directorio de Proveedores de Atención Médica\"",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transaccionesBusquedasMPI.html"
            }
          ],
          "nameUrl" : "transaccionesBusquedasMPI.html",
          "title" : "Casos de Uso y Transacciones \"Índice Maestro de Pacientes\"",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transaccionesBusquedasHPD.html"
            }
          ],
          "nameUrl" : "transaccionesBusquedasHPD.html",
          "title" : "Casos de Uso y Transacciones \"Directorio de Proveedores de Atención Médica\"",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "artifacts.html"
            }
          ],
          "nameUrl" : "artifacts.html",
          "title" : "Artefactos Generados",
          "generation" : "html"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "changes.html"
            }
          ],
          "nameUrl" : "changes.html",
          "title" : "Historial de Cambios",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
