# HD — Hoja diaria APS - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HD — Hoja diaria APS**

## Resource Profile: HD — Hoja diaria APS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/hoja-diaria-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:HojaDiariaGES |

 
Registro APS del estado del caso por rama. El estado específico (catálogo ESTADOS HD) va en extensión; verificationStatus lleva la semántica genérica. 

**Usages:**

* Examples for this Perfil: [Condition/hd-c-confirmado](Condition-hd-c-confirmado.md) and [Condition/hd-c-sospecha](Condition-hd-c-sospecha.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-hoja-diaria-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hoja-diaria-ges.csv), [Excel](StructureDefinition-hoja-diaria-ges.xlsx), [Schematron](StructureDefinition-hoja-diaria-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hoja-diaria-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/hoja-diaria-ges",
  "version" : "0.4.0",
  "name" : "HojaDiariaGES",
  "title" : "HD — Hoja diaria APS",
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
  "description" : "Registro APS del estado del caso por rama. El estado específico (catálogo ESTADOS HD) va en extensión; verificationStatus lleva la semántica genérica.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "min" : 2
    },
    {
      "id" : "Condition.extension:estadoHD",
      "path" : "Condition.extension",
      "sliceName" : "estadoHD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "min" : 1
    },
    {
      "id" : "Condition.identifier:folio",
      "path" : "Condition.identifier",
      "sliceName" : "folio",
      "min" : 1
    }]
  }
}

```
