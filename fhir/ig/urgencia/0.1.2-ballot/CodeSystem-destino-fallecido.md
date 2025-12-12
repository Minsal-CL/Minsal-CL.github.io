# Destino Fallecido - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Destino Fallecido**

## CodeSystem: Destino Fallecido 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-fallecido | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSDestinoFallecido |

 
Códigos asociados a la situación final de los usuarios fallecidos durante la atención de urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSDestinoFallecido](ValueSet-destino-fallecido.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "destino-fallecido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-fallecido",
  "version" : "0.1.2-ballot",
  "name" : "CSDestinoFallecido",
  "title" : "Destino Fallecido",
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
  "description" : "Códigos asociados a la situación final de los usuarios fallecidos durante la atención de urgencia.",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "1",
      "display" : "A disposición de los familiares"
    },
    {
      "code" : "2",
      "display" : "Servicio mortuorio hospitalario"
    },
    {
      "code" : "3",
      "display" : "Derivación al SML"
    }
  ]
}

```
