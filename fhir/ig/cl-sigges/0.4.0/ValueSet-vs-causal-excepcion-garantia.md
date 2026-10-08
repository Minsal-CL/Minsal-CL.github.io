# Causales de excepción de garantía - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Causales de excepción de garantía**

## ValueSet: Causales de excepción de garantía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-causal-excepcion-garantia | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:VSCausalExcepcionGarantia |

 
Causales de tipo excepcion-garantia. 

 **References** 

* [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md)

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
  "id" : "vs-causal-excepcion-garantia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-causal-excepcion-garantia",
  "version" : "0.4.0",
  "name" : "VSCausalExcepcionGarantia",
  "title" : "Causales de excepción de garantía",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Causales de tipo excepcion-garantia.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges",
      "filter" : [{
        "property" : "tipo",
        "op" : "=",
        "value" : "excepcion-garantia"
      }]
    }]
  }
}

```
