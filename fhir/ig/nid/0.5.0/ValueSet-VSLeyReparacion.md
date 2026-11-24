# Leyes Reparación - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Leyes Reparación**

## ValueSet: Leyes Reparación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSLeyReparacion | *Version*:0.5.0 |
| Active as of 2023-01-15 | *Computable Name*:VSLeyReparacion |

 
Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva 

 **References** 

* [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)

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
  "id" : "VSLeyReparacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSLeyReparacion",
  "version" : "0.5.0",
  "name" : "VSLeyReparacion",
  "title" : "Leyes Reparación",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyReparacion"
    }]
  }
}

```
