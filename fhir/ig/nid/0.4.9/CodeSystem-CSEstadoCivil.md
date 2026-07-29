# Estado Civil - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Estado Civil**

## CodeSystem: Estado Civil 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSEstadoCivil |

 
Estado Civil 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEstadoCivil](ValueSet-VSEstadoCivil.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEstadoCivil",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil",
  "version" : "0.4.9",
  "name" : "CSEstadoCivil",
  "title" : "Estado Civil",
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
  "description" : "Estado Civil",
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
