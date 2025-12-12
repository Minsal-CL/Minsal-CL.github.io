# Fallecido - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fallecido**

## CodeSystem: Fallecido 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/fallecido | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSFallecido |

 
Códigos asociados al momento en que el paciente fallece en el servicio de urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSFallecido](ValueSet-fallecido.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fallecido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/fallecido",
  "version" : "0.1.2-ballot",
  "name" : "CSFallecido",
  "title" : "Fallecido",
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
  "description" : "Códigos asociados al momento en que el paciente fallece en el servicio de urgencia.",
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
      "display" : "Usuarios fallecidos en espera de atención médica"
    },
    {
      "code" : "2",
      "display" : "Usuarios fallecidos en proceso de atención"
    }
  ]
}

```
