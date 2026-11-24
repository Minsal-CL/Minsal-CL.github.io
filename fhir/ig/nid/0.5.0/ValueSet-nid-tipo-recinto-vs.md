# Tipos de recinto - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipos de recinto**

## ValueSet: Tipos de recinto 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/nid-tipo-recinto-vs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALTipoRecintoVS |

 
Tipos admitidos en `Location.type`. 

 **References** 

* [MINSAL Localización](StructureDefinition-MINSALLocalizacion.md)

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
  "id" : "nid-tipo-recinto-vs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/nid-tipo-recinto-vs",
  "version" : "0.5.0",
  "name" : "MINSALTipoRecintoVS",
  "title" : "Tipos de recinto",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Tipos admitidos en `Location.type`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-recinto-cs"
    }]
  }
}

```
