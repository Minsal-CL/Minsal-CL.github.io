# Tipo de autorización sanitaria - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipo de autorización sanitaria**

## CodeSystem: Tipo de autorización sanitaria 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-autorizacion-sanitaria-cs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALTipoAutorizacionSanitariaCS |

 
Clase de acto administrativo que se representa con el perfil MINSAL Resolución Sanitaria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nid-tipo-autorizacion-sanitaria-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-autorizacion-sanitaria-cs",
  "version" : "0.5.0",
  "name" : "MINSALTipoAutorizacionSanitariaCS",
  "title" : "Tipo de autorización sanitaria",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Clase de acto administrativo que se representa con el perfil MINSAL Resolución Sanitaria.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "resolucion-sanitaria",
    "display" : "Resolución sanitaria",
    "definition" : "Acto de la autoridad sanitaria que autoriza el funcionamiento de instalaciones o actividades en ubicaciones determinadas."
  }]
}

```
