# Tipo de recinto - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipo de recinto**

## CodeSystem: Tipo de recinto 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-recinto-cs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALTipoRecintoCS |

 
Tipo físico u operacional de una Location. Abstrae las categorías de MIDAS y SAFIS sin copiarlas. Los tipos de establecimiento asistencial (hospital, CESFAM, SAPU y otros) no van aquí: se informan en Organization.type con el catálogo de EIS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Tipos de recinto](ValueSet-nid-tipo-recinto-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nid-tipo-recinto-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-recinto-cs",
  "version" : "0.5.0",
  "name" : "MINSALTipoRecintoCS",
  "title" : "Tipo de recinto",
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
  "description" : "Tipo físico u operacional de una Location. Abstrae las categorías de MIDAS y SAFIS sin copiarlas. Los tipos de establecimiento asistencial (hospital, CESFAM, SAPU y otros) no van aquí: se informan en Organization.type con el catálogo de EIS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "sede",
    "display" : "Sede o edificio",
    "definition" : "Inmueble o conjunto de inmuebles donde funciona un establecimiento o parte de él."
  },
  {
    "code" : "dependencia",
    "display" : "Dependencia física",
    "definition" : "Área interna de una sede con relevancia interoperable o regulatoria, como un pabellón, un laboratorio, una unidad de imagenología o un vacunatorio."
  },
  {
    "code" : "farmacia",
    "display" : "Farmacia",
    "definition" : "Farmacia comunitaria."
  },
  {
    "code" : "farmacia-asistencial",
    "display" : "Farmacia asistencial",
    "definition" : "Farmacia que funciona dentro de un establecimiento asistencial."
  },
  {
    "code" : "botiquin",
    "display" : "Botiquín"
  },
  {
    "code" : "almacen-farmaceutico",
    "display" : "Almacén farmacéutico"
  },
  {
    "code" : "drogueria",
    "display" : "Droguería"
  },
  {
    "code" : "deposito-farmaceutico",
    "display" : "Depósito de productos farmacéuticos"
  },
  {
    "code" : "laboratorio-farmaceutico",
    "display" : "Laboratorio farmacéutico"
  }]
}

```
