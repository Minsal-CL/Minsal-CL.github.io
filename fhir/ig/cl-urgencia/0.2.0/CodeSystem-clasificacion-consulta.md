# Clasificación de la consulta - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Clasificación de la consulta**

## CodeSystem: Clasificación de la consulta (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/clasificacion-consulta | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:CSClasificacionConsulta |

 
Clasificación médico-legal de la consulta (CMBD Urgencia: CLASIFICACIÓN DE LA CONSULTA). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Clasificación de la consulta](ValueSet-vs-clasificacion-consulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "clasificacion-consulta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/clasificacion-consulta",
  "version" : "0.2.0",
  "name" : "CSClasificacionConsulta",
  "title" : "Clasificación de la consulta",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Clasificación médico-legal de la consulta (CMBD Urgencia: CLASIFICACIÓN DE LA CONSULTA).",
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
    "display" : "Abuso sexual"
  },
  {
    "code" : "02",
    "display" : "Maltrato - violencia de género"
  },
  {
    "code" : "03",
    "display" : "Constatar lesiones"
  },
  {
    "code" : "04",
    "display" : "Alcoholemia"
  },
  {
    "code" : "05",
    "display" : "Procedimiento policial"
  },
  {
    "code" : "09",
    "display" : "Otros"
  }]
}

```
