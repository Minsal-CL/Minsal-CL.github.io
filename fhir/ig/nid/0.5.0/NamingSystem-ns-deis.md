# Código DEIS de establecimiento - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Código DEIS de establecimiento**

## NamingSystem: Código DEIS de establecimiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-deis | *Version*:0.5.0 |
| Active as of 2026-11-09 | *Computable Name*:CodigoDEIS |

 
Código del establecimiento asistencial en el Departamento de Estadísticas e Información de Salud. Identifica una Organization de clase establecimiento asistencial. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ns-deis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-deis"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.5.0"
  }],
  "name" : "CodigoDEIS",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-11-09",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Código del establecimiento asistencial en el Departamento de Estadísticas e Información de Salud. Identifica una Organization de clase establecimiento asistencial.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento",
    "preferred" : true
  }]
}

```
