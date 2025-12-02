# Valoracion Desempeno - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Valoracion Desempeno**

## CodeSystem: Valoracion Desempeno 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSValoracionDesempeno | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSValoracionDesempeno |

 
Valoracion Desempeno 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSValoracionDesempeno](ValueSet-VSValoracionDesempeno.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSValoracionDesempeno",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSValoracionDesempeno",
  "version" : "0.4.8",
  "name" : "CSValoracionDesempeno",
  "title" : "Valoracion Desempeno",
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
    }
  ],
  "description" : "Valoracion Desempeno",
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
      "code" : "1",
      "display" : "Sin discapacidad"
    },
    {
      "code" : "2",
      "display" : "Discapacidad leve"
    },
    {
      "code" : "3",
      "display" : "Discapacidad moderada"
    },
    {
      "code" : "4",
      "display" : "Discapacidad severa"
    },
    {
      "code" : "5",
      "display" : "Discapacidad profunda"
    }
  ]
}

```
