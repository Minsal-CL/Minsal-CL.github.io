# Relación Acompañante - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Relación Acompañante**

## CodeSystem: Relación Acompañante 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/RelacionAcompanante | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSRelacionAcompanante |

 
Códigos asociados a la relación del acompañante con el paciente. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSRelacionAcompanante](ValueSet-RelacionAcompanante.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "RelacionAcompanante",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/RelacionAcompanante",
  "version" : "0.1.2-ballot",
  "name" : "CSRelacionAcompanante",
  "title" : "Relación Acompañante",
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
  "description" : "Códigos asociados a la relación del acompañante con el paciente.",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "1",
      "display" : "Compañero de trabajo"
    },
    {
      "code" : "2",
      "display" : "Pareja o cónyuge"
    },
    {
      "code" : "3",
      "display" : "Familiar"
    },
    {
      "code" : "4",
      "display" : "Tutor(a) o Cuidador(a)"
    },
    {
      "code" : "5",
      "display" : "Vecino(a)"
    },
    {
      "code" : "98",
      "display" : "No responde"
    }
  ]
}

```
