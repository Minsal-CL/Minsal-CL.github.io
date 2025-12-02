# MINSAL Parámetros Entrada $match PDQM - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Parámetros Entrada $match PDQM**

## Resource Profile: MINSAL Parámetros Entrada $match PDQM 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPDQmMpi | *Version*:0.4.8 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:ParametrosEntradaPDQmMpi |

 
Estos son los parámetros de entrada para la operación[$match](OperationDefinition-MPI.PDQm.match.md)del PDQm 

**Usages:**

* Examples for this Profile: [Parameters/ParametroEntradaIhe-PDQm](Parameters-ParametroEntradaIhe-PDQm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/ParametrosEntradaPDQmMpi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ParametrosEntradaPDQmMpi.csv), [Excel](StructureDefinition-ParametrosEntradaPDQmMpi.xlsx), [Schematron](StructureDefinition-ParametrosEntradaPDQmMpi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ParametrosEntradaPDQmMpi",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile",
      "valueCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPDQmMpi",
  "version" : "0.4.8",
  "name" : "ParametrosEntradaPDQmMpi",
  "title" : "MINSAL Parámetros Entrada $match PDQM",
  "status" : "draft",
  "date" : "2025-11-28T16:21:53-03:00",
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
  "description" : "Estos son los parámetros de entrada para la operación [$match](OperationDefinition-MPI.PDQm.match.html) del PDQm",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters",
        "path" : "Parameters"
      },
      {
        "id" : "Parameters.implicitRules",
        "path" : "Parameters.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "description" : "Definición de cada Parámetro de entrada para la operación $match del PDQm",
          "ordered" : true,
          "rules" : "closed"
        },
        "short" : "Parámetro de Operación",
        "min" : 1
      },
      {
        "id" : "Parameters.parameter.modifierExtension",
        "path" : "Parameters.parameter.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:resource",
        "path" : "Parameters.parameter",
        "sliceName" : "resource",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:resource.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "patternString" : "resource"
      },
      {
        "id" : "Parameters.parameter:resource.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:resource.resource",
        "path" : "Parameters.parameter.resource",
        "short" : "Informcación sobre el individuo que cumple que recibe servicios de salud",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda"
            ]
          }
        ]
      },
      {
        "id" : "Parameters.parameter:resource.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches",
        "path" : "Parameters.parameter",
        "sliceName" : "onlyCertainMatches",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "patternString" : "onlyCertainMatches"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "short" : "Si el parámetro es un tipo de dato",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:count",
        "path" : "Parameters.parameter",
        "sliceName" : "count",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:count.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "patternString" : "count"
      },
      {
        "id" : "Parameters.parameter:count.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "short" : "Si el parámetro es un tipo de dato",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:count.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:count.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
