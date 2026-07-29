# Abandono - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abandono**

## CodeSystem: Abandono 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/abandono | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSAbandono |

 
Códigos asociados al tipo de abandono del paciente desde urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSAbandono](ValueSet-abandono.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "abandono",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/abandono",
  "version" : "0.1.2-ballot",
  "name" : "CSAbandono",
  "title" : "Abandono",
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
  "description" : "Códigos asociados al tipo de abandono del paciente desde urgencia.",
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
      "display" : "Abandono antes de la atención médica"
    },
    {
      "code" : "2",
      "display" : "Abandono durante el proceso de atención médica"
    }
  ]
}

```
