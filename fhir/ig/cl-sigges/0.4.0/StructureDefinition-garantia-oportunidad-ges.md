# Garantía de oportunidad - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Garantía de oportunidad**

## Resource Profile: Garantía de oportunidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/garantia-oportunidad-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:GarantiaOportunidadGES |

 
Garantía activa de un caso con su plazo. La publica SIGGES (no la envía el establecimiento) y se obtiene en la consulta de casos. 

**Usages:**

* Examples for this Perfil: [Task/gar-a-701](Task-gar-a-701.md), [Task/gar-a-702](Task-gar-a-702.md) and [Task/gar-a-703](Task-gar-a-703.md)
* CapabilityStatements using this Perfil: [Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)](CapabilityStatement-CSReceptorSIGGES.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-garantia-oportunidad-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-garantia-oportunidad-ges.csv), [Excel](StructureDefinition-garantia-oportunidad-ges.xlsx), [Schematron](StructureDefinition-garantia-oportunidad-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "garantia-oportunidad-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/garantia-oportunidad-ges",
  "version" : "0.4.0",
  "name" : "GarantiaOportunidadGES",
  "title" : "Garantía de oportunidad",
  "status" : "draft",
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Garantía activa de un caso con su plazo. La publica SIGGES (no la envía el establecimiento) y se obtiene en la consulta de casos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.extension",
      "path" : "Task.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Task.extension:garantia",
      "path" : "Task.extension",
      "sliceName" : "garantia",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-estado-garantia-ges"
      }
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "patternCode" : "plan"
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
          "code" : "garantia"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.period",
      "path" : "Task.restriction.period",
      "short" : "Plazo de la garantía: start = hito de inicio; end = fecha límite",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
