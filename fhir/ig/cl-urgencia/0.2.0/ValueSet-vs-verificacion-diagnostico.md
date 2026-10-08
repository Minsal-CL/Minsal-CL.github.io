# Verificación del diagnóstico de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Verificación del diagnóstico de urgencia**

## ValueSet: Verificación del diagnóstico de urgencia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-verificacion-diagnostico | *Version*:0.2.0 |
| Draft as of 2026-10-08 | *Computable Name*:VSVerificacionDiagnostico |

 
Hipótesis (provisional) o diagnóstico confirmado (confirmed). Los diagnósticos descartados no se informan a la red. 

 **References** 

* [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md)

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
  "id" : "vs-verificacion-diagnostico",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-verificacion-diagnostico",
  "version" : "0.2.0",
  "name" : "VSVerificacionDiagnostico",
  "title" : "Verificación del diagnóstico de urgencia",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T00:02:21-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Hipótesis (provisional) o diagnóstico confirmado (confirmed). Los diagnósticos descartados no se informan a la red.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "version" : "2.0.1",
      "concept" : [{
        "code" : "provisional",
        "display" : "Provisional"
      },
      {
        "code" : "confirmed",
        "display" : "Confirmed"
      }]
    }]
  }
}

```
