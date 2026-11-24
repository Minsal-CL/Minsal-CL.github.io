# Códigos de Países para NID - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Códigos de Países para NID**

## ValueSet: Códigos de Países para NID 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/vs-codigos-paises-nid | *Version*:0.5.0 |
| Active as of 2024-09-25 | *Computable Name*:VSCodigosPaisesNID |

 
códigos de países según norma ISO 3166-1, para uso en NID (Identificador Nacional de Paciente) 

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
  "id" : "vs-codigos-paises-nid",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/vs-codigos-paises-nid",
  "version" : "0.5.0",
  "name" : "VSCodigosPaisesNID",
  "title" : "Códigos de Países para NID",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-25",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "códigos de países según norma ISO 3166-1, para uso en NID (Identificador Nacional de Paciente)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:iso:std:iso:3166",
      "filter" : [{
        "property" : "code",
        "op" : "regex",
        "value" : "[0-9]{3}"
      }]
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/cs-pais-desconocido"
    }]
  }
}

```
