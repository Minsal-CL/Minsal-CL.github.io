# Ocupaciones Detalladas - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ocupaciones Detalladas**

## ValueSet: Ocupaciones Detalladas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSOcupacionesDet | *Version*:0.4.9 |
| Active as of 2022-01-18 | *Computable Name*:VSOcupacionesDet |

 
Código asociados a el detalle de las ocupaciones de un paciente 

 **References** 

* [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOcupacionesDet`](CodeSystem-CSOcupacionesDet.md)version 📦0.4.9

 

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
  "id" : "VSOcupacionesDet",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSOcupacionesDet",
  "version" : "0.4.9",
  "name" : "VSOcupacionesDet",
  "title" : "Ocupaciones Detalladas",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-01-18T00:00:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Código asociados a el detalle de las ocupaciones de un paciente",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOcupacionesDet"
      }
    ]
  }
}

```
