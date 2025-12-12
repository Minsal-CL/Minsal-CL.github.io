# Procedimientos de Urgencias - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedimientos de Urgencias**

## Resource Profile: Procedimientos de Urgencias 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Procedimiento | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:Procedimiento |

 
Registro de un procedimiento realizado a un paciente 

**Usages:**

* Use this Profile: [Bundle Atención](StructureDefinition-BundleAtencion.md)
* Examples for this Profile: [Procedure/dc28ac35-92d9-495c-b97f-78ce3733c671](Procedure-dc28ac35-92d9-495c-b97f-78ce3733c671.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/Procedimiento)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Procedimiento.csv), [Excel](StructureDefinition-Procedimiento.xlsx), [Schematron](StructureDefinition-Procedimiento.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Procedimiento",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Procedimiento",
  "version" : "0.1.2-ballot",
  "name" : "Procedimiento",
  "title" : "Procedimientos de Urgencias",
  "status" : "draft",
  "date" : "2025-12-10T16:35:01-03:00",
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
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Registro de un procedimiento realizado a un paciente",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure.id",
        "path" : "Procedure.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "short" : "Estado del procedimiento",
        "patternCode" : "completed",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding",
        "path" : "Procedure.code.coding",
        "short" : "Códigos definidos por un sistema terminológico"
      },
      {
        "id" : "Procedure.code.coding.system",
        "path" : "Procedure.code.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding.code",
        "path" : "Procedure.code.coding.code",
        "short" : "Código definido en un sistema terminológico",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.text",
        "path" : "Procedure.code.text",
        "short" : "Detalle del procedimiento en texto libre",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "short" : "Paciente al que se le realizó el procedimiento",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.encounter",
        "path" : "Procedure.encounter",
        "short" : "Encuentro en donde se realizó el procedimiento",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Procedure.performed[x]:performedDateTime",
        "path" : "Procedure.performed[x]",
        "sliceName" : "performedDateTime",
        "short" : "Fecha y hora en que se realizó el procedimiento.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performer",
        "path" : "Procedure.performer",
        "short" : "Persona que realizó el procedimiento",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performer.actor",
        "path" : "Procedure.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.reasonCode",
        "path" : "Procedure.reasonCode",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.reasonCode.text",
        "path" : "Procedure.reasonCode.text",
        "short" : "Razón en texto libre",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
