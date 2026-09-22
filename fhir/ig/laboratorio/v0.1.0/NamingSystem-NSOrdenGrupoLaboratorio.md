# Identificador de Orden Agrupadora de Laboratorio (por establecimiento) - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identificador de Orden Agrupadora de Laboratorio (por establecimiento)**

## NamingSystem: Identificador de Orden Agrupadora de Laboratorio (por establecimiento) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSOrdenGrupoLaboratorio | *Version*:0.5.1 |
| Active as of 2026-09-21 | *Computable Name*:OrdenGrupoLaboratorio |

 
Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSOrdenGrupoLaboratorio",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSOrdenGrupoLaboratorio"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.5.1"
  }],
  "name" : "OrdenGrupoLaboratorio",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-09-21",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
    "preferred" : true,
    "comment" : "116105 = código DEIS del establecimiento de ejemplo; cada establecimiento real usa su propio código en este mismo patrón de URI."
  }]
}

```
