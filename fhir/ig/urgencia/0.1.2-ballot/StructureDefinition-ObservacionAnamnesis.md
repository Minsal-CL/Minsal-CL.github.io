# Observación Anamnesis - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Anamnesis**

## Resource Profile: Observación Anamnesis 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionAnamnesis | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:ObservacionAnamnesis |

 
Observación de la anamnesis de un paciente en un servicio de urgencia 

**Usages:**

* Use this Profile: [Bundle Atención](StructureDefinition-BundleAtencion.md)
* Examples for this Profile: [Observation/7ea8cb9a-fc10-44ad-8c52-de03c4517b30](Observation-7ea8cb9a-fc10-44ad-8c52-de03c4517b30.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/ObservacionAnamnesis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservacionAnamnesis.csv), [Excel](StructureDefinition-ObservacionAnamnesis.xlsx), [Schematron](StructureDefinition-ObservacionAnamnesis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservacionAnamnesis",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionAnamnesis",
  "version" : "0.1.2-ballot",
  "name" : "ObservacionAnamnesis",
  "title" : "Observación Anamnesis",
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
  "description" : "Observación de la anamnesis de un paciente en un servicio de urgencia",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Estado de la observación, en este caso #registered",
        "patternCode" : "registered"
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid",
        "min" : 1,
        "patternUri" : "http://snomed.info/sct",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "patternCode" : "84100007",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding.display",
        "path" : "Observation.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.text",
        "path" : "Observation.code.text",
        "patternString" : "Anamnesis",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Paciente que se le realiza la anamnesis",
        "definition" : "Paciente que se le realiza la anamnesis",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "Encuentro de atención de urgencia",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.effective[x]:effectiveDateTime",
        "path" : "Observation.effective[x]",
        "sliceName" : "effectiveDateTime",
        "short" : "Tiempo o momento en que se realizo anamnesis",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Profesional que realiza la anamnesis",
        "min" : 1,
        "max" : "1",
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Anamnesis",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
