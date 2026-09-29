# Estado de la solicitud de imagen en HL7 v2 - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado de la solicitud de imagen en HL7 v2**

## CodeSystem: Estado de la solicitud de imagen en HL7 v2 (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoSolicitudImagenHl7v2 | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:EstadoSolicitudImagenHl7v2 |

 
Valores de control de la orden que el HIS envía en ORC-1 y describe en ORC-25 del mensaje ORM^O01. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EstadoSolicitudImagenHl7v2",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoSolicitudImagenHl7v2",
  "version" : "0.3.0",
  "name" : "EstadoSolicitudImagenHl7v2",
  "title" : "Estado de la solicitud de imagen en HL7 v2",
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
  "description" : "Valores de control de la orden que el HIS envía en ORC-1 y describe en ORC-25 del mensaje ORM^O01.",
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
    "code" : "NW",
    "display" : "Solicitado"
  },
  {
    "code" : "CA",
    "display" : "Cancelado"
  },
  {
    "code" : "P",
    "display" : "Pagado"
  },
  {
    "code" : "F",
    "display" : "Completado"
  }]
}

```
