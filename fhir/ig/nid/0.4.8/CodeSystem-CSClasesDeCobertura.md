# Clase de Cobertura de Salud - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Clase de Cobertura de Salud**

## CodeSystem: Clase de Cobertura de Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSClasesDeCobertura |

 
Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSClasesDeCobertura](ValueSet-VSClasesDeCobertura.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSClasesDeCobertura",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
  "version" : "0.4.8",
  "name" : "CSClasesDeCobertura",
  "title" : "Clase de Cobertura de Salud",
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
  "description" : "Permitira definir los distintos tipos de clases requeridos para la cobertura. Los tramos de FONASA, Planes de Isapre, Otras leyes previsionales, Leyes de priorización y de reparación.",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "1",
      "display" : "Tramos de FONASA"
    },
    {
      "code" : "2",
      "display" : "Plan de ISAPRE"
    },
    {
      "code" : "3",
      "display" : "Otras Leyes Previsionales"
    },
    {
      "code" : "4",
      "display" : "Leyes de Reparación"
    },
    {
      "code" : "5",
      "display" : "Leyes de Priorización"
    }
  ]
}

```
