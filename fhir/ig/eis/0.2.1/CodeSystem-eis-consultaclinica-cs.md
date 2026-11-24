# Consulta clínica - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consulta clínica**

## CodeSystem: Consulta clínica 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-consultaclinica-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:ConsultaClinicaCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.17 | |

 
Consulta clínica 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Consulta clínica](ValueSet-eis-consultaclinica-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-consultaclinica-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-consultaclinica-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.17"
  }],
  "version" : "0.2.1",
  "name" : "ConsultaClinicaCS",
  "title" : "Consulta clínica",
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
  "description" : "Consulta clínica",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Primera consulta",
    "definition" : "Primera consulta"
  },
  {
    "code" : "2",
    "display" : "Consulta de seguimiento",
    "definition" : "Consulta de seguimiento"
  }]
}

```
