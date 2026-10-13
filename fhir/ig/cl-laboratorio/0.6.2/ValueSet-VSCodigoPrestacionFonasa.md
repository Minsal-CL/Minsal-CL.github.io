# Códigos de prestaciones FONASA - Guía de Implementación FHIR - Laboratorio Clínico v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Códigos de prestaciones FONASA**

## ValueSet: Códigos de prestaciones FONASA (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/VSCodigoPrestacionFonasa | *Version*:0.6.2 |
| Draft as of 2026-10-13 | *Computable Name*:VSCodigoPrestacionFonasa |

 
Catálogo de prestaciones FONASA aplicable a `ServiceRequest.code` en esta guía. El contenido del CodeSystem referenciado (`CodigoPrestacionFonasa`) es administrado externamente por el servicio terminológico; este ValueSet solo declara el sistema de origen. 

 **References** 

* [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "VSCodigoPrestacionFonasa",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/VSCodigoPrestacionFonasa",
  "version" : "0.6.2",
  "name" : "VSCodigoPrestacionFonasa",
  "title" : "Códigos de prestaciones FONASA",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-13T11:13:53-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Catálogo de prestaciones FONASA aplicable a `ServiceRequest.code` en esta guía. El contenido del CodeSystem referenciado (`CodigoPrestacionFonasa`) es administrado externamente por el servicio terminológico; este ValueSet solo declara el sistema de origen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa"
    }]
  }
}

```
