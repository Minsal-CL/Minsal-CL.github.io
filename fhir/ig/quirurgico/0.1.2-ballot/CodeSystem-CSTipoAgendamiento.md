# Tipo Agendamiento - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Agendamiento**

## CodeSystem: Tipo Agendamiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoAgendamiento | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSTipoAgendamiento |

 
Tipo Agendamiento 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoAgendamiento](ValueSet-VSTipoAgendamiento.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoAgendamiento",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoAgendamiento",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoAgendamiento",
  "title" : "Tipo Agendamiento",
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
  "description" : "Tipo Agendamiento",
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
      "display" : "Electivo Normal",
      "definition" : "Este tipo de agendamiento es el normal"
    },
    {
      "code" : "2",
      "display" : "Electivo Condicional",
      "definition" : "Este tipo de agendamiento es condicional, depende de la disponibilidad de recursos"
    }
  ]
}

```
