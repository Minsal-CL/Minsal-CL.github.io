# Destino al alta de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Destino al alta de urgencia**

## CodeSystem: Destino al alta de urgencia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-alta | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:CSDestinoAlta |

 
Destino indicado por el profesional al dar el alta de urgencia (CMBD Urgencia: DESTINO_ALTA; NT 149 con ajustes DGTIC). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Destino al alta de urgencia](ValueSet-vs-destino-alta.md)
* [Destino de egreso de urgencia](ValueSet-vs-destino-egreso.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "destino-alta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-alta",
  "version" : "0.2.0",
  "name" : "CSDestinoAlta",
  "title" : "Destino al alta de urgencia",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-23T16:36:45-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Destino indicado por el profesional al dar el alta de urgencia (CMBD Urgencia: DESTINO_ALTA; NT 149 con ajustes DGTIC).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "01",
    "display" : "Hospitalización"
  },
  {
    "code" : "02",
    "display" : "Traslado"
  },
  {
    "code" : "03",
    "display" : "Fallecido"
  },
  {
    "code" : "04",
    "display" : "Derivación"
  },
  {
    "code" : "05",
    "display" : "Domicilio"
  },
  {
    "code" : "06",
    "display" : "Otro"
  }]
}

```
