# CSCategorizacionNoRealizada - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CSCategorizacionNoRealizada**

## CodeSystem: CSCategorizacionNoRealizada 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-no-realizada | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSCategorizacionNoRealizada |

 
Código asociado a la categorización no realizada en el sistema de salud chileno 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCategorizacionUrgencia](ValueSet-categorizacion-urgencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "categorizacion-no-realizada",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-no-realizada",
  "version" : "0.1.2-ballot",
  "name" : "CSCategorizacionNoRealizada",
  "title" : "CSCategorizacionNoRealizada",
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
  "description" : "Código asociado a la categorización no realizada en el sistema de salud chileno",
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
  "count" : 1,
  "concept" : [
    {
      "code" : "99",
      "display" : "Sin Categorizar"
    }
  ]
}

```
