# Nivel Educacional Descripción - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Nivel Educacional Descripción**

## CodeSystem: Nivel Educacional Descripción 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSNivelEducacionalDesc |

 
Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSNivelEducacionalDesc](ValueSet-VSNivelEducacionalDesc.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSNivelEducacionalDesc",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc",
  "version" : "0.4.9",
  "name" : "CSNivelEducacionalDesc",
  "title" : "Nivel Educacional Descripción",
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
  "description" : "Codificación del Nivel Educacional para diferenciar entre los componenetes de la observación",
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
      "code" : "01",
      "display" : "Último curso aprobado"
    },
    {
      "code" : "02",
      "display" : "Último nivel aprobado"
    }
  ]
}

```
