# Estado de la solicitud: HL7 v2 a FHIR - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado de la solicitud: HL7 v2 a FHIR**

## ConceptMap: Estado de la solicitud: HL7 v2 a FHIR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ConceptMap/EstadoSolicitudImagenV2AFhir | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:EstadoSolicitudImagenV2AFhir |

 
Equivalencias entre el control de la orden enviado en ORC-1 / ORC-25 y los valores de ServiceRequest.status. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "EstadoSolicitudImagenV2AFhir",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ConceptMap/EstadoSolicitudImagenV2AFhir",
  "version" : "0.3.0",
  "name" : "EstadoSolicitudImagenV2AFhir",
  "title" : "Estado de la solicitud: HL7 v2 a FHIR",
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
  "description" : "Equivalencias entre el control de la orden enviado en ORC-1 / ORC-25 y los valores de ServiceRequest.status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "targetCanonical" : "http://hl7.org/fhir/ValueSet/request-status",
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoSolicitudImagenHl7v2",
    "target" : "http://hl7.org/fhir/request-status",
    "element" : [{
      "code" : "NW",
      "display" : "Solicitado",
      "target" : [{
        "code" : "active",
        "display" : "Active",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CA",
      "display" : "Cancelado",
      "target" : [{
        "code" : "revoked",
        "display" : "Revoked",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "F",
      "display" : "Completado",
      "target" : [{
        "code" : "completed",
        "display" : "Completed",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "Pagado",
      "target" : [{
        "code" : "active",
        "display" : "Active",
        "equivalence" : "relatedto",
        "comment" : "El pago es un hito administrativo del flujo de atención y no cambia el estado clínico de la solicitud; se mantiene active."
      }]
    }]
  }]
}

```
