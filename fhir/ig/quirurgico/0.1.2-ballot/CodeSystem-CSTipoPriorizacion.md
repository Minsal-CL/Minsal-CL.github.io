# Tipo Priorización - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Priorización**

## CodeSystem: Tipo Priorización 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSTipoPriorizacion |

 
Tipo Priorización 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoPriorizacion](ValueSet-VSTipoPriorizacion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoPriorizacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoPriorizacion",
  "title" : "Tipo Priorización",
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
  "description" : "Tipo Priorización",
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
      "display" : "Prioridad sanitada"
    },
    {
      "code" : "2",
      "display" : "Usuarios GES"
    },
    {
      "code" : "3",
      "display" : "Servicio Nacional de Reinserción Social Juvenil"
    },
    {
      "code" : "4",
      "display" : "Usuario PRAIS 1° GEN"
    },
    {
      "code" : "5",
      "display" : "Usuarios con dos o más años en LE"
    },
    {
      "code" : "6",
      "display" : "Mejor Niñez"
    }
  ]
}

```
