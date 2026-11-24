# Instalación o actividad autorizada - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Instalación o actividad autorizada**

## CodeSystem: Instalación o actividad autorizada 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-actividad-autorizada-cs | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:MINSALActividadAutorizadaCS |

 
Alcance de una resolución sanitaria: qué instalación o actividad autoriza. Lista preliminar, sujeta a revisión con las SEREMI y el ISP. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Instalaciones o actividades autorizadas](ValueSet-nid-actividad-autorizada-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nid-actividad-autorizada-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-actividad-autorizada-cs",
  "version" : "0.5.0",
  "name" : "MINSALActividadAutorizadaCS",
  "title" : "Instalación o actividad autorizada",
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
  "description" : "Alcance de una resolución sanitaria: qué instalación o actividad autoriza. Lista preliminar, sujeta a revisión con las SEREMI y el ISP.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "funcionamiento",
    "display" : "Funcionamiento del establecimiento",
    "definition" : "Autorización general de funcionamiento."
  },
  {
    "code" : "pabellon-quirurgico",
    "display" : "Pabellón quirúrgico"
  },
  {
    "code" : "laboratorio-clinico",
    "display" : "Laboratorio clínico"
  },
  {
    "code" : "imagenologia",
    "display" : "Imagenología"
  },
  {
    "code" : "vacunatorio",
    "display" : "Vacunatorio"
  },
  {
    "code" : "esterilizacion",
    "display" : "Esterilización"
  },
  {
    "code" : "dialisis",
    "display" : "Diálisis"
  },
  {
    "code" : "banco-sangre",
    "display" : "Banco de sangre o unidad de medicina transfusional"
  },
  {
    "code" : "farmacia",
    "display" : "Farmacia"
  },
  {
    "code" : "botiquin",
    "display" : "Botiquín"
  },
  {
    "code" : "drogueria",
    "display" : "Droguería"
  },
  {
    "code" : "almacen-farmaceutico",
    "display" : "Almacén farmacéutico"
  }]
}

```
