# Tipo de proceso asistencial - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de proceso asistencial**

## CodeSystem: Tipo de proceso asistencial 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-proceso-asistencial-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:TipoProcesoAsistencialCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.39 | |

 
Tipo de proceso asistencial 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TipoProcesoAsistencialVS](ValueSet-eis-tipo-proceso-asistencial-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tipo-proceso-asistencial-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-proceso-asistencial-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.39"
  }],
  "version" : "0.2.0",
  "name" : "TipoProcesoAsistencialCS",
  "title" : "Tipo de proceso asistencial",
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
  "description" : "Tipo de proceso asistencial",
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
    "display" : "Atención cerrada",
    "definition" : "Atención cerrada"
  },
  {
    "code" : "2",
    "display" : "Atención de urgencia",
    "definition" : "Atención de urgencia"
  },
  {
    "code" : "3",
    "display" : "Atención abierta",
    "definition" : "Atención abierta"
  },
  {
    "code" : "4",
    "display" : "Servicios de apoyo clínico",
    "definition" : "diagnóstico y terapéutico"
  }]
}

```
