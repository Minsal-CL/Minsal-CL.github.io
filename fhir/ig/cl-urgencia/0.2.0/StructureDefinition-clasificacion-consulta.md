# Clasificación de la consulta - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clasificación de la consulta**

## Extension: Clasificación de la consulta (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/clasificacion-consulta | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:ClasificacionConsulta |

Clasificación médico-legal de la consulta registrada en la admisión.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md)
* Examples for this Extension: [Bundle/BundleAdmisionEj](Bundle-BundleAdmisionEj.md) and [Bundle/BundleAltaEj](Bundle-BundleAltaEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-clasificacion-consulta.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-clasificacion-consulta.csv), [Excel](StructureDefinition-clasificacion-consulta.xlsx), [Schematron](StructureDefinition-clasificacion-consulta.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "clasificacion-consulta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/clasificacion-consulta",
  "version" : "0.2.0",
  "name" : "ClasificacionConsulta",
  "title" : "Clasificación de la consulta",
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
  "description" : "Clasificación médico-legal de la consulta registrada en la admisión.",
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
      "short" : "Clasificación de la consulta",
      "definition" : "Clasificación médico-legal de la consulta registrada en la admisión."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/clasificacion-consulta"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-clasificacion-consulta"
      }
    }]
  }
}

```
