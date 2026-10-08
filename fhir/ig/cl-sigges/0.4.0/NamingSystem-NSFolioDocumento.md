# Folio de documento del establecimiento - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folio de documento del establecimiento**

## NamingSystem: Folio de documento del establecimiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSFolioDocumento | *Version*:0.4.0 |
| Draft as of 2026-09-25 | *Computable Name*:NSFolioDocumento |

 
Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSFolioDocumento",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/NamingSystem/NSFolioDocumento"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.4.0"
  }],
  "name" : "NSFolioDocumento",
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
  "description" : "Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "preferred" : true
  }]
}

```
