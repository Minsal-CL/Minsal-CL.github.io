# Clase de Cobertura de Salud - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Clase de Cobertura de Salud**

## ValueSet: Clase de Cobertura de Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:VSClasesDeCobertura |

 
Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación. 

 **References** 

* [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura`](CodeSystem-CSClasesDeCobertura.md)version 📦0.4.8

 

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
  "id" : "VSClasesDeCobertura",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura",
  "version" : "0.4.8",
  "name" : "VSClasesDeCobertura",
  "title" : "Clase de Cobertura de Salud",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
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
  "description" : "Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación.",
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
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura"
      }
    ]
  }
}

```
