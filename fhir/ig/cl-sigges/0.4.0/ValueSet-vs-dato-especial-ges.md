# Datos específicos por PS - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Datos específicos por PS**

## ValueSet: Datos específicos por PS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-dato-especial-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:VSDatoEspecialGES |

 
Códigos de Observation para datos específicos por problema de salud. 

 **References** 

* [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md)

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
  "id" : "vs-dato-especial-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-dato-especial-ges",
  "version" : "0.4.0",
  "name" : "VSDatoEspecialGES",
  "title" : "Datos específicos por PS",
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
  "description" : "Códigos de Observation para datos específicos por problema de salud.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges"
    }]
  }
}

```
