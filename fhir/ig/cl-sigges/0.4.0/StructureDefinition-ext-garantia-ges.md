# Garantía GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Garantía GES**

## Extension: Garantía GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:ExtGarantiaGES |

Garantía GES a la que se imputa el documento (campo garantia de la API v1.5).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md), [Garantía de oportunidad](StructureDefinition-garantia-oportunidad-ges.md), [OA — Orden de atención](StructureDefinition-oa-ges.md) and [PO — Prestación otorgada](StructureDefinition-po-ges.md)
* Examples for this Extension: [Bundle/consulta-casos-pac-a](Bundle-consulta-casos-pac-a.md), [Bundle/msg-a2-oa](Bundle-msg-a2-oa.md), [Bundle/msg-a3-po](Bundle-msg-a3-po.md), [Bundle/msg-a5-oa](Bundle-msg-a5-oa.md)... Show 14 more, [Bundle/msg-a6-po](Bundle-msg-a6-po.md), [Bundle/msg-b2-oa](Bundle-msg-b2-oa.md), [Bundle/msg-b3-po](Bundle-msg-b3-po.md), [Bundle/msg-c3-exgo](Bundle-msg-c3-exgo.md), [Procedure/po-a-cirugia](Procedure-po-a-cirugia.md), [Procedure/po-a-endoscopia](Procedure-po-a-endoscopia.md), [Procedure/po-b-hemodialisis](Procedure-po-b-hemodialisis.md), [ServiceRequest/oa-a-cirugia](ServiceRequest-oa-a-cirugia.md), [ServiceRequest/oa-a-endoscopia](ServiceRequest-oa-a-endoscopia.md), [ServiceRequest/oa-b-hemodialisis](ServiceRequest-oa-b-hemodialisis.md), [Task/exgo-c](Task-exgo-c.md), [Task/gar-a-701](Task-gar-a-701.md), [Task/gar-a-702](Task-gar-a-702.md) and [Task/gar-a-703](Task-gar-a-703.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-ext-garantia-ges.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-garantia-ges.csv), [Excel](StructureDefinition-ext-garantia-ges.xlsx), [Schematron](StructureDefinition-ext-garantia-ges.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-garantia-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
  "version" : "0.4.0",
  "name" : "ExtGarantiaGES",
  "title" : "Garantía GES",
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
  "description" : "Garantía GES a la que se imputa el documento (campo garantia de la API v1.5).",
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
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Garantía GES",
      "definition" : "Garantía GES a la que se imputa el documento (campo garantia de la API v1.5)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-garantia-ges"
      }
    }]
  }
}

```
