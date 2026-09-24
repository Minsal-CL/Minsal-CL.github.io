# Bundle de admisión de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de admisión de urgencia**

## Resource Profile: Bundle de admisión de urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/bundle-admision-urgencia | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:BundleAdmisionUrgencia |

 
Evento admisión: el paciente es admitido en urgencia. Abre el episodio (Encounter en in-progress) y avisa a la red que el paciente se encuentra en atención. 

**Usages:**

* Examples for this Profile: [Bundle/BundleAdmisionEj](Bundle-BundleAdmisionEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-bundle-admision-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bundle-admision-urgencia.csv), [Excel](StructureDefinition-bundle-admision-urgencia.xlsx), [Schematron](StructureDefinition-bundle-admision-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bundle-admision-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/bundle-admision-urgencia",
  "version" : "0.2.0",
  "name" : "BundleAdmisionUrgencia",
  "title" : "Bundle de admisión de urgencia",
  "status" : "draft",
  "date" : "2026-09-23T16:36:45-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Evento admisión: el paciente es admitido en urgencia. Abre el episodio (Encounter en in-progress) y avisa a la red que el paciente se encuentra en atención.",
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
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/bundle-urgencia",
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
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encuentro.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-admision"]
      }]
    }]
  }
}

```
