# Pronóstico médico-legal - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pronóstico médico-legal**

## Extension: Pronóstico médico-legal (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/pronostico-medico-legal | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:PronosticoMedicoLegal |

Pronóstico médico-legal registrado al cierre de la atención.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md)
* Examples for this Extension: [Bundle/BundleAltaEj](Bundle-BundleAltaEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-pronostico-medico-legal.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pronostico-medico-legal.csv), [Excel](StructureDefinition-pronostico-medico-legal.xlsx), [Schematron](StructureDefinition-pronostico-medico-legal.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pronostico-medico-legal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/pronostico-medico-legal",
  "version" : "0.2.0",
  "name" : "PronosticoMedicoLegal",
  "title" : "Pronóstico médico-legal",
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
  "description" : "Pronóstico médico-legal registrado al cierre de la atención.",
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
      "short" : "Pronóstico médico-legal",
      "definition" : "Pronóstico médico-legal registrado al cierre de la atención."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/pronostico-medico-legal"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-pronostico-medico-legal"
      }
    }]
  }
}

```
