# MINSAL Bundle Resultado Operación Match - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Bundle Resultado Operación Match**

## Resource Profile: MINSAL Bundle Resultado Operación Match 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPIMatch | *Version*:0.4.8 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BundleSearchMPIMatch |

 
Bundle resultado de una busqueda de un recurso paciente mediante la operación[$match](OperationDefinition-MPI.PDQm.match.md) 

**Usages:**

* Examples for this Profile: [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md) and [Bundle/EjemploBusquedaMatchOutcomeOperation](Bundle-EjemploBusquedaMatchOutcomeOperation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/BundleSearchMPIMatch)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleSearchMPIMatch.csv), [Excel](StructureDefinition-BundleSearchMPIMatch.xlsx), [Schematron](StructureDefinition-BundleSearchMPIMatch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleSearchMPIMatch",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPIMatch",
  "version" : "0.4.8",
  "name" : "BundleSearchMPIMatch",
  "title" : "MINSAL Bundle Resultado Operación Match",
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
  "description" : "Bundle resultado de una busqueda de un recurso paciente mediante la operación [$match](OperationDefinition-MPI.PDQm.match.html)",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.implicitRules",
        "path" : "Bundle.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "short" : "Tipo de Bundle, para el caso de uso es un \"searchset\"",
        "patternCode" : "searchset",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "short" : "Numero total de resultados",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "description" : "Diferenciación de los resultados de la busqueda",
          "ordered" : false,
          "rules" : "closed"
        },
        "short" : "Entrada de los resultados de la busqueda",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:paciente",
        "path" : "Bundle.entry",
        "sliceName" : "paciente",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Información sobre un individuo que reciva servicio de cuidados de salud",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.search",
        "path" : "Bundle.entry.search",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.search.extension",
        "path" : "Bundle.entry.search.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:paciente.search.extension:matchgrade",
        "path" : "Bundle.entry.search.extension",
        "sliceName" : "matchgrade",
        "short" : "Grado de coincidencia de la consulta",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/match-grade|5.2.0"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.search.mode",
        "path" : "Bundle.entry.search.mode",
        "short" : "match | include | outcome - \"por qué\" esta en el set de resultado",
        "min" : 1,
        "patternCode" : "match",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.search.score",
        "path" : "Bundle.entry.search.score",
        "short" : "Puntaje de la coincidencia (entre 0 y 1)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:operationOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "operationOutcome",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:operationOutcome.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Información sobre el resultado de una operación en caso de no encontrar coincidencia",
        "type" : [
          {
            "code" : "OperationOutcome"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
