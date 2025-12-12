# Observación Signos Vitales - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Signos Vitales**

## Resource Profile: Observación Signos Vitales 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationSignosVitales | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:ObservationSignosVitales |

 
Recurso empleado para registrar la información de signos vitales de un paciente en un servicio de urgencia. 

**Usages:**

* Use this Profile: [Bundle Categorizacion](StructureDefinition-BundleCategorizacion.md)
* Examples for this Profile: [Observation/3d609e5a-730d-4a32-947c-e632253fa5ff](Observation-3d609e5a-730d-4a32-947c-e632253fa5ff.md) and [Observation/d01f4e15-7f0a-49cf-b5a7-e7dd717526d2](Observation-d01f4e15-7f0a-49cf-b5a7-e7dd717526d2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/ObservationSignosVitales)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservationSignosVitales.csv), [Excel](StructureDefinition-ObservationSignosVitales.xlsx), [Schematron](StructureDefinition-ObservationSignosVitales.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservationSignosVitales",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationSignosVitales",
  "version" : "0.1.2-ballot",
  "name" : "ObservationSignosVitales",
  "title" : "Observación Signos Vitales",
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
  "description" : "Recurso empleado para registrar la información de signos vitales de un paciente en un servicio de urgencia.",
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
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-core-signos-vitales",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Estado de la observación",
        "patternCode" : "registered"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "short" : "Categoría de la observación",
        "definition" : "Categoría de la observación. En este caso, se trata de una observación de signos vitales.",
        "max" : "1"
      },
      {
        "id" : "Observation.category.coding",
        "path" : "Observation.category.coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding.system",
        "path" : "Observation.category.coding.system",
        "min" : 1,
        "patternUri" : "http://terminology.hl7.org/CodeSystem/observation-category",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1,
        "patternCode" : "vital-signs",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:VSCat",
        "path" : "Observation.category",
        "sliceName" : "VSCat"
      },
      {
        "id" : "Observation.category:VSCat.coding",
        "path" : "Observation.category.coding",
        "max" : "1"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Código de la observación",
        "definition" : "Código de la observación. En este caso, se trata de una observación de signos vitales.",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/SignosVitales"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Paciente categorizado",
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
        "short" : "Encuentro de urgencia asociado",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
            ]
          }
        ],
        "mustSupport" : true
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
        "short" : "Fecha y hora en la que se registraron los signos vitales",
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
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Profesional que registra los signos vitales",
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
        "short" : "Valor de la observación",
        "definition" : "Valor de la observación. En este caso, se trata de los signos vitales del paciente."
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "short" : "Razón de ausencia de datos",
        "definition" : "Razón por la que no se registraron los signos vitales del paciente."
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "Componentes de la observación"
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "short" : "Código del componente",
        "definition" : "Código del componente.",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/SignosVitales"
        }
      },
      {
        "id" : "Observation.component.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Valor del componente",
        "definition" : "Valor del componente."
      },
      {
        "id" : "Observation.component.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "short" : "Razón de ausencia de datos"
      }
    ]
  }
}

```
