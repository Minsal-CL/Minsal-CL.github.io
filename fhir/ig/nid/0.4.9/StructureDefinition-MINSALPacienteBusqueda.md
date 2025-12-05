# MINSAL Paciente Busqueda - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Paciente Busqueda**

## Resource Profile: MINSAL Paciente Busqueda 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MINSALPacienteBusqueda |

 
Paciente definido para la busqueda dentro del "Indice Maestro de Pacientes". Este es utilizado en la operación $match como parámetro de entrada. 

**Usages:**

* Examples for this Profile: [Patient/EjemploPacienteBusqueda](Patient-EjemploPacienteBusqueda.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match"](CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALPacienteBusqueda)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALPacienteBusqueda.csv), [Excel](StructureDefinition-MINSALPacienteBusqueda.xlsx), [Schematron](StructureDefinition-MINSALPacienteBusqueda.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALPacienteBusqueda",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda",
  "version" : "0.4.9",
  "name" : "MINSALPacienteBusqueda",
  "title" : "MINSAL Paciente Busqueda",
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
  "description" : "Paciente definido para la busqueda dentro del \"Indice Maestro de Pacientes\". Este es utilizado en la operación $match como parámetro de entrada.",
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
        "path" : "Patient"
      },
      {
        "id" : "Patient.implicitRules",
        "path" : "Patient.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Patient.extension:nacionalidad",
        "path" : "Patient.extension",
        "sliceName" : "nacionalidad",
        "max" : "1"
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
        "short" : "Identificador de paciente"
      },
      {
        "id" : "Patient.identifier.type",
        "path" : "Patient.identifier.type",
        "short" : "Tipo de documento",
        "definition" : "Tipo de documento",
        "comment" : "Tipo de documento",
        "binding" : {
          "strength" : "required",
          "description" : "Identificadores definidos por DEIS",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTiposIdentificadorPaciente"
        }
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Valor del identificador",
        "mustSupport" : true
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "short" : "Si el registro de este paciente está en uso activo.",
        "mustSupport" : true
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
        "short" : "Sexo Registral del paciente"
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "short" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "definition" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension:Geolocalizacion",
        "path" : "Patient.address.extension",
        "sliceName" : "Geolocalizacion",
        "short" : "Dirección absoluta, es decir, latitud y longitud."
      },
      {
        "id" : "Patient.address.extension:SituacionCalle",
        "path" : "Patient.address.extension",
        "sliceName" : "SituacionCalle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "short" : "Calle o avenida, numero y casa o dpto",
        "definition" : "Calle o avenida, numero y casa o dpto",
        "max" : "1"
      },
      {
        "id" : "Patient.address.city.extension",
        "path" : "Patient.address.city.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.district.extension",
        "path" : "Patient.address.district.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.state.extension",
        "path" : "Patient.address.state.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.country.extension",
        "path" : "Patient.address.country.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.period",
        "path" : "Patient.address.period",
        "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
        "mustSupport" : true
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
      }
    ]
  }
}

```
