# Tipo Cirugía Propuesta - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Cirugía Propuesta**

## CodeSystem: Tipo Cirugía Propuesta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSTipoCirugiaPropuesta |

 
Códigos de tipo de cirugía propuesta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoCirugiaPropuesta](ValueSet-VSTipoCirugiaPropuesta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoCirugiaPropuesta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoCirugiaPropuesta",
  "title" : "Tipo Cirugía Propuesta",
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
  "description" : "Códigos de tipo de cirugía propuesta",
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
      "display" : "Cirugía Mayor Electiva"
    },
    {
      "code" : "2",
      "display" : "Cirugía Mayor Ambulatoria Electiva"
    },
    {
      "code" : "3",
      "display" : "Cirugía Menor"
    },
    {
      "code" : "4",
      "display" : "Procedimientos"
    }
  ]
}

```
