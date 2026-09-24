# Código de Establecimiento DEIS - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Código de Establecimiento DEIS**

## NamingSystem: Código de Establecimiento DEIS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSEstablecimientoDeis | *Version*:0.6.0 |
| Active as of 2026-09-21 | *Computable Name*:EstablecimientoDeis |

 
Identificador nacional de establecimientos de salud, administrado por el Departamento de Estadísticas e Información de Salud (DEIS) de MINSAL. Adoptado como estándar de facto por esta guía para `Organization.identifier` de establecimientos (ver Casos de uso), y usado también por otras guías del portafolio Minsal-CL. La definición y gobernanza del catálogo de códigos DEIS corresponde al propio DEIS, no a esta guía; este recurso solo declara el dominio para que el IG Publisher lo resuelva localmente al validar los ejemplos. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSEstablecimientoDeis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSEstablecimientoDeis"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.6.0"
  }],
  "name" : "EstablecimientoDeis",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-09-21",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Identificador nacional de establecimientos de salud, administrado por el Departamento de Estadísticas e Información de Salud (DEIS) de MINSAL. Adoptado como estándar de facto por esta guía para `Organization.identifier` de establecimientos (ver Casos de uso), y usado también por otras guías del portafolio Minsal-CL. La definición y gobernanza del catálogo de códigos DEIS corresponde al propio DEIS, no a esta guía; este recurso solo declara el dominio para que el IG Publisher lo resuelva localmente al validar los ejemplos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://deis.minsal.cl/establecimientos",
    "preferred" : true,
    "comment" : "Esquema `http`, no `https`; ver estándar de facto documentado en el portafolio. `https://deis.minsal.cl/...` (con `s`) es un dominio distinto, no una variante equivalente."
  }]
}

```
