# Componentes de Observación de Discapacidad - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Componentes de Observación de Discapacidad**

## CodeSystem: Componentes de Observación de Discapacidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad | *Version*:0.4.9 |
| Active as of 2024-08-28 | *Computable Name*:CSComponenteDiscapacidad |

 
Diferenciación entre los componentes de la observación de discapacidad 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSComponenteDiscapacidad](ValueSet-VSComponenteDiscapacidad.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSComponenteDiscapacidad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad",
  "version" : "0.4.9",
  "name" : "CSComponenteDiscapacidad",
  "title" : "Componentes de Observación de Discapacidad",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-28",
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
  "description" : "Diferenciación entre los componentes de la observación de discapacidad",
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
      "display" : "Origen de la discapacidad"
    },
    {
      "code" : "02",
      "display" : "Evaluación Valoración de Desempeño en Comunidad (IVADEC-DIF)"
    }
  ]
}

```
