# Origen Discapacidad - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Origen Discapacidad**

## CodeSystem: Origen Discapacidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOrigenDiscapacidad | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSOrigenDiscapacidad |

 
Origen Discapacidad 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSOrigenDiscapacidad](ValueSet-VSOrigenDiscapacidad.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSOrigenDiscapacidad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOrigenDiscapacidad",
  "version" : "0.4.8",
  "name" : "CSOrigenDiscapacidad",
  "title" : "Origen Discapacidad",
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
  "description" : "Origen Discapacidad",
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
      "display" : "Origen Físico"
    },
    {
      "code" : "2",
      "display" : "Origen sensorial visual"
    },
    {
      "code" : "3",
      "display" : "Origen sensorial auditivo"
    },
    {
      "code" : "4",
      "display" : "Origen mental síquico"
    },
    {
      "code" : "5",
      "display" : "Origen mental intelectual"
    },
    {
      "code" : "6",
      "display" : "Origen múltiple"
    }
  ]
}

```
