# País Desconocido - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **País Desconocido**

## CodeSystem: País Desconocido 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/cs-pais-desconocido | *Version*:0.4.9 |
| Active as of 2024-09-25 | *Computable Name*:CsPaisDesconocido |

 
Código para país desconocido 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCodigosPaisesNID](ValueSet-vs-codigos-paises-nid.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-pais-desconocido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/cs-pais-desconocido",
  "version" : "0.4.9",
  "name" : "CsPaisDesconocido",
  "title" : "País Desconocido",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-25",
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
  "description" : "Código para país desconocido",
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
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "999",
      "display" : "Desconocido"
    }
  ]
}

```
