# Tipo Consulta - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Consulta**

## CodeSystem: Tipo Consulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoConsulta | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSTipoConsulta |

 
Tipo Consulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoConsulta](ValueSet-VSTipoConsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoConsulta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoConsulta",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoConsulta",
  "title" : "Tipo Consulta",
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
  "description" : "Tipo Consulta",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "1",
      "display" : "Nueva"
    },
    {
      "code" : "2",
      "display" : "Control"
    }
  ]
}

```
