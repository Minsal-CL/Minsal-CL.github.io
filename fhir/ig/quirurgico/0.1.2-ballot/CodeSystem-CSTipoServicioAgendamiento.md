# Tipo Servicio Agendamiento - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Servicio Agendamiento**

## CodeSystem: Tipo Servicio Agendamiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoServicioAgendamiento | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSTipoServicioAgendamiento |

 
Tipo Servicio Agendamiento 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoServicioAgendamiento](ValueSet-VSTipoServicioAgendamiento.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoServicioAgendamiento",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoServicioAgendamiento",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoServicioAgendamiento",
  "title" : "Tipo Servicio Agendamiento",
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
  "description" : "Tipo Servicio Agendamiento",
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
      "display" : "Entrevista Pre Quirúrgica"
    },
    {
      "code" : "2",
      "display" : "Agendamiento de quirófano"
    }
  ]
}

```
