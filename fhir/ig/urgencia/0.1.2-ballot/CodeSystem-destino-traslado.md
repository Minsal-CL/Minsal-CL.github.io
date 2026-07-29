# Destino Traslado - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Destino Traslado**

## CodeSystem: Destino Traslado 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-traslado | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSDestinoTraslado |

 
Códigos asociados a destino de traslado del paciente desde urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSDestinoTraslado](ValueSet-destino-traslado.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "destino-traslado",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-traslado",
  "version" : "0.1.2-ballot",
  "name" : "CSDestinoTraslado",
  "title" : "Destino Traslado",
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
  "description" : "Códigos asociados a destino de traslado del paciente desde urgencia.",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "1",
      "display" : "Alta"
    },
    {
      "code" : "2",
      "display" : "Derivación o traslado a otro centro"
    },
    {
      "code" : "3",
      "display" : "Abandono"
    },
    {
      "code" : "4",
      "display" : "Fallecido"
    }
  ]
}

```
