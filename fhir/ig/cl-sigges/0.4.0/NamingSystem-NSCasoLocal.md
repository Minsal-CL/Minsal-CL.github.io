# NSCasoLocal - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NSCasoLocal**

## NamingSystem: NSCasoLocal 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSCasoLocal | *Version*:0.4.0 |
| Draft as of 2026-09-30 | *Computable Name*:NSCasoLocal |

 
Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSCasoLocal",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSCasoLocal"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.4.0"
  }],
  "name" : "NSCasoLocal",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2026-09-30",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
    "preferred" : true
  }]
}

```
