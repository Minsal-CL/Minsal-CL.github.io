# Unidad de atención de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unidad de atención de urgencia**

## CodeSystem: Unidad de atención de urgencia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-atencion | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:CSUnidadAtencion |

 
Tipo de atención asignada en la admisión (CMBD Urgencia: UNIDAD DE ATENCIÓN). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Unidad de atención de urgencia](ValueSet-vs-unidad-atencion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "unidad-atencion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-atencion",
  "version" : "0.2.0",
  "name" : "CSUnidadAtencion",
  "title" : "Unidad de atención de urgencia",
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
  "description" : "Tipo de atención asignada en la admisión (CMBD Urgencia: UNIDAD DE ATENCIÓN).",
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
    "display" : "Atención de pediatría"
  },
  {
    "code" : "02",
    "display" : "Atención de adulto"
  },
  {
    "code" : "03",
    "display" : "Atención gineco-obstétrica"
  },
  {
    "code" : "04",
    "display" : "Atención odontológica"
  },
  {
    "code" : "05",
    "display" : "Atención niño y adulto"
  },
  {
    "code" : "06",
    "display" : "Otros"
  }]
}

```
