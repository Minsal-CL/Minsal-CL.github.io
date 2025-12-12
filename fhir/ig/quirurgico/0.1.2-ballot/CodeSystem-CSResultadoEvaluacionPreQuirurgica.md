# Resultado Evaluación Pre Quirúrgica - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado Evaluación Pre Quirúrgica**

## CodeSystem: Resultado Evaluación Pre Quirúrgica 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSResultadoEvaluacionPreQuirurgica | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSResultadoEvaluacionPreQuirurgica |

 
Códigos de resultado de la evaluación pre quirúrgica 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSResultadoEvaluacionPreQuirurgica](ValueSet-VSResultadoEvaluacionPreQuirurgica.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSResultadoEvaluacionPreQuirurgica",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSResultadoEvaluacionPreQuirurgica",
  "version" : "0.1.2-ballot",
  "name" : "CSResultadoEvaluacionPreQuirurgica",
  "title" : "Resultado Evaluación Pre Quirúrgica",
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
  "description" : "Códigos de resultado de la evaluación pre quirúrgica",
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
      "display" : "El Paciente requiere intervención quirúrgica."
    },
    {
      "code" : "2",
      "display" : "El Paciente no requiere intervención quirúrgica."
    },
    {
      "code" : "3",
      "display" : "Se requieren mayores antecedentes y exámenes."
    },
    {
      "code" : "4",
      "display" : "Se requiere evaluación del comité."
    }
  ]
}

```
