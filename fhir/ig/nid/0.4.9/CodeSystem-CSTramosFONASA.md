# Tramos de FONASA - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tramos de FONASA**

## CodeSystem: Tramos de FONASA 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTramosFONASA | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSTramosFONASA |

 
Tramos de FONASA 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTramosFONASA](ValueSet-VSTramosFONASA.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTramosFONASA",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTramosFONASA",
  "version" : "0.4.9",
  "name" : "CSTramosFONASA",
  "title" : "Tramos de FONASA",
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
  "description" : "Tramos de FONASA",
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
      "code" : "A",
      "display" : "FONASA A"
    },
    {
      "code" : "B",
      "display" : "FONASA B"
    },
    {
      "code" : "C",
      "display" : "FONASA C"
    },
    {
      "code" : "D",
      "display" : "FONASA D"
    }
  ]
}

```
