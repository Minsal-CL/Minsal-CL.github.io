# Previsión de Salud - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Previsión de Salud**

## CodeSystem: Previsión de Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PrevisiondeSalud-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:PrevisiondeSaludCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.11 | |

 
La previsión corresponde a la variable que identifica el sistema de aseguramiento de salud vigente al que se encuentra adscrita la persona, el cual define la cobertura para acciones de promoción, prevención, tratamiento y control de las enfermedades. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PrevisiondeSaludVS](ValueSet-eis-PrevisiondeSalud-VS.md)
* [RegionesVS](ValueSet-eis-regiones-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-PrevisiondeSalud-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PrevisiondeSalud-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.11"
  }],
  "version" : "0.2.0",
  "name" : "PrevisiondeSaludCS",
  "title" : "Previsión de Salud",
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
  "description" : "La previsión corresponde a la variable que identifica el sistema de aseguramiento de salud vigente al que se encuentra adscrita la persona, el cual define la cobertura para acciones de promoción, prevención, tratamiento y control de las enfermedades.",
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
  "count" : 8,
  "concept" : [{
    "code" : "1",
    "display" : "FONASA",
    "definition" : "FONASA"
  },
  {
    "code" : "2",
    "display" : "ISAPRE",
    "definition" : "ISAPRE"
  },
  {
    "code" : "3",
    "display" : "CAPREDENA",
    "definition" : "CAPREDENA"
  },
  {
    "code" : "4",
    "display" : "DIPRECA",
    "definition" : "DIPRECA"
  },
  {
    "code" : "6",
    "display" : "SISAE",
    "definition" : "SISAE"
  },
  {
    "code" : "7",
    "display" : "SISAN",
    "definition" : "SISAN"
  },
  {
    "code" : "8",
    "display" : "SISAF",
    "definition" : "SISAF"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
