# Estado de hoja diaria APS - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado de hoja diaria APS**

## Extension: Estado de hoja diaria APS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:ExtEstadoHojaDiaria |

Estado del caso en la hoja diaria APS, específico por rama (campo estado de la API v1.5).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HD — Hoja diaria APS](StructureDefinition-hoja-diaria-ges.md)
* Examples for this Extension: [Bundle/msg-c1-hd](Bundle-msg-c1-hd.md), [Bundle/msg-c2-hd](Bundle-msg-c2-hd.md), [Condition/hd-c-confirmado](Condition-hd-c-confirmado.md) and [Condition/hd-c-sospecha](Condition-hd-c-sospecha.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-ext-estado-hoja-diaria.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-estado-hoja-diaria.csv), [Excel](StructureDefinition-ext-estado-hoja-diaria.xlsx), [Schematron](StructureDefinition-ext-estado-hoja-diaria.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-estado-hoja-diaria",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria",
  "version" : "0.4.0",
  "name" : "ExtEstadoHojaDiaria",
  "title" : "Estado de hoja diaria APS",
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
  "description" : "Estado del caso en la hoja diaria APS, específico por rama (campo estado de la API v1.5).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Estado de hoja diaria APS",
      "definition" : "Estado del caso en la hoja diaria APS, específico por rama (campo estado de la API v1.5)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-estado-hoja-diaria-ges"
      }
    }]
  }
}

```
