# MINSAL Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Paciente**

## Resource Profile: MINSAL Paciente 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MINSALPaciente |

 
Paciente definido para el Registro Maestro de Pacientes 

#### Uso de Extensiones:

Para realizar el cumplimiento de la norma 231, de estandares de información en salud y los datos mínimos de Paciente, se hace uso de las siguientes extensiones:

* [Identidad DeGenero](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html)
* [Sexo Biológico](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-SexoBiologico.html)
* [Nacionalidad](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html)
* [Pais Origen](StructureDefinition-PaisOrigenMPI.md)
* [Religión](StructureDefinition-Religion.md)
* [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md)
* [Pueblo Originarios](StructureDefinition-PueblosOriginariosMPI.md)

#### Estado Marital

Para cumplir con los perfile IHE de Paciente PDQm y PIXm, los cuales requiere el uso del ValueSet ["Marital Status"](http://hl7.org/fhir/ValueSet/marital-status) se generó el [Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR](ConceptMap-MPIMaritalStatusMap.md) para que el dato MaritalStatus del paciente pueda incluir ambos códigos, tanto el solicitado por el DEIS, como por los perfiles IHE.

**Usages:**

* Use this Profile: [MINSAL Bundle Resultado Consulta: Pacientes](StructureDefinition-BundleSearchMPI.md) and [MINSAL Bundle Resultado Operación Match](StructureDefinition-BundleSearchMPIMatch.md)
* Refer to this Profile: [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md), [MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md), [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md), [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)...Show 3 more,[MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md),[MINSAL Paciente](StructureDefinition-MINSALPaciente.md)and[MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md)
* Examples for this Profile: [Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.md), [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.md), [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALPaciente)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALPaciente.csv), [Excel](StructureDefinition-MINSALPaciente.xlsx), [Schematron](StructureDefinition-MINSALPaciente.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALPaciente",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
  "version" : "0.4.9",
  "name" : "MINSALPaciente",
  "title" : "MINSAL Paciente",
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
  "description" : "Paciente definido para el Registro Maestro de Pacientes",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "mpi-pat-enlaceEstado",
            "severity" : "error",
            "human" : "Si el elemento Patient.link está presente, entonces **DEBE** estar presente el Patient.active",
            "expression" : "link.exists() implies active.exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
          }
        ]
      },
      {
        "id" : "Patient.implicitRules",
        "path" : "Patient.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Patient.extension:PaisOrigen",
        "path" : "Patient.extension",
        "sliceName" : "PaisOrigen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:Religion",
        "path" : "Patient.extension",
        "sliceName" : "Religion",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Religion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PueblosAfrodescendiente",
        "path" : "Patient.extension",
        "sliceName" : "PueblosAfrodescendiente",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosAfrodescendiente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PuebloOriginario",
        "path" : "Patient.extension",
        "sliceName" : "PuebloOriginario",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.modifierExtension",
        "path" : "Patient.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Identificador de paciente",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.type",
        "path" : "Patient.identifier.type",
        "short" : "Tipo de documento",
        "definition" : "Tipo de documento",
        "comment" : "Tipo de documento",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "description" : "Identificadores definidos por DEIS",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTiposIdentificadorPaciente"
        }
      },
      {
        "id" : "Patient.identifier.type.coding",
        "path" : "Patient.identifier.type.coding",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Valor del identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "short" : "Si el registro de este paciente está en uso activo.",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "constraint" : [
          {
            "key" : "mpi-pat-nombre",
            "severity" : "error",
            "human" : "En caso de utilizar el dato nombre el Patient.name.given o Patient.name.family o el Patient.name.text debe existir, caso contrario **DEBE** utilizar la extensión data-absent-reason",
            "expression" : "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:NombreOficial",
        "path" : "Patient.name",
        "sliceName" : "NombreOficial",
        "constraint" : [
          {
            "key" : "mpi-pat-nombre",
            "severity" : "error",
            "human" : "En caso de utilizar el dato nombre el Patient.name.given o Patient.name.family o el Patient.name.text debe existir, caso contrario **DEBE** utilizar la extensión data-absent-reason",
            "expression" : "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
          }
        ]
      },
      {
        "id" : "Patient.name:NombreSocial",
        "path" : "Patient.name",
        "sliceName" : "NombreSocial",
        "constraint" : [
          {
            "key" : "mpi-pat-nombre",
            "severity" : "error",
            "human" : "En caso de utilizar el dato nombre el Patient.name.given o Patient.name.family o el Patient.name.text debe existir, caso contrario **DEBE** utilizar la extensión data-absent-reason",
            "expression" : "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
          }
        ]
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "short" : "phone | email",
        "definition" : "Sistema de contacto",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSSistemasComunicacion"
        }
      },
      {
        "id" : "Patient.telecom.value",
        "path" : "Patient.telecom.value",
        "short" : "Valor de contacto",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.rank",
        "path" : "Patient.telecom.rank",
        "short" : "Orden de uso del método de contacto, siendo 1 = prioritario",
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom.period",
        "path" : "Patient.telecom.period",
        "short" : "Periodo de tiempo durante el cual es válido el contacto del paciente",
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "Sexo Registral del paciente",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "short" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "definition" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/NIDAddress"
            ]
          }
        ]
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "short" : "Estado civil del paciente",
        "mustSupport" : true
      },
      {
        "id" : "Patient.maritalStatus.coding",
        "path" : "Patient.maritalStatus.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "extension del VS MaritalStatus e incluye un codificador adicional para el estado civil del paciente de chile",
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusChile",
        "path" : "Patient.maritalStatus.coding",
        "sliceName" : "MaritalStatusChile",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSEstadoCivil"
        }
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusChile.system",
        "path" : "Patient.maritalStatus.coding.system",
        "min" : 1,
        "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil"
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusChile.code",
        "path" : "Patient.maritalStatus.coding.code",
        "short" : "Estado civil del paciente",
        "definition" : "Estado civil del paciente",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusChile.display",
        "path" : "Patient.maritalStatus.coding.display",
        "short" : "Texto descriptivo del estado civil",
        "mustSupport" : true
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusFHIR",
        "path" : "Patient.maritalStatus.coding",
        "sliceName" : "MaritalStatusFHIR",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/marital-status"
        }
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusFHIR.system",
        "path" : "Patient.maritalStatus.coding.system",
        "min" : 1,
        "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusFHIR.code",
        "path" : "Patient.maritalStatus.coding.code",
        "short" : "Estado civil del paciente",
        "definition" : "Estado civil del paciente",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.maritalStatus.coding:MaritalStatusFHIR.display",
        "path" : "Patient.maritalStatus.coding.display",
        "short" : "Texto descriptivo del estado civil",
        "mustSupport" : true
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "short" : "Enlace que tiene el recurso Minsal Paciente con otro que sea la misma persona",
        "mustSupport" : true
      },
      {
        "id" : "Patient.link.other",
        "path" : "Patient.link.other",
        "short" : "Relación mediante identifier o referencia al recurso",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : false
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.link.type",
        "path" : "Patient.link.type",
        "definition" : "Tipo de enlace",
        "mustSupport" : true
      }
    ]
  }
}

```
