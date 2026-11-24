# Modalidad de atención - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modalidad de atención**

## CodeSystem: Modalidad de atención 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-modalidad-atencion-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:ModalidadAtencionCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.25 | |

 
Modalidad de atención 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Modalidad de atención](ValueSet-eis-modalidad-atencion-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-modalidad-atencion-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-modalidad-atencion-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.25"
  }],
  "version" : "0.2.1",
  "name" : "ModalidadAtencionCS",
  "title" : "Modalidad de atención",
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
  "description" : "Modalidad de atención",
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
    "code" : "1",
    "display" : "Atención presencial",
    "definition" : "Atención presencial"
  },
  {
    "code" : "2",
    "display" : "Atención remota",
    "definition" : "Atención remota"
  },
  {
    "code" : "3",
    "display" : "Atención mixta",
    "definition" : "Atención mixta"
  }]
}

```
