# Pertenencia al Sistema Nacional de Servicios de Salud - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pertenencia al Sistema Nacional de Servicios de Salud**

## ValueSet: Pertenencia al Sistema Nacional de Servicios de Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-pertenencia-sistema-nacional-servicios-salud-vs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:PertenenciaSistemaNacionalServiciosSaludVS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.48.30 | |

 
Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "eis-pertenencia-sistema-nacional-servicios-salud-vs",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-pertenencia-sistema-nacional-servicios-salud-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.48.30"
  }],
  "version" : "0.2.0",
  "name" : "PertenenciaSistemaNacionalServiciosSaludVS",
  "title" : "Pertenencia al Sistema Nacional de Servicios de Salud",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T00:00:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "version" : "20210120",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-pertenencia-sistema-nacional-servicios-salud-cs"
    }]
  }
}

```
