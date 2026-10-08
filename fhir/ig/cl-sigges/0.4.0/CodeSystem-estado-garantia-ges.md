# Estado de negocio de la garantía - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado de negocio de la garantía**

## CodeSystem: Estado de negocio de la garantía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-garantia-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSEstadoGarantiaGES |

 
Estado de negocio (Task.businessStatus) de una garantía de oportunidad. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Estado de garantía](ValueSet-vs-estado-garantia-ges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "estado-garantia-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-garantia-ges",
  "version" : "0.4.0",
  "name" : "CSEstadoGarantiaGES",
  "title" : "Estado de negocio de la garantía",
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
  "description" : "Estado de negocio (Task.businessStatus) de una garantía de oportunidad.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "vigente",
    "display" : "Vigente",
    "definition" : "Garantía abierta y dentro de plazo."
  },
  {
    "code" : "cumplida",
    "display" : "Cumplida",
    "definition" : "Garantía cumplida con la prestación otorgada."
  },
  {
    "code" : "exceptuada",
    "display" : "Exceptuada",
    "definition" : "Garantía exceptuada por causal."
  },
  {
    "code" : "vencida",
    "display" : "Vencida",
    "definition" : "Garantía no cumplida dentro de plazo."
  },
  {
    "code" : "cerrada",
    "display" : "Cerrada",
    "definition" : "Garantía cerrada por cierre de caso."
  }]
}

```
