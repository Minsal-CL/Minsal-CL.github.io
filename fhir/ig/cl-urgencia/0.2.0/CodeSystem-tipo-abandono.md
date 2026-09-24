# Tipo de abandono de la atención - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Tipo de abandono de la atención**

## CodeSystem: Tipo de abandono de la atención (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/tipo-abandono | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:CSTipoAbandono |

 
Momento en que el paciente abandona voluntariamente la atención de urgencia. Códigos alineados con CodeSystem abandono de la guía de Urgencia publicada (hl7.fhir.cl.minsal.urgencia 0.1.2-ballot). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Destino de egreso de urgencia](ValueSet-vs-destino-egreso.md)
* [Tipo de abandono de la atención](ValueSet-vs-tipo-abandono.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-abandono",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/tipo-abandono",
  "version" : "0.2.0",
  "name" : "CSTipoAbandono",
  "title" : "Tipo de abandono de la atención",
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
  "description" : "Momento en que el paciente abandona voluntariamente la atención de urgencia. Códigos alineados con CodeSystem abandono de la guía de Urgencia publicada (hl7.fhir.cl.minsal.urgencia 0.1.2-ballot).",
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
    "code" : "1",
    "display" : "Abandono antes de la atención médica (NEA)",
    "definition" : "El paciente se retira antes de ser atendido por el profesional: No Espera Atención."
  },
  {
    "code" : "2",
    "display" : "Abandono durante la atención médica (fuga)",
    "definition" : "El paciente se retira después de iniciada la atención, sin alta médica."
  }]
}

```
