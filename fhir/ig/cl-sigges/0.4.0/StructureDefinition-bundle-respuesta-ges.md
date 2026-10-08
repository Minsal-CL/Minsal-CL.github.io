# Bundle — Respuesta SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle — Respuesta SIGGES**

## Resource Profile: Bundle — Respuesta SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-respuesta-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:BundleRespuestaGES |

 
Respuesta a una notificación. 

**Usages:**

* Examples for this Perfil: [Bundle/resp-a1-ok](Bundle-resp-a1-ok.md), [Bundle/resp-b2-aviso](Bundle-resp-b2-aviso.md), [Bundle/resp-duplicado](Bundle-resp-duplicado.md) and [Bundle/resp-error](Bundle-resp-error.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-bundle-respuesta-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bundle-respuesta-ges.csv), [Excel](StructureDefinition-bundle-respuesta-ges.xlsx), [Schematron](StructureDefinition-bundle-respuesta-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bundle-respuesta-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-respuesta-ges",
  "version" : "0.4.0",
  "name" : "BundleRespuestaGES",
  "title" : "Bundle — Respuesta SIGGES",
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
  "description" : "Respuesta a una notificación.",
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
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-respuesta-ges"
      }]
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "message"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    }]
  }
}

```
