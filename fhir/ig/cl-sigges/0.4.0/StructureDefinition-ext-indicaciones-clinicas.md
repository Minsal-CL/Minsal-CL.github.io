# Tratamiento e indicaciones - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tratamiento e indicaciones**

## Extension: Tratamiento e indicaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:ExtIndicacionesClinicas |

Texto libre de tratamiento e indicaciones (indicacionExamen en la API v1.5).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Diagnóstico GES](StructureDefinition-diagnostico-ges.md)
* Examples for this Extension: [Bundle/msg-a1-sic](Bundle-msg-a1-sic.md), [Bundle/msg-a4-ipd](Bundle-msg-a4-ipd.md), [Bundle/msg-b1-ipd](Bundle-msg-b1-ipd.md), [Bundle/msg-c2-hd](Bundle-msg-c2-hd.md)... Show 6 more, [Bundle/msg-d2-ipd](Bundle-msg-d2-ipd.md), [Condition/cond-a-sospecha](Condition-cond-a-sospecha.md), [Condition/hd-c-confirmado](Condition-hd-c-confirmado.md), [Condition/ipd-a](Condition-ipd-a.md), [Condition/ipd-b](Condition-ipd-b.md) and [Condition/ipd-d](Condition-ipd-d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-ext-indicaciones-clinicas.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-indicaciones-clinicas.csv), [Excel](StructureDefinition-ext-indicaciones-clinicas.xlsx), [Schematron](StructureDefinition-ext-indicaciones-clinicas.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-indicaciones-clinicas",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
  "version" : "0.4.0",
  "name" : "ExtIndicacionesClinicas",
  "title" : "Tratamiento e indicaciones",
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
  "description" : "Texto libre de tratamiento e indicaciones (indicacionExamen en la API v1.5).",
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
      "short" : "Tratamiento e indicaciones",
      "definition" : "Texto libre de tratamiento e indicaciones (indicacionExamen en la API v1.5)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
