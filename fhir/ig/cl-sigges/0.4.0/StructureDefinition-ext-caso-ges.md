# Caso GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso GES**

## Extension: Caso GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:ExtCasoGES |

Referencia al caso GES (EpisodeOfCare) al que pertenece el documento. En R4 ServiceRequest, Procedure y Condition no tienen un elemento para el episodio.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Diagnóstico GES](StructureDefinition-diagnostico-ges.md), [OA — Orden de atención](StructureDefinition-oa-ges.md), [PO — Prestación otorgada](StructureDefinition-po-ges.md) and [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)
* Examples for this Extension: [Bundle/msg-a1-sic](Bundle-msg-a1-sic.md), [Bundle/msg-a2-oa](Bundle-msg-a2-oa.md), [Bundle/msg-a3-po](Bundle-msg-a3-po.md), [Bundle/msg-a4-ipd](Bundle-msg-a4-ipd.md)... Show 24 more, [Bundle/msg-a5-oa](Bundle-msg-a5-oa.md), [Bundle/msg-a6-po](Bundle-msg-a6-po.md), [Bundle/msg-b1-ipd](Bundle-msg-b1-ipd.md), [Bundle/msg-b2-oa](Bundle-msg-b2-oa.md), [Bundle/msg-b3-po](Bundle-msg-b3-po.md), [Bundle/msg-c1-hd](Bundle-msg-c1-hd.md), [Bundle/msg-c2-hd](Bundle-msg-c2-hd.md), [Bundle/msg-d1-sic](Bundle-msg-d1-sic.md), [Bundle/msg-d2-ipd](Bundle-msg-d2-ipd.md), [Condition/cond-a-sospecha](Condition-cond-a-sospecha.md), [Condition/cond-d-sospecha](Condition-cond-d-sospecha.md), [Condition/hd-c-confirmado](Condition-hd-c-confirmado.md), [Condition/hd-c-sospecha](Condition-hd-c-sospecha.md), [Condition/ipd-a](Condition-ipd-a.md), [Condition/ipd-b](Condition-ipd-b.md), [Condition/ipd-d](Condition-ipd-d.md), [Procedure/po-a-cirugia](Procedure-po-a-cirugia.md), [Procedure/po-a-endoscopia](Procedure-po-a-endoscopia.md), [Procedure/po-b-hemodialisis](Procedure-po-b-hemodialisis.md), [ServiceRequest/oa-a-cirugia](ServiceRequest-oa-a-cirugia.md), [ServiceRequest/oa-a-endoscopia](ServiceRequest-oa-a-endoscopia.md), [ServiceRequest/oa-b-hemodialisis](ServiceRequest-oa-b-hemodialisis.md), [ServiceRequest/sic-a](ServiceRequest-sic-a.md) and [ServiceRequest/sic-d](ServiceRequest-sic-d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-ext-caso-ges.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-caso-ges.csv), [Excel](StructureDefinition-ext-caso-ges.xlsx), [Schematron](StructureDefinition-ext-caso-ges.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-caso-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
  "version" : "0.4.0",
  "name" : "ExtCasoGES",
  "title" : "Caso GES",
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
  "description" : "Referencia al caso GES (EpisodeOfCare) al que pertenece el documento. En R4 ServiceRequest, Procedure y Condition no tienen un elemento para el episodio.",
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
    "expression" : "ServiceRequest"
  },
  {
    "type" : "element",
    "expression" : "Procedure"
  },
  {
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
      "short" : "Caso GES",
      "definition" : "Referencia al caso GES (EpisodeOfCare) al que pertenece el documento. En R4 ServiceRequest, Procedure y Condition no tienen un elemento para el episodio."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      }]
    }]
  }
}

```
