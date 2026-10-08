# Código DEIS de establecimiento - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Código DEIS de establecimiento**

## NamingSystem: Código DEIS de establecimiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSDeis | *Version*:0.4.0 |
| Draft as of 2026-09-25 | *Computable Name*:NSDeis |

 
Identificador DEIS de establecimiento en formato NN-NNN (DEIS2 del catálogo UNIDADES). 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSDeis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSDeis"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.4.0"
  }],
  "name" : "NSDeis",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2026-09-25",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Identificador DEIS de establecimiento en formato NN-NNN (DEIS2 del catálogo UNIDADES).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
    "preferred" : true
  }]
}

```
