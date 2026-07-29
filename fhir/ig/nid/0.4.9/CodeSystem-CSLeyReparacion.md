# Leyes Reparación - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Leyes Reparación**

## CodeSystem: Leyes Reparación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyReparacion | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSLeyReparacion |

 
Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSLeyReparacion](ValueSet-VSLeyReparacion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSLeyReparacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyReparacion",
  "version" : "0.4.9",
  "name" : "CSLeyReparacion",
  "title" : "Leyes Reparación",
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
  "description" : "Código asociados a Leyes de Reparación que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
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
      "display" : "Antuco"
    },
    {
      "code" : "2",
      "display" : "Prilonco"
    },
    {
      "code" : "3",
      "display" : "Dirigente Vecinal"
    },
    {
      "code" : "4",
      "display" : "Prais"
    }
  ]
}

```
