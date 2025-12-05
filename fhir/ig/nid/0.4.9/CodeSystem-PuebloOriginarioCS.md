# Pueblos Originarios de Chile - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Pueblos Originarios de Chile**

## CodeSystem: Pueblos Originarios de Chile 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/PuebloOriginarioCS | *Version*:0.4.9 |
| Draft as of 2025-12-05 | *Computable Name*:PueblosOriginariosCS |

 
Pueblos Originarios de Chile 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PueblosOriginariosVS](ValueSet-PueblosOriginariosVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PuebloOriginarioCS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/PuebloOriginarioCS",
  "version" : "0.4.9",
  "name" : "PueblosOriginariosCS",
  "title" : "Pueblos Originarios de Chile",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T14:30:03-03:00",
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
  "description" : "Pueblos Originarios de Chile",
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
  "count" : 11,
  "concept" : [
    {
      "code" : "01",
      "display" : "Mapuche"
    },
    {
      "code" : "02",
      "display" : "Aymara"
    },
    {
      "code" : "03",
      "display" : "Rapa Nui o pascuense"
    },
    {
      "code" : "04",
      "display" : "Lickanatay"
    },
    {
      "code" : "05",
      "display" : "Quechua"
    },
    {
      "code" : "06",
      "display" : "Colla"
    },
    {
      "code" : "07",
      "display" : "Diaguita"
    },
    {
      "code" : "08",
      "display" : "Kaweskar"
    },
    {
      "code" : "09",
      "display" : "Yagan"
    },
    {
      "code" : "10",
      "display" : "Chango"
    },
    {
      "code" : "96",
      "display" : "Otro (Especificar)"
    }
  ]
}

```
