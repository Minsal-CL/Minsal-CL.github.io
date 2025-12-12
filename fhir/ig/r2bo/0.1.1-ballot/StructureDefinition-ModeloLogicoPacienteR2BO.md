# Modelo Logico De un Paciente del R2BO - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modelo Logico De un Paciente del R2BO**

## Logical Model: Modelo Logico De un Paciente del R2BO 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoPacienteR2BO | *Version*:0.1.1-ballot |
| Draft as of 2025-12-12 | *Computable Name*:PacienteR2BOLogico |

 
Modelo lógico para el conjunto de datos mínimo de un paciente del R2BO. 

**Usages:**

* Refer to this Logical Model: [Modelo Lógico de Informe Patológico del R2BO](StructureDefinition-ModeloLogicoInformePatologicoR2BO.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/ModeloLogicoPacienteR2BO)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ModeloLogicoPacienteR2BO.csv), [Excel](StructureDefinition-ModeloLogicoPacienteR2BO.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ModeloLogicoPacienteR2BO",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoPacienteR2BO",
  "version" : "0.1.1-ballot",
  "name" : "PacienteR2BOLogico",
  "title" : "Modelo Logico De un Paciente del R2BO",
  "status" : "draft",
  "date" : "2025-12-12T16:54:01-03:00",
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
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Modelo lógico para el conjunto de datos mínimo de un paciente del R2BO.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "r2bo-paciente-nid-mapping",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
      "name" : "Mapeo de Paciente R2BO a NID",
      "comment" : "Mapeo entre el modelo lógico de Paciente R2BO y el perfil de Paciente MINSAL que se encuentra en la guía del \"Núcleo de interoperabilida de Datos (NID)\"."
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoPacienteR2BO",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ModeloLogicoPacienteR2BO",
        "path" : "ModeloLogicoPacienteR2BO",
        "short" : "Modelo Logico De un Paciente del R2BO",
        "definition" : "Modelo lógico para el conjunto de datos mínimo de un paciente del R2BO."
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.nombres",
        "path" : "ModeloLogicoPacienteR2BO.nombres",
        "short" : "El nombre de las personas naturales, es la designación que dan los padres o representantes legales al momento de realizar la inscripción de nacimiento en la oficina del SRCI.",
        "definition" : "El nombre de las personas naturales, es la designación que dan los padres o representantes legales al momento de realizar la inscripción de nacimiento en la oficina del SRCI.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "HumanName"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.name[NombreOficial].given",
            "comment" : "Nombres del paciente"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.primerApellido",
        "path" : "ModeloLogicoPacienteR2BO.primerApellido",
        "short" : "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres.",
        "definition" : "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.name[NombreOficial].family",
            "comment" : "Primer apellido del paciente"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.segundoApellido",
        "path" : "ModeloLogicoPacienteR2BO.segundoApellido",
        "short" : "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres.",
        "definition" : "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.name[NombreOficial].extension[segundoApellido].valueString",
            "comment" : "Segundo apellido del paciente"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.tipoDeDocumento",
        "path" : "ModeloLogicoPacienteR2BO.tipoDeDocumento",
        "short" : "Identificar el tipo del documento de identidad, por el cual se va a identificar el paciente.",
        "definition" : "Identificar el tipo del documento de identidad, por el cual se va a identificar el paciente.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier.type",
            "comment" : "Tipo de documento de identidad del paciente."
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.numeroDeDocumento",
        "path" : "ModeloLogicoPacienteR2BO.numeroDeDocumento",
        "short" : "Número de documento de identidad del paciente.",
        "definition" : "Número de documento de identidad del paciente.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier.value",
            "comment" : "Número de documento de identidad del paciente."
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.run",
        "path" : "ModeloLogicoPacienteR2BO.run",
        "short" : "El RUN es el n° de identificación que entrega la mayor credibilidad para la individualización inequívoca de las personas y se debe utilizar en todas las personas que lo poseen. En Chile es único, irrepetible e intransferible que posee todo chileno resida o no en Chile.",
        "definition" : "El RUN es el n° de identificación que entrega la mayor credibilidad para la individualización inequívoca de las personas y se debe utilizar en todas las personas que lo poseen. En Chile es único, irrepetible e intransferible que posee todo chileno resida o no en Chile.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier",
            "comment" : "Paciente identificado con RUN"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.digitoVerificador",
        "path" : "ModeloLogicoPacienteR2BO.digitoVerificador",
        "short" : "Parte de la estructura del RUN y debe permitir valor numérico, incluído el cero y la letra k mayúscula o minúscula.",
        "definition" : "Parte de la estructura del RUN y debe permitir valor numérico, incluído el cero y la letra k mayúscula o minúscula.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier.value",
            "comment" : "Este dato es parte del número de documento de identidad del paciente."
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.runProvisorio",
        "path" : "ModeloLogicoPacienteR2BO.runProvisorio",
        "short" : "Es el documento entregado de forma provisoria, por una entidad publica chilena.",
        "definition" : "Es el documento entregado de forma provisoria, por una entidad publica chilena.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier",
            "comment" : "Paciente identificado con RUN Provisorio"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.dni",
        "path" : "ModeloLogicoPacienteR2BO.dni",
        "short" : "Es el numero de documento de identificacion de un extranjero, documento entregado en el país de origen",
        "definition" : "Es el numero de documento de identificacion de un extranjero, documento entregado en el país de origen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier",
            "comment" : "Paciente identificado con DNI"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.pasaporte",
        "path" : "ModeloLogicoPacienteR2BO.pasaporte",
        "short" : "Es el documento de identidad internacional, en formato de libreta electrónica, confeccionado por el estado de Chile que permite a sus ciudadanos salir del país e ingresar a otro, por los puertos o aeropuertos internacionales.",
        "definition" : "Es el documento de identidad internacional, en formato de libreta electrónica, confeccionado por el estado de Chile que permite a sus ciudadanos salir del país e ingresar a otro, por los puertos o aeropuertos internacionales.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.identifier",
            "comment" : "Paciente identificado con pasaporte"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.sexoBiologico",
        "path" : "ModeloLogicoPacienteR2BO.sexoBiologico",
        "short" : "Es la determinación hecha a través de la aplicación de criterios biológicos para clasificar a las personas como hombres o mujeres al momento de nacer.",
        "definition" : "Es la determinación hecha a través de la aplicación de criterios biológicos para clasificar a las personas como hombres o mujeres al momento de nacer.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.extension[SexoBiologico].valueCode",
            "comment" : "Sexo biológico del paciente"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.fechaDeNacimiento",
        "path" : "ModeloLogicoPacienteR2BO.fechaDeNacimiento",
        "short" : "Momento exacto por el cual un ser humano deja de estar alojado en el vientre de su madre y se corta el cordón umbilical que lo une a la placenta. Se expresa en términos de día, mes y año.",
        "definition" : "Momento exacto por el cual un ser humano deja de estar alojado en el vientre de su madre y se corta el cordón umbilical que lo une a la placenta. Se expresa en términos de día, mes y año.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.birthDate",
            "comment" : "Fecha de nacimiento del paciente"
          }
        ]
      },
      {
        "id" : "ModeloLogicoPacienteR2BO.edad",
        "path" : "ModeloLogicoPacienteR2BO.edad",
        "short" : "Tiempo de existencia de una persona, intervalo de tiempo estimado o calculado entre el día, mes y año del nacimiento y el día, mes y año en que ocurre un hecho o acontecimiento en cualquier momento posterior al nacimiento. Se expresa en años, meses, semanas, días u horas de vida.",
        "definition" : "Tiempo de existencia de una persona, intervalo de tiempo estimado o calculado entre el día, mes y año del nacimiento y el día, mes y año en que ocurre un hecho o acontecimiento en cualquier momento posterior al nacimiento. Se expresa en años, meses, semanas, días u horas de vida.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Age"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "r2bo-paciente-nid-mapping",
            "map" : "Patient.birthDate",
            "comment" : "Edad del paciente es calculada a partir de la fecha de nacimiento"
          }
        ]
      }
    ]
  }
}

```
