# EstadoCivil - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EstadoCivil**

## CodeSystem: EstadoCivil 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEstadoCivil | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSEstadoCivil |

 
EstadoCivil 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEstadoCivil](ValueSet-VSEstadoCivil.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEstadoCivil",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEstadoCivil",
  "version" : "0.1.2-ballot",
  "name" : "CSEstadoCivil",
  "title" : "EstadoCivil",
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
  "description" : "EstadoCivil",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "01",
      "display" : "Soltero(a)"
    },
    {
      "code" : "02",
      "display" : "Casado(a)"
    },
    {
      "code" : "03",
      "display" : "Viudo(a)"
    },
    {
      "code" : "04",
      "display" : "Divorciado(a)"
    },
    {
      "code" : "05",
      "display" : "Separado(a) judicialmente"
    },
    {
      "code" : "06",
      "display" : "Conviviente civil"
    },
    {
      "code" : "99",
      "display" : "Desconocido"
    }
  ]
}

```
