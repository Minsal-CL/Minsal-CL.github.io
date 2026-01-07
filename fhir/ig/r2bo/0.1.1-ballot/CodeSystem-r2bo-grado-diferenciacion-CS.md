# Sistema de Codificación del Grado de Diferenciación - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sistema de Codificación del Grado de Diferenciación**

## CodeSystem: Sistema de Codificación del Grado de Diferenciación (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CodeSystem/r2bo-grado-diferenciacion-CS | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:GradoDiferenciacionCS |

 
Grado de diferenciación tumoral según clasificación de la OMS 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GradoDiferenciacionVS](ValueSet-r2bo-grado-diferenciacion-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "r2bo-grado-diferenciacion-CS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CodeSystem/r2bo-grado-diferenciacion-CS",
  "version" : "0.1.1-ballot",
  "name" : "GradoDiferenciacionCS",
  "title" : "Sistema de Codificación del Grado de Diferenciación",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-07T10:16:22-03:00",
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
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Grado de diferenciación tumoral según clasificación de la OMS",
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
      "display" : "Grado I  Bien diferenciado Diferenciado, SAI",
      "definition" : "Grado I  Bien diferenciado Diferenciado, SAI"
    },
    {
      "code" : "2",
      "display" : "Grado II Moderadamente diferenciado, Moderadamente bien diferenciado, Diferenciación intermedio",
      "definition" : "Grado II Moderadamente diferenciado, Moderadamente bien diferenciado, Diferenciación intermedio"
    },
    {
      "code" : "3",
      "display" : "Grado III Pobremente diferenciado",
      "definition" : "Grado III Pobremente diferenciado"
    },
    {
      "code" : "4",
      "display" : "Grado IV Indiferenciado, Anaplásico",
      "definition" : "Grado IV Indiferenciado, Anaplásico"
    },
    {
      "code" : "9",
      "display" : "No se ha determinado el grado o la diferenciación, no se señala o no procede",
      "definition" : "No se ha determinado el grado o la diferenciación, no se señala o no procede"
    }
  ]
}

```
