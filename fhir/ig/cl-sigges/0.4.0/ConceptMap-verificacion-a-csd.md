# verificationStatus → confirmaSospechaDescarta - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **verificationStatus → confirmaSospechaDescarta**

## ConceptMap: verificationStatus → confirmaSospechaDescarta (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/verificacion-a-csd | *Version*:0.4.0 |
| Draft as of 2026-09-25 | *Computable Name*:CMVerificacionAConfirmaSospechaDescarta |

 
Traducción de Condition.verificationStatus al campo confirmaSospechaDescarta de SIC/IPD en la API v1.5 (valores a confirmar con FONASA). Valores destino C/S/D pendientes de confirmación por FONASA (hallazgos #14): no usar como mapeo normativo. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "verificacion-a-csd",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/verificacion-a-csd",
  "version" : "0.4.0",
  "name" : "CMVerificacionAConfirmaSospechaDescarta",
  "title" : "verificationStatus → confirmaSospechaDescarta",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-25T16:17:15-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Traducción de Condition.verificationStatus al campo confirmaSospechaDescarta de SIC/IPD en la API v1.5 (valores a confirmar con FONASA). Valores destino C/S/D pendientes de confirmación por FONASA (hallazgos #14): no usar como mapeo normativo.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
    "target" : "urn:sigges:api-v15:confirmaSospechaDescarta",
    "element" : [{
      "code" : "confirmed",
      "target" : [{
        "code" : "C",
        "display" : "Confirma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "provisional",
      "target" : [{
        "code" : "S",
        "display" : "Sospecha",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "refuted",
      "target" : [{
        "code" : "D",
        "display" : "Descarta",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
