# Diagnóstico GES - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Diagnóstico GES**

## Extension: Diagnóstico GES (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-ges | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:DiagnosticoGES |

Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md)
* Examples for this Extension: [Bundle/BundleAltaEj](Bundle-BundleAltaEj.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-diagnostico-ges.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diagnostico-ges.csv), [Excel](StructureDefinition-diagnostico-ges.xlsx), [Schematron](StructureDefinition-diagnostico-ges.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diagnostico-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-ges",
  "version" : "0.2.0",
  "name" : "DiagnosticoGES",
  "title" : "Diagnóstico GES",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES).",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Diagnóstico GES",
      "definition" : "Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "short" : "URL que identifica la extensión",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-ges"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "true si el diagnóstico es GES",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
