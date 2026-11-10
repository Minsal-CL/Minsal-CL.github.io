# Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)**

## Resource Profile: Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal) 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalProvideBundleMhd | *Versión*:0.3.0 |
| Borrador al 2026-11-09 | *Nombre computable*:MinsalProvideBundleMhd |

 
Bundle de ITI-65. Hereda IHE.MHD.Minimal.ProvideBundle: una entrada SubmissionSet 1..1 (perfil `MinsalSubmissionSetMhd`) y entradas DocumentReference 0..* (perfil `MinsalDocumentReferenceMhd`). El documento nuevo de un reemplazo y el PATCH del documento anterior viajan en este mismo Bundle. 

**Usages:**

* This Perfil is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.mhd|current/StructureDefinition/StructureDefinition-MinsalProvideBundleMhd.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalProvideBundleMhd.csv), [Excel](StructureDefinition-MinsalProvideBundleMhd.xlsx), [Schematron](StructureDefinition-MinsalProvideBundleMhd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalProvideBundleMhd",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalProvideBundleMhd",
  "version" : "0.3.0",
  "name" : "MinsalProvideBundleMhd",
  "title" : "Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)",
  "status" : "draft",
  "date" : "2026-11-09T23:03:48-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Bundle de ITI-65. Hereda IHE.MHD.Minimal.ProvideBundle: una entrada SubmissionSet 1..1 (perfil `MinsalSubmissionSetMhd`) y entradas DocumentReference 0..* (perfil `MinsalDocumentReferenceMhd`). El documento nuevo de un reemplazo y el PATCH del documento anterior viajan en este mismo Bundle.",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:SubmissionSet",
      "path" : "Bundle.entry",
      "sliceName" : "SubmissionSet"
    },
    {
      "id" : "Bundle.entry:SubmissionSet.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Lista SubmissionSet del envío, con perfil MinsalSubmissionSetMhd.",
      "type" : [{
        "code" : "List",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalSubmissionSetMhd"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentRefs",
      "path" : "Bundle.entry",
      "sliceName" : "DocumentRefs"
    },
    {
      "id" : "Bundle.entry:DocumentRefs.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Referencia documental publicada, con perfil MinsalDocumentReferenceMhd.",
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"]
      }]
    }]
  }
}

```
