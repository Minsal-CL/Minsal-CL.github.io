# Último nivel aprobado - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Último nivel aprobado**

## CodeSystem: Último nivel aprobado 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSUNivelAprob | *Version*:0.4.9 |
| Active as of 2022-01-18 | *Computable Name*:CSUNivelAprob |

 
Código del último nivel aprobado 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSUNivelAprob](ValueSet-VSUNivelAprob.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSUNivelAprob",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSUNivelAprob",
  "version" : "0.4.9",
  "name" : "CSUNivelAprob",
  "title" : "Último nivel aprobado",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-01-18T00:00:00-03:00",
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
    }
  ],
  "description" : "Código del último nivel aprobado",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "1",
      "display" : "Preescolar"
    },
    {
      "code" : "2",
      "display" : "Especial o Diferencial"
    },
    {
      "code" : "3",
      "display" : "Básica o Primaria"
    },
    {
      "code" : "4",
      "display" : "Media o Secundaria"
    },
    {
      "code" : "5",
      "display" : "Educación Superior"
    },
    {
      "code" : "6",
      "display" : "Sin Instrucción"
    },
    {
      "code" : "97",
      "display" : "No Recuerda"
    },
    {
      "code" : "98",
      "display" : "No Responde"
    }
  ]
}

```
