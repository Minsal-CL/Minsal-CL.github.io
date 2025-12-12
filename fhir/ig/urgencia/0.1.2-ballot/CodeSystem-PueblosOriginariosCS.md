# Pueblos Originarios de Chile - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pueblos Originarios de Chile**

## CodeSystem: Pueblos Originarios de Chile 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/PueblosOriginariosCS | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:PueblosOriginariosCS |

 
Pueblos Originarios de Chile 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PueblosOriginariosVS](ValueSet-PueblosOriginariosVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PueblosOriginariosCS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/PueblosOriginariosCS",
  "version" : "0.1.2-ballot",
  "name" : "PueblosOriginariosCS",
  "title" : "Pueblos Originarios de Chile",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-10T16:35:01-03:00",
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
    },
    {
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
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
      "display" : "Rapa Nui O Pascuense"
    },
    {
      "code" : "04",
      "display" : "Lickanantay"
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
      "display" : "Kawésqar"
    },
    {
      "code" : "09",
      "display" : "Yagán"
    },
    {
      "code" : "11",
      "display" : "Chango"
    },
    {
      "code" : "10",
      "display" : "Otro (Especificar)"
    }
  ]
}

```
