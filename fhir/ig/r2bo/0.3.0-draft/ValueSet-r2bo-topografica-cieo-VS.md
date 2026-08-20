# Set de Valores para Topografía según la CIE-O 3.2 - Repositorio de Reportes de Biopsias Oncológicas v0.3.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores para Topografía según la CIE-O 3.2**

## ValueSet: Set de Valores para Topografía según la CIE-O 3.2 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cieo-VS | *Version*:0.3.0-draft |
| Draft as of 2026-08-20 | *Computable Name*:TopograficaCIEOVS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8.48.21 | |

 
Set de valores utilizados para la topografía de la CIE-O 3.2 Tográfico 

 **References** 

* [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "r2bo-topografica-cieo-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cieo-VS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.40.8.48.21"
  }],
  "version" : "0.3.0-draft",
  "name" : "TopograficaCIEOVS",
  "title" : "Set de Valores para Topografía según la CIE-O 3.2",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T12:25:24-04:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Set de valores utilizados para la topografía de la CIE-O 3.2 Tográfico",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "T"
      },
      {
        "property" : "kind",
        "op" : "=",
        "value" : "subcategory"
      }]
    }]
  }
}

```
