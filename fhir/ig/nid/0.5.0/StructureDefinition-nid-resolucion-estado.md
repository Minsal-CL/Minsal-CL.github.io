# Estado de la resolución - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Estado de la resolución**

## Extension: Estado de la resolución 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-estado | *Version*:0.5.0 | |
| Draft as of 2026-11-24 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EstadoResolucion |

Situación vigente de la resolución sanitaria.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MINSAL Resolución Sanitaria](StructureDefinition-MINSALResolucionSanitaria.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-nid-resolucion-estado.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nid-resolucion-estado.csv), [Excel](StructureDefinition-nid-resolucion-estado.xlsx), [Schematron](StructureDefinition-nid-resolucion-estado.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nid-resolucion-estado",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-estado",
  "version" : "0.5.0",
  "name" : "EstadoResolucion",
  "title" : "Estado de la resolución",
  "status" : "draft",
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Situación vigente de la resolución sanitaria.",
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
    "expression" : "Basic"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Estado de la resolución",
      "definition" : "Situación vigente de la resolución sanitaria."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-estado"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/nid-estado-resolucion-vs"
      }
    }]
  }
}

```
