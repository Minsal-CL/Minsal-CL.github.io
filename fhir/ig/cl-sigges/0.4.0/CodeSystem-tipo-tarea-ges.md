# Tipos de tarea GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de tarea GES**

## CodeSystem: Tipos de tarea GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSTipoTareaGES |

 
Clasifica las tareas (Task) de gestión de garantías y del caso. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-tarea-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
  "version" : "0.4.0",
  "name" : "CSTipoTareaGES",
  "title" : "Tipos de tarea GES",
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
  "description" : "Clasifica las tareas (Task) de gestión de garantías y del caso.",
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
    "code" : "cierre-caso",
    "display" : "Cierre de caso",
    "definition" : "Tarea que registra el cierre del caso GES."
  },
  {
    "code" : "excepcion-garantia",
    "display" : "Excepción de garantía de oportunidad",
    "definition" : "Tarea que registra la excepción de una garantía."
  },
  {
    "code" : "garantia",
    "display" : "Garantía de oportunidad",
    "definition" : "Garantía con plazo asociada al caso (la informa SIGGES en la consulta)."
  }]
}

```
