# Unidad de atención de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unidad de atención de urgencia**

## ValueSet: Unidad de atención de urgencia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-unidad-atencion | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:VSUnidadAtencion |

 
Tipo de atención de urgencia asignada en la admisión. 

 **References** 

* [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md)

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
  "id" : "vs-unidad-atencion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-unidad-atencion",
  "version" : "0.2.0",
  "name" : "VSUnidadAtencion",
  "title" : "Unidad de atención de urgencia",
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
  "description" : "Tipo de atención de urgencia asignada en la admisión.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-atencion"
    }]
  }
}

```
