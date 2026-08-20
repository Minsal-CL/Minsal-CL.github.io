# Set de Valores Para Grado de Diferenciación - Repositorio de Reportes de Biopsias Oncológicas v0.3.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores Para Grado de Diferenciación**

## ValueSet: Set de Valores Para Grado de Diferenciación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-grado-diferenciacion-vs | *Version*:0.3.0-draft |
| Draft as of 2026-08-20 | *Computable Name*:GradoDiferenciacionVS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8.48.5 | |

 
Grado de diferenciación tumoral según clasificación de la OMS 

 **References** 

* [Extensión del Grado de Diferenciación](StructureDefinition-r2bo-extension-grado-diferenciacion.md)

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
  "id" : "r2bo-grado-diferenciacion-vs",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-grado-diferenciacion-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.40.8.48.5"
  }],
  "version" : "0.3.0-draft",
  "name" : "GradoDiferenciacionVS",
  "title" : "Set de Valores Para Grado de Diferenciación",
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
  "description" : "Grado de diferenciación tumoral según clasificación de la OMS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CodeSystem/r2bo-grado-diferenciacion-CS"
    }]
  }
}

```
