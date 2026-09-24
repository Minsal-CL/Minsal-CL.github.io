# Medio de llegada - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Medio de llegada**

## CodeSystem: Medio de llegada (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/medio-llegada | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:CSMedioLlegada |

 
Medio de transporte con que el paciente llega a urgencia (CMBD Urgencia: LLEGADA). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Medio de llegada](ValueSet-vs-medio-llegada.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medio-llegada",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/medio-llegada",
  "version" : "0.2.0",
  "name" : "CSMedioLlegada",
  "title" : "Medio de llegada",
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
  "description" : "Medio de transporte con que el paciente llega a urgencia (CMBD Urgencia: LLEGADA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "1",
    "display" : "SAMU básica"
  },
  {
    "code" : "2",
    "display" : "SAMU avanzada"
  },
  {
    "code" : "3",
    "display" : "SAMU medicalizada"
  },
  {
    "code" : "4",
    "display" : "Vehículo de Carabineros o PDI"
  },
  {
    "code" : "5",
    "display" : "Por sus propios medios"
  },
  {
    "code" : "6",
    "display" : "Vehículo particular"
  },
  {
    "code" : "7",
    "display" : "Otra ambulancia medicalizada"
  },
  {
    "code" : "8",
    "display" : "Otra ambulancia avanzada"
  },
  {
    "code" : "9",
    "display" : "Otra ambulancia básica"
  },
  {
    "code" : "10",
    "display" : "Marítimo (crítico)"
  },
  {
    "code" : "11",
    "display" : "No crítico (aéreo)"
  },
  {
    "code" : "12",
    "display" : "No crítico (marítimo)"
  },
  {
    "code" : "13",
    "display" : "Otros vehículos no motorizados"
  },
  {
    "code" : "14",
    "display" : "A pie"
  },
  {
    "code" : "15",
    "display" : "Gendarmería"
  },
  {
    "code" : "16",
    "display" : "Bomberos"
  },
  {
    "code" : "17",
    "display" : "Desconocido"
  }]
}

```
