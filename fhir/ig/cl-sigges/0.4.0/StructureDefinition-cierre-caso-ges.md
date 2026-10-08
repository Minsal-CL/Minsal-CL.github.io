# CC — Cierre de caso - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CC — Cierre de caso**

## Resource Profile: CC — Cierre de caso 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/cierre-caso-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CierreCasoGES |

 
Cierre del caso GES con su causal. focus apunta al caso. 

**Usages:**

* Examples for this Perfil: [Task/cc-d](Task-cc-d.md)
* CapabilityStatements using this Perfil: [Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)](CapabilityStatement-CSReceptorSIGGES.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-cierre-caso-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cierre-caso-ges.csv), [Excel](StructureDefinition-cierre-caso-ges.xlsx), [Schematron](StructureDefinition-cierre-caso-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cierre-caso-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/cierre-caso-ges",
  "version" : "0.4.0",
  "name" : "CierreCasoGES",
  "title" : "CC — Cierre de caso",
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
  "description" : "Cierre del caso GES con su causal. focus apunta al caso.",
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
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Folio del documento en el sistema de origen",
      "min" : 1
    },
    {
      "id" : "Task.identifier:folio",
      "path" : "Task.identifier",
      "sliceName" : "folio",
      "short" : "folioDocumentoHospital — clave de idempotencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier:folio.system",
      "path" : "Task.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento"
    },
    {
      "id" : "Task.identifier:folio.value",
      "path" : "Task.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier:folio.assigner",
      "path" : "Task.identifier.assigner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "patternCode" : "completed"
    },
    {
      "id" : "Task.statusReason",
      "path" : "Task.statusReason",
      "short" : "tipCieCa: causal de cierre",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-causal-cierre-caso"
      }
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "patternCode" : "order"
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
          "code" : "cierre-caso"
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
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.note",
      "path" : "Task.note",
      "short" : "observacionCierre",
      "mustSupport" : true
    }]
  }
}

```
