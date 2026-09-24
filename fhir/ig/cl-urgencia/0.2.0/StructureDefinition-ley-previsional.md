# Ley previsional o programa - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ley previsional o programa**

## Extension: Ley previsional o programa (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ley-previsional | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:LeyPrevisional |

Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md)
* Examples for this Extension: [Bundle/BundleAdmisionEj](Bundle-BundleAdmisionEj.md) and [Bundle/BundleAltaEj](Bundle-BundleAltaEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-ley-previsional.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ley-previsional.csv), [Excel](StructureDefinition-ley-previsional.xlsx), [Schematron](StructureDefinition-ley-previsional.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ley-previsional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ley-previsional",
  "version" : "0.2.0",
  "name" : "LeyPrevisional",
  "title" : "Ley previsional o programa",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-23T16:36:45-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD).",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Ley previsional o programa",
      "definition" : "Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ley-previsional"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSLeyPrevisionales"
      }
    }]
  }
}

```
