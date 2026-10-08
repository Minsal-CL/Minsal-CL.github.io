# Derivada para (SIGGES) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Derivada para (SIGGES)**

## CodeSystem: Derivada para (SIGGES) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSDerivadaParaGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Motivo de la derivación en SIC y OA (hoja DERIVAPARA). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Derivada para — OA](ValueSet-vs-derivada-para-oa.md)
* [Derivada para — SIC](ValueSet-vs-derivada-para-sic.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "derivada-para-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
  "version" : "0.4.0",
  "name" : "CSDerivadaParaGES",
  "title" : "Derivada para (SIGGES)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Motivo de la derivación en SIC y OA (hoja DERIVAPARA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "property" : [{
    "code" : "documento",
    "description" : "Documento en que se usa (SIC u OA)",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  },
  {
    "code" : "2",
    "display" : "Realizar Tratamiento",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  },
  {
    "code" : "3",
    "display" : "A Seguimiento",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  },
  {
    "code" : "4",
    "display" : "Control de Especialidad",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  },
  {
    "code" : "5",
    "display" : "Otro",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  },
  {
    "code" : "6",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "documento",
      "valueString" : "OA"
    }]
  },
  {
    "code" : "7",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "documento",
      "valueString" : "OA"
    }]
  },
  {
    "code" : "8",
    "display" : "Otro",
    "property" : [{
      "code" : "documento",
      "valueString" : "OA"
    }]
  },
  {
    "code" : "9",
    "display" : "Diagnostico",
    "property" : [{
      "code" : "documento",
      "valueString" : "OA"
    }]
  },
  {
    "code" : "10",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "documento",
      "valueString" : "OA"
    }]
  },
  {
    "code" : "11",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "documento",
      "valueString" : "SIC"
    }]
  }]
}

```
