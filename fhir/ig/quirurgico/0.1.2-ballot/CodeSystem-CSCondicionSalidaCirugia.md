# Condición Salida Cirugía - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condición Salida Cirugía**

## CodeSystem: Condición Salida Cirugía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSCondicionSalidaCirugia | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSCondicionSalidaCirugia |

 
Condición Salida Cirugía 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCondicionSalidaCirugia](ValueSet-VSCondicionSalidaCirugia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSCondicionSalidaCirugia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSCondicionSalidaCirugia",
  "version" : "0.1.2-ballot",
  "name" : "CSCondicionSalidaCirugia",
  "title" : "Condición Salida Cirugía",
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
  "description" : "Condición Salida Cirugía",
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
      "display" : "Vivo"
    },
    {
      "code" : "2",
      "display" : "Fallecido"
    }
  ]
}

```
