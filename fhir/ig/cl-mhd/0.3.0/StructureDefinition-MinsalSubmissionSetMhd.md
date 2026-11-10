# Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal)**

## Resource Profile: Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal) 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalSubmissionSetMhd | *Versión*:0.3.0 |
| Borrador al 2026-11-09 | *Nombre computable*:MinsalSubmissionSetMhd |

 
Lista de tipo SubmissionSet que viaja en un ITI-65. Hereda IHE.MHD.Minimal.SubmissionSet. En un retiro o un reemplazo, List.note lleva quién lo pide (authorString) y el motivo (text). 

**Usages:**

* Use this Perfil: [Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)](StructureDefinition-MinsalProvideBundleMhd.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.mhd|current/StructureDefinition/StructureDefinition-MinsalSubmissionSetMhd.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalSubmissionSetMhd.csv), [Excel](StructureDefinition-MinsalSubmissionSetMhd.xlsx), [Schematron](StructureDefinition-MinsalSubmissionSetMhd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalSubmissionSetMhd",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalSubmissionSetMhd",
  "version" : "0.3.0",
  "name" : "MinsalSubmissionSetMhd",
  "title" : "Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal)",
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
  "description" : "Lista de tipo SubmissionSet que viaja en un ITI-65. Hereda IHE.MHD.Minimal.SubmissionSet. En un retiro o un reemplazo, List.note lleva quién lo pide (authorString) y el motivo (text).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "SubmissionSet-Mapping",
    "uri" : "urn:ihe:iti:xds:submissionset",
    "name" : "XDS and MHD Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Comentario del envío. En un retiro, authorString identifica quién lo pide y text el motivo. Mapea a SubmissionSet.comments de XDS.",
      "mustSupport" : true
    }]
  }
}

```
