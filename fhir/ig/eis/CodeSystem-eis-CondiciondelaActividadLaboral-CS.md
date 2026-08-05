# Condicion de la Actividad Laboral - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condicion de la Actividad Laboral**

## CodeSystem: Condicion de la Actividad Laboral 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-CondiciondelaActividadLaboral-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:CondiciondelaActividadLaboralCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.2 | |

 
La condición de la actividad corresponde a la relación que mantiene la persona con el trabajo al momento del registro, y se vincula con su ciclo de vida laboral, permitiendo identificar su situación de actividad económica. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CondiciondelaActividadLaboralVS](ValueSet-eis-CondiciondelaActividadLaboral-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-CondiciondelaActividadLaboral-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-CondiciondelaActividadLaboral-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.2"
  }],
  "version" : "0.2.0",
  "name" : "CondiciondelaActividadLaboralCS",
  "title" : "Condicion de la Actividad Laboral",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T00:00:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "La condición de la actividad corresponde a la relación que mantiene la persona con el trabajo al momento del registro, y se vincula con su ciclo de vida laboral, permitiendo identificar su situación de actividad económica. ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "version" : "20210120",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "1",
    "display" : "Inactivo",
    "definition" : "Inactivo"
  },
  {
    "code" : "2",
    "display" : "Activo",
    "definition" : "Activo"
  },
  {
    "code" : "3",
    "display" : "Cesante o temporalmente sin trabajo",
    "definition" : "Cesante o temporalmente sin trabajo"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
