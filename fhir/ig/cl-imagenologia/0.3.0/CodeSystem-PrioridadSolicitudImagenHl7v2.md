# Prioridad de la solicitud de imagen en HL7 v2 - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prioridad de la solicitud de imagen en HL7 v2**

## CodeSystem: Prioridad de la solicitud de imagen en HL7 v2 (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/PrioridadSolicitudImagenHl7v2 | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:PrioridadSolicitudImagenHl7v2 |

 
Valores de prioridad que el HIS envía en ORC-7.6 y OBR-27.6 del mensaje ORM^O01. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PrioridadSolicitudImagenHl7v2",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/PrioridadSolicitudImagenHl7v2",
  "version" : "0.3.0",
  "name" : "PrioridadSolicitudImagenHl7v2",
  "title" : "Prioridad de la solicitud de imagen en HL7 v2",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Valores de prioridad que el HIS envía en ORC-7.6 y OBR-27.6 del mensaje ORM^O01.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "S",
    "display" : "STAT - servicio de urgencia"
  },
  {
    "code" : "A",
    "display" : "Urgente - pacientes hospitalizados"
  },
  {
    "code" : "R",
    "display" : "Rutina - otros pacientes"
  }]
}

```
