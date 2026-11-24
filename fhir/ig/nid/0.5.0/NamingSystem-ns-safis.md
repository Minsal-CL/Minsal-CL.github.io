# Código SAFIS de establecimiento farmacéutico - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Código SAFIS de establecimiento farmacéutico**

## NamingSystem: Código SAFIS de establecimiento farmacéutico 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-safis | *Version*:0.5.0 |
| Active as of 2026-11-09 | *Computable Name*:CodigoSAFIS |

 
Identificador del establecimiento farmacéutico en SAFIS del Instituto de Salud Pública. Identifica una Location. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ns-safis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-safis"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.5.0"
  }],
  "name" : "CodigoSAFIS",
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
  "description" : "Identificador del establecimiento farmacéutico en SAFIS del Instituto de Salud Pública. Identifica una Location.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/safis-establecimiento",
    "preferred" : true
  }]
}

```
