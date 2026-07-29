# CarePlan Indicaciones - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CarePlan Indicaciones**

## Resource Profile: CarePlan Indicaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/CarePlanIndicaciones | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:CarePlanIndicaciones |

 
Registro de indicaciones al término de una atención de urgencia 

**Usages:**

* Use this Profile: [Bundle Atención](StructureDefinition-BundleAtencion.md)
* Examples for this Profile: [CarePlan/23eb67e4-4fd5-4315-963a-3c5e63fff3a5](CarePlan-23eb67e4-4fd5-4315-963a-3c5e63fff3a5.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/CarePlanIndicaciones)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarePlanIndicaciones.csv), [Excel](StructureDefinition-CarePlanIndicaciones.xlsx), [Schematron](StructureDefinition-CarePlanIndicaciones.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarePlanIndicaciones",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/CarePlanIndicaciones",
  "version" : "0.1.2-ballot",
  "name" : "CarePlanIndicaciones",
  "title" : "CarePlan Indicaciones",
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
  "description" : "Registro de indicaciones al término de una atención de urgencia",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "short" : "Estado del plan de cuidados, en este caso #active",
        "patternCode" : "active",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "short" : "Propósito del plan de cuidados, en este caso #proposal",
        "patternCode" : "proposal",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
        "short" : "Paciente al que se le asigna el plan de cuidados",
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
        "id" : "CarePlan.encounter",
        "path" : "CarePlan.encounter",
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
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.created",
        "path" : "CarePlan.created",
        "short" : "Fecha y hora en que se crea el plan de cuidados",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.author",
        "path" : "CarePlan.author",
        "short" : "Profesional que registra el plan de cuidados",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity",
        "path" : "CarePlan.activity",
        "short" : "Actividades que se deben realizar en el plan de cuidados",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail",
        "path" : "CarePlan.activity.detail",
        "short" : "Detalle de la actividad",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.status",
        "path" : "CarePlan.activity.detail.status",
        "short" : "Estado de la actividad, en este caso #not-started",
        "patternCode" : "not-started",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.description",
        "path" : "CarePlan.activity.detail.description",
        "short" : "Descripción de la actividad",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
