# RUT (Rol Único Tributario) - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **RUT (Rol Único Tributario)**

## NamingSystem: RUT (Rol Único Tributario) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-rut | *Version*:0.5.0 |
| Active as of 2026-11-09 | *Computable Name*:RUT |

 
Rol Único Tributario de una entidad jurídica. Formato: dígitos y guion con dígito verificador sin puntos. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ns-rut",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/NamingSystem/ns-rut"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.5.0"
  }],
  "name" : "RUT",
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
  "description" : "Rol Único Tributario de una entidad jurídica. Formato: dígitos y guion con dígito verificador sin puntos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/rut",
    "preferred" : true
  }]
}

```
