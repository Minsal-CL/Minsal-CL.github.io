# Tipo de establecimiento de origen - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de establecimiento de origen**

## CodeSystem: Tipo de establecimiento de origen 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSTipoOrigenGES |

 
Dependencia del establecimiento que notifica (tipoDeisOrigen en API v1.5). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-origen-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
  "version" : "0.4.0",
  "name" : "CSTipoOrigenGES",
  "title" : "Tipo de establecimiento de origen",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Dependencia del establecimiento que notifica (tipoDeisOrigen en API v1.5).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "publico",
    "display" : "Público",
    "definition" : "Establecimiento de la red pública."
  },
  {
    "code" : "privado",
    "display" : "Privado",
    "definition" : "Prestador privado en convenio GES."
  }]
}

```
