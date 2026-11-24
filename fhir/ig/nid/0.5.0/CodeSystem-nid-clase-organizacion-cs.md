# Clase de organización - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Clase de organización**

## CodeSystem: Clase de organización 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALClaseOrganizacionCS |

 
Distingue qué representa una Organization en el directorio: la entidad jurídica, el establecimiento asistencial identificado por DEIS o la autoridad sanitaria que emite resoluciones. La jerarquía administrativa DEIS, la jurídica y la física son independientes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Clases de organización](ValueSet-nid-clase-organizacion-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nid-clase-organizacion-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs",
  "version" : "0.5.0",
  "name" : "MINSALClaseOrganizacionCS",
  "title" : "Clase de organización",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Distingue qué representa una Organization en el directorio: la entidad jurídica, el establecimiento asistencial identificado por DEIS o la autoridad sanitaria que emite resoluciones. La jerarquía administrativa DEIS, la jurídica y la física son independientes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "entidad-juridica",
    "display" : "Entidad jurídica",
    "definition" : "Persona jurídica o institución administradora, identificada por su RUT. Puede ser responsable de uno o más establecimientos o recintos."
  },
  {
    "code" : "establecimiento-asistencial",
    "display" : "Establecimiento asistencial",
    "definition" : "Establecimiento de salud identificado por su código DEIS, sea una clínica completa, un SAPU o una unidad más pequeña con código propio."
  },
  {
    "code" : "autoridad-sanitaria",
    "display" : "Autoridad sanitaria",
    "definition" : "Organismo que emite autorizaciones sanitarias, como una SEREMI de Salud o el Instituto de Salud Pública."
  }]
}

```
