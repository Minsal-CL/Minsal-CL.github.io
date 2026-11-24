# Estado de la resolución sanitaria - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Estado de la resolución sanitaria**

## CodeSystem: Estado de la resolución sanitaria 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-estado-resolucion-cs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALEstadoResolucionCS |

 
Situación vigente de una resolución sanitaria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Estados de la resolución sanitaria](ValueSet-nid-estado-resolucion-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nid-estado-resolucion-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-estado-resolucion-cs",
  "version" : "0.5.0",
  "name" : "MINSALEstadoResolucionCS",
  "title" : "Estado de la resolución sanitaria",
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
  "description" : "Situación vigente de una resolución sanitaria.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "vigente",
    "display" : "Vigente"
  },
  {
    "code" : "suspendida",
    "display" : "Suspendida",
    "definition" : "La autoridad suspendió temporalmente sus efectos."
  },
  {
    "code" : "revocada",
    "display" : "Revocada",
    "definition" : "La autoridad la dejó sin efecto."
  },
  {
    "code" : "caducada",
    "display" : "Caducada",
    "definition" : "Terminó su período de vigencia."
  }]
}

```
