# Pronóstico médico-legal - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pronóstico médico-legal**

## ValueSet: Pronóstico médico-legal (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-pronostico-medico-legal | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:VSPronosticoMedicoLegal |

 
Pronóstico médico-legal registrado al cierre de la atención. 

 **References** 

* [Pronóstico médico-legal](StructureDefinition-pronostico-medico-legal.md)

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
  "id" : "vs-pronostico-medico-legal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-pronostico-medico-legal",
  "version" : "0.2.0",
  "name" : "VSPronosticoMedicoLegal",
  "title" : "Pronóstico médico-legal",
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
  "description" : "Pronóstico médico-legal registrado al cierre de la atención.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/pronostico-medico-legal"
    }]
  }
}

```
