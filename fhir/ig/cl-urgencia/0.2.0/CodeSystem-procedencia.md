# Procedencia del paciente - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedencia del paciente**

## CodeSystem: Procedencia del paciente (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/procedencia | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:CSProcedencia |

 
Origen del paciente al consultar en urgencia (CMBD Urgencia: PROCEDENCIA DEL PACIENTE). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Procedencia del paciente](ValueSet-vs-procedencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "procedencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/procedencia",
  "version" : "0.2.0",
  "name" : "CSProcedencia",
  "title" : "Procedencia del paciente",
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
  "description" : "Origen del paciente al consultar en urgencia (CMBD Urgencia: PROCEDENCIA DEL PACIENTE).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "Referido de unidad de emergencia"
  },
  {
    "code" : "2",
    "display" : "Referido de APS"
  },
  {
    "code" : "3",
    "display" : "Referido de atención de especialidades"
  },
  {
    "code" : "4",
    "display" : "Referido de establecimiento extra-red"
  },
  {
    "code" : "5",
    "display" : "Referido de otra procedencia"
  },
  {
    "code" : "6",
    "display" : "Espontáneo"
  },
  {
    "code" : "7",
    "display" : "SAPU"
  }]
}

```
