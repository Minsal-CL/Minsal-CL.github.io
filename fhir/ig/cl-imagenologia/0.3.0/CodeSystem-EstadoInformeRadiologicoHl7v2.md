# Estado del informe radiológico en HL7 v2 - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado del informe radiológico en HL7 v2**

## CodeSystem: Estado del informe radiológico en HL7 v2 (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoInformeRadiologicoHl7v2 | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:EstadoInformeRadiologicoHl7v2 |

 
Valores de estado del informe que el RIS envía en OBR-25 y OBX-11 del mensaje ORU^R01. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EstadoInformeRadiologicoHl7v2",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoInformeRadiologicoHl7v2",
  "version" : "0.3.0",
  "name" : "EstadoInformeRadiologicoHl7v2",
  "title" : "Estado del informe radiológico en HL7 v2",
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
  "description" : "Valores de estado del informe que el RIS envía en OBR-25 y OBX-11 del mensaje ORU^R01.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "P",
    "display" : "Preliminar"
  },
  {
    "code" : "F",
    "display" : "Final"
  },
  {
    "code" : "C",
    "display" : "Corrección"
  },
  {
    "code" : "A",
    "display" : "Corrección (Addendum)"
  },
  {
    "code" : "D",
    "display" : "Eliminado"
  }]
}

```
