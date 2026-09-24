# Bundle de abandono de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Bundle de abandono de urgencia**

## Resource Profile: Bundle de abandono de urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-abandono-urgencia | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:BundleAbandonoUrgencia |

 
Evento abandono: el paciente se retira voluntariamente sin alta médica (fuga o NEA). Cierra el episodio (Encounter en finished). Si alcanzó a ser evaluado, puede incluir la hipótesis diagnóstica y el documento clínico. 

**Usages:**

* Examples for this Profile: [Bundle/BundleAbandonoEj](Bundle-BundleAbandonoEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-bundle-abandono-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bundle-abandono-urgencia.csv), [Excel](StructureDefinition-bundle-abandono-urgencia.xlsx), [Schematron](StructureDefinition-bundle-abandono-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bundle-abandono-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-abandono-urgencia",
  "version" : "0.2.0",
  "name" : "BundleAbandonoUrgencia",
  "title" : "Bundle de abandono de urgencia",
  "status" : "draft",
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Evento abandono: el paciente se retira voluntariamente sin alta médica (fuga o NEA). Cierra el episodio (Encounter en finished). Si alcanzó a ser evaluado, puede incluir la hipótesis diagnóstica y el documento clínico.",
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
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:encuentro",
      "path" : "Bundle.entry",
      "sliceName" : "encuentro",
      "short" : "Episodio de urgencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encuentro.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Episodio de urgencia",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-abandono"]
      }]
    },
    {
      "id" : "Bundle.entry:encuentro.request",
      "path" : "Bundle.entry.request",
      "short" : "PUT Encounter?identifier=[sistema DAU]|[ID DAU]"
    },
    {
      "id" : "Bundle.entry:diagnostico",
      "path" : "Bundle.entry",
      "sliceName" : "diagnostico",
      "short" : "Diagnóstico",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:diagnostico.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Diagnóstico",
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-urgencia"]
      }]
    },
    {
      "id" : "Bundle.entry:diagnostico.request",
      "path" : "Bundle.entry.request",
      "short" : "PUT Condition?identifier=[sistema]|[valor]"
    },
    {
      "id" : "Bundle.entry:documento",
      "path" : "Bundle.entry",
      "sliceName" : "documento",
      "short" : "Documento clínico (PDF)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:documento.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Documento clínico (PDF)",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/documento-urgencia"]
      }]
    },
    {
      "id" : "Bundle.entry:documento.request",
      "path" : "Bundle.entry.request",
      "short" : "PUT DocumentReference?identifier=[sistema]|[valor]"
    }]
  }
}

```
