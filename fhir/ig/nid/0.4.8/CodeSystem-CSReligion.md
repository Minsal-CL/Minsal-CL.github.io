# Religión - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Religión**

## CodeSystem: Religión 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSReligion | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSReligion |

 
Religión 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSReligion](ValueSet-VSReligion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSReligion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSReligion",
  "version" : "0.4.8",
  "name" : "CSReligion",
  "title" : "Religión",
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
  "description" : "Religión",
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
  "count" : 10,
  "concept" : [
    {
      "code" : "1",
      "display" : "Católica"
    },
    {
      "code" : "2",
      "display" : "Evangélica"
    },
    {
      "code" : "3",
      "display" : "Testigo de Jehová"
    },
    {
      "code" : "4",
      "display" : "Judaica"
    },
    {
      "code" : "5",
      "display" : "Mormón"
    },
    {
      "code" : "6",
      "display" : "Musulmana"
    },
    {
      "code" : "7",
      "display" : "Ortodoxa"
    },
    {
      "code" : "8",
      "display" : "Otra religión o credo"
    },
    {
      "code" : "9",
      "display" : "Ninguna, ateo, agnóstico"
    },
    {
      "code" : "99",
      "display" : "Desconocido"
    }
  ]
}

```
