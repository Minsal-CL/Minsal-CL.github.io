# Tipo Observacion - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipo Observacion**

## CodeSystem: Tipo Observacion 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoObservacion | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSTipoObservacion |

 
Codificación para identificar las distintas observaciones existentes dentro del MPI 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoObservacion](ValueSet-VSTipoObservacion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoObservacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoObservacion",
  "version" : "0.4.8",
  "name" : "CSTipoObservacion",
  "title" : "Tipo Observacion",
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
  "description" : "Codificación para identificar las distintas observaciones existentes dentro del MPI",
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
      "display" : "Nivel Educacional"
    },
    {
      "code" : "02",
      "display" : "Nivel Instruccion"
    },
    {
      "code" : "03",
      "display" : "Situacion Discapacidad"
    },
    {
      "code" : "04",
      "display" : "Ocupación"
    }
  ]
}

```
