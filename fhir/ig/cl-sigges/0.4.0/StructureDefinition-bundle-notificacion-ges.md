# Bundle — Notificación GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle — Notificación GES**

## Resource Profile: Bundle — Notificación GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:BundleNotificacionGES |

 
Sobre de un documento SIGGES: MessageHeader + núcleo común (Patient, PractitionerRole, Practitioner, Organization, EpisodeOfCare) + recurso foco + Observation opcionales. Se envía a $process-message. 

**Usages:**

* Examples for this Perfil: [Bundle/msg-a1-sic](Bundle-msg-a1-sic.md), [Bundle/msg-a2-oa](Bundle-msg-a2-oa.md), [Bundle/msg-a3-po](Bundle-msg-a3-po.md), [Bundle/msg-a4-ipd](Bundle-msg-a4-ipd.md)... Show 11 more, [Bundle/msg-a5-oa](Bundle-msg-a5-oa.md), [Bundle/msg-a6-po](Bundle-msg-a6-po.md), [Bundle/msg-b1-ipd](Bundle-msg-b1-ipd.md), [Bundle/msg-b2-oa](Bundle-msg-b2-oa.md), [Bundle/msg-b3-po](Bundle-msg-b3-po.md), [Bundle/msg-c1-hd](Bundle-msg-c1-hd.md), [Bundle/msg-c2-hd](Bundle-msg-c2-hd.md), [Bundle/msg-c3-exgo](Bundle-msg-c3-exgo.md), [Bundle/msg-d1-sic](Bundle-msg-d1-sic.md), [Bundle/msg-d2-ipd](Bundle-msg-d2-ipd.md) and [Bundle/msg-d3-cc](Bundle-msg-d3-cc.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-bundle-notificacion-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bundle-notificacion-ges.csv), [Excel](StructureDefinition-bundle-notificacion-ges.xlsx), [Schematron](StructureDefinition-bundle-notificacion-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bundle-notificacion-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges",
  "version" : "0.4.0",
  "name" : "BundleNotificacionGES",
  "title" : "Bundle — Notificación GES",
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
  "description" : "Sobre de un documento SIGGES: MessageHeader + núcleo común (Patient, PractitionerRole, Practitioner, Organization, EpisodeOfCare) + recurso foco + Observation opcionales. Se envía a $process-message.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "constraint" : [{
        "key" : "ges-msg-1",
        "severity" : "error",
        "human" : "La primera entrada del Bundle debe ser el MessageHeader",
        "expression" : "entry.first().resource.is(MessageHeader)",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"
      },
      {
        "key" : "ges-msg-2",
        "severity" : "error",
        "human" : "El mensaje debe incluir exactamente un Patient y un EpisodeOfCare (el caso GES)",
        "expression" : "entry.resource.ofType(Patient).count() = 1 and entry.resource.ofType(EpisodeOfCare).count() = 1",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"
      },
      {
        "key" : "ges-msg-3",
        "severity" : "error",
        "human" : "Todas las entradas deben tener fullUrl",
        "expression" : "entry.all(fullUrl.exists())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"
      },
      {
        "key" : "ges-msg-4",
        "severity" : "error",
        "human" : "Coherencia evento–foco: SIC y OA ⇒ ServiceRequest; IPD y HD ⇒ Condition; PO ⇒ Procedure; CC y EXGO ⇒ Task",
        "expression" : "entry.first().resource.ofType(MessageHeader).all(\n  (event.code in ('SIC' | 'OA') implies focus.first().reference.matches('(^|/)ServiceRequest/[^/]+$')) and\n  (event.code in ('IPD' | 'HD') implies focus.first().reference.matches('(^|/)Condition/[^/]+$')) and\n  (event.code = 'PO' implies focus.first().reference.matches('(^|/)Procedure/[^/]+$')) and\n  (event.code in ('CC' | 'EXGO') implies focus.first().reference.matches('(^|/)Task/[^/]+$'))\n)",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Id único del mensaje (reintentos usan el mismo)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "message"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 4,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1
    }]
  }
}

```
