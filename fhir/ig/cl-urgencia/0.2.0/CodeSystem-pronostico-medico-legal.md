# Pronóstico médico-legal - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pronóstico médico-legal**

## CodeSystem: Pronóstico médico-legal (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/pronostico-medico-legal | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:CSPronosticoMedicoLegal |

 
Pronóstico médico-legal registrado al cierre (CMBD Urgencia: PRONÓSTICO MÉDICO LEGAL). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Pronóstico médico-legal](ValueSet-vs-pronostico-medico-legal.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pronostico-medico-legal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/pronostico-medico-legal",
  "version" : "0.2.0",
  "name" : "CSPronosticoMedicoLegal",
  "title" : "Pronóstico médico-legal",
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
  "description" : "Pronóstico médico-legal registrado al cierre (CMBD Urgencia: PRONÓSTICO MÉDICO LEGAL).",
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
    "code" : "01",
    "display" : "Leve"
  },
  {
    "code" : "02",
    "display" : "Mediana gravedad"
  },
  {
    "code" : "03",
    "display" : "Grave"
  },
  {
    "code" : "04",
    "display" : "Sin lesiones"
  }]
}

```
