# Identidad De Género - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Identidad De Género**

## CodeSystem: Identidad De Género 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSIdentidadDeGenero | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSIdentidadDeGenero |

 
Identidad De Género 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSIdentidadDeGenero](ValueSet-VSIdentidadDeGenero.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSIdentidadDeGenero",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSIdentidadDeGenero",
  "version" : "0.4.8",
  "name" : "CSIdentidadDeGenero",
  "title" : "Identidad De Género",
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
  "description" : "Identidad De Género",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "1",
      "display" : "Masculino"
    },
    {
      "code" : "2",
      "display" : "Femenina"
    },
    {
      "code" : "3",
      "display" : "Transgénero masculino"
    },
    {
      "code" : "4",
      "display" : "Transgénero femenina"
    },
    {
      "code" : "5",
      "display" : "No binarie"
    },
    {
      "code" : "6",
      "display" : "otra"
    },
    {
      "code" : "7",
      "display" : "No revelado"
    }
  ]
}

```
