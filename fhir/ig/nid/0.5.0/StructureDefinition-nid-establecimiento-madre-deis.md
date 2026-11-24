# Establecimiento madre DEIS - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Establecimiento madre DEIS**

## Extension: Establecimiento madre DEIS 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-establecimiento-madre-deis | *Version*:0.5.0 | |
| Draft as of 2026-11-24 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EstablecimientoMadreDEIS |

Código DEIS del establecimiento madre, tal como lo registra el DEIS. Conserva la relación administrativa aunque no se exprese con `Organization.partOf`, que solo se usa cuando hay pertenencia organizacional.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-nid-establecimiento-madre-deis.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nid-establecimiento-madre-deis.csv), [Excel](StructureDefinition-nid-establecimiento-madre-deis.xlsx), [Schematron](StructureDefinition-nid-establecimiento-madre-deis.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nid-establecimiento-madre-deis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-establecimiento-madre-deis",
  "version" : "0.5.0",
  "name" : "EstablecimientoMadreDEIS",
  "title" : "Establecimiento madre DEIS",
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
  "description" : "Código DEIS del establecimiento madre, tal como lo registra el DEIS. Conserva la relación administrativa aunque no se exprese con `Organization.partOf`, que solo se usa cuando hay pertenencia organizacional.",
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Establecimiento madre DEIS",
      "definition" : "Código DEIS del establecimiento madre, tal como lo registra el DEIS. Conserva la relación administrativa aunque no se exprese con `Organization.partOf`, que solo se usa cuando hay pertenencia organizacional."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-establecimiento-madre-deis"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento"
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "min" : 1
    }]
  }
}

```
