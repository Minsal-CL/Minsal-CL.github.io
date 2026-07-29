# Calificación Previsional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Calificación Previsional**

## CodeSystem: Calificación Previsional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CScalificacionPrevisional | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CScalificacionPrevisional |

 
Calificación Previsional 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VScalificacionPrevisional](ValueSet-VScalificacionPrevisional.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CScalificacionPrevisional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CScalificacionPrevisional",
  "version" : "0.4.9",
  "name" : "CScalificacionPrevisional",
  "title" : "Calificación Previsional",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Calificación Previsional",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "01",
      "display" : "PRAIS"
    },
    {
      "code" : "02",
      "display" : "Antuco"
    },
    {
      "code" : "03",
      "display" : "Prilonco"
    },
    {
      "code" : "04",
      "display" : "Dirigente Vecinal"
    }
  ]
}

```
