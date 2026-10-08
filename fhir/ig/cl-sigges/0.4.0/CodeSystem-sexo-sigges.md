# Sexo (SIGGES) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexo (SIGGES)**

## CodeSystem: Sexo (SIGGES) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/sexo-sigges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSSexoSIGGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Codificación de sexo usada por SIGGES 2.0 (hoja SEXO). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sexo-sigges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/sexo-sigges",
  "version" : "0.4.0",
  "name" : "CSSexoSIGGES",
  "title" : "Sexo (SIGGES)",
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
  "description" : "Codificación de sexo usada por SIGGES 2.0 (hoja SEXO).",
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
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Femenino"
  },
  {
    "code" : "2",
    "display" : "Masculino"
  },
  {
    "code" : "3",
    "display" : "No definido"
  }]
}

```
