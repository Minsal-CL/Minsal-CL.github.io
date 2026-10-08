# Establecimiento de destino - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento de destino**

## Extension: Establecimiento de destino 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:ExtEstablecimientoDestino |

Establecimiento donde continúa la atención tras el IPD (deisEstablecimientoDestino).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md)
* Examples for this Extension: [Bundle/msg-a4-ipd](Bundle-msg-a4-ipd.md), [Bundle/msg-b1-ipd](Bundle-msg-b1-ipd.md), [Bundle/msg-d2-ipd](Bundle-msg-d2-ipd.md), [Condition/ipd-a](Condition-ipd-a.md)... Show 2 more, [Condition/ipd-b](Condition-ipd-b.md) and [Condition/ipd-d](Condition-ipd-d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-ext-establecimiento-destino.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-establecimiento-destino.csv), [Excel](StructureDefinition-ext-establecimiento-destino.xlsx), [Schematron](StructureDefinition-ext-establecimiento-destino.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-establecimiento-destino",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino",
  "version" : "0.4.0",
  "name" : "ExtEstablecimientoDestino",
  "title" : "Establecimiento de destino",
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
  "description" : "Establecimiento donde continúa la atención tras el IPD (deisEstablecimientoDestino).",
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
      "short" : "Establecimiento de destino",
      "definition" : "Establecimiento donde continúa la atención tras el IPD (deisEstablecimientoDestino)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }]
    }]
  }
}

```
