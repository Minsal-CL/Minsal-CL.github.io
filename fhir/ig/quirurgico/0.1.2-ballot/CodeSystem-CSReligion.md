# Religion - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Religion**

## CodeSystem: Religion 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSReligion | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSReligion |

 
Religion 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSReligion](ValueSet-VSReligion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSReligion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSReligion",
  "version" : "0.1.2-ballot",
  "name" : "CSReligion",
  "title" : "Religion",
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
  "description" : "Religion",
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
