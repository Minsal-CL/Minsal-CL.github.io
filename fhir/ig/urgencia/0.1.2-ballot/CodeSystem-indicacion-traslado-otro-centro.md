# Indicación Traslado Otro Centro - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indicación Traslado Otro Centro**

## CodeSystem: Indicación Traslado Otro Centro 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/indicacion-traslado-otro-centro | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSIndicacionTrasladoOtroCentro |

 
Códigos correspondientes a la derivación o traslado del usuario a otro centro asistencial de salud, el cual puede ser o no perteneciente al Servicio Nacional de Salud. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSIndicacionTrasladoOtroCentro](ValueSet-indicacion-traslado-otro-centro.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "indicacion-traslado-otro-centro",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/indicacion-traslado-otro-centro",
  "version" : "0.1.2-ballot",
  "name" : "CSIndicacionTrasladoOtroCentro",
  "title" : "Indicación Traslado Otro Centro",
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
  "description" : "Códigos correspondientes a la derivación  o traslado del usuario a otro centro asistencial de salud, el cual puede ser o no perteneciente al Servicio Nacional de Salud.",
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
      "display" : "Traslado a otro centro asistencial o establecimiento sanitario (Perteneciente al SNSS)"
    },
    {
      "code" : "2",
      "display" : "Traslado a otro centro asistencial o establecimiento de particulares (No perteneciente al SNSS, establecimiento privado)"
    }
  ]
}

```
