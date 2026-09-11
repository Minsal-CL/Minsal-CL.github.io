# Set de Valores Categoría TNM Patológico Nodos Regional - Repositorio de Reportes de Biopsias Oncológicas v0.3.1-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores Categoría TNM Patológico Nodos Regional**

## ValueSet: Set de Valores Categoría TNM Patológico Nodos Regional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-tnm-categoria-nodo-regional-patologico-vs | *Version*:0.3.1-draft |
| Draft as of 2026-09-07 | *Computable Name*:TNMCategoriaPatologicoNodosRegionalVS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8.48.18 | |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Set de valores utilizados para la categoría TNM patológico Nodos Regional 

 **References** 

* [Perfil de Categoria TNM Nodos Regional](StructureDefinition-r2bo-tnm-categoria-nodo-regional.md)

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
  "id" : "r2bo-tnm-categoria-nodo-regional-patologico-vs",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-tnm-categoria-nodo-regional-patologico-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.40.8.48.18"
  }],
  "version" : "0.3.1-draft",
  "name" : "TNMCategoriaPatologicoNodosRegionalVS",
  "title" : "Set de Valores Categoría TNM Patológico Nodos Regional",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-07T15:55:09-03:00",
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
  "description" : "Set de valores utilizados para la categoría TNM patológico Nodos Regional",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://loinc.org/vs/LL238-7"]
    }]
  }
}

```
