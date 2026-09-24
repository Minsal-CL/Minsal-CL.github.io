# Previsión de salud - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Previsión de salud**

## Extension: Previsión de salud (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/prevision | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:Prevision |

Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md)
* Examples for this Extension: [Bundle/BundleAdmisionEj](Bundle-BundleAdmisionEj.md) and [Bundle/BundleAltaEj](Bundle-BundleAltaEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-prevision.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prevision.csv), [Excel](StructureDefinition-prevision.xlsx), [Schematron](StructureDefinition-prevision.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prevision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/prevision",
  "version" : "0.2.0",
  "name" : "Prevision",
  "title" : "Previsión de salud",
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
  "description" : "Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo.",
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
      "short" : "Previsión de salud",
      "definition" : "Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:prevision",
      "path" : "Extension.extension",
      "sliceName" : "prevision",
      "short" : "Previsión de salud",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:prevision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:prevision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "prevision"
    },
    {
      "id" : "Extension.extension:prevision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSPrevision"
      }
    },
    {
      "id" : "Extension.extension:tramoFonasa",
      "path" : "Extension.extension",
      "sliceName" : "tramoFonasa",
      "short" : "Tramo FONASA (solo si la previsión es FONASA)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:tramoFonasa.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tramoFonasa.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tramoFonasa"
    },
    {
      "id" : "Extension.extension:tramoFonasa.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTramosFONASA"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/prevision"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
