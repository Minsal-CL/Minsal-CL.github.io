# Previsión - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Previsión**

## CodeSystem: Previsión 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSPrevision | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSPrevision |

 
Previsión 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPrevision](ValueSet-VSPrevision.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPrevision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSPrevision",
  "version" : "0.4.9",
  "name" : "CSPrevision",
  "title" : "Previsión",
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
  "description" : "Previsión",
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
      "code" : "1",
      "display" : "FONASA",
      "definition" : "Fondo Nacional de Salud"
    },
    {
      "code" : "2",
      "display" : "ISAPRE",
      "definition" : "Instituciones de Salud Previsional"
    },
    {
      "code" : "3",
      "display" : "CAPREDENA",
      "definition" : "Caja de Previsión de la Defensa Nacional"
    },
    {
      "code" : "4",
      "display" : "DIPRECA",
      "definition" : "Dirección de Previsión de Carabineros, PDI y Gendarmería"
    },
    {
      "code" : "5",
      "display" : "SISA",
      "definition" : "Sistema de Salud de las Fuerzas Armadas (Ejército, Armada y Fuerza Aérea)."
    },
    {
      "code" : "96",
      "display" : "NINGUNA",
      "definition" : "Ningúna Previsión"
    },
    {
      "code" : "99",
      "display" : "DESCONOCIDO",
      "definition" : "Desconoce su Previsión"
    }
  ]
}

```
