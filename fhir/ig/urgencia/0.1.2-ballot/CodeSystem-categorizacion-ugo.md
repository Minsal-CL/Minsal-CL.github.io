# CSCategorizacionUGO - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CSCategorizacionUGO**

## CodeSystem: CSCategorizacionUGO 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-ugo | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSCategorizacionUGO |

 
Códigos de categorización Gineco-obstétrica (UGO) de pacientes en el sistema de salud chileno 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCategorizacionUrgencia](ValueSet-categorizacion-urgencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "categorizacion-ugo",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-ugo",
  "version" : "0.1.2-ballot",
  "name" : "CSCategorizacionUGO",
  "title" : "CSCategorizacionUGO",
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
  "description" : "Códigos de categorización Gineco-obstétrica (UGO) de pacientes en el sistema de salud chileno",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "C1",
      "display" : "Emergencia Atención Inmediata"
    },
    {
      "code" : "C2",
      "display" : "Atención Urgente"
    },
    {
      "code" : "C3",
      "display" : "Atención Prioritaria"
    },
    {
      "code" : "C4",
      "display" : "Atención No urgente"
    },
    {
      "code" : "C5",
      "display" : "Atención General"
    }
  ]
}

```
