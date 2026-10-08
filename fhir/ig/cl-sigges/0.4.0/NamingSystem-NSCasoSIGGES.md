# Identificador de caso SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identificador de caso SIGGES**

## NamingSystem: Identificador de caso SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSCasoSIGGES | *Version*:0.4.0 |
| Draft as of 2026-09-25 | *Computable Name*:NSCasoSIGGES |

 
Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSCasoSIGGES",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSCasoSIGGES"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.4.0"
  }],
  "name" : "NSCasoSIGGES",
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
  "description" : "Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
    "preferred" : true
  }]
}

```
