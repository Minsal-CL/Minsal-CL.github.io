# Tipo de Prestador - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de Prestador**

## CodeSystem: Tipo de Prestador 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-prestador-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:TipoPrestadorCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.38 | |

 
Tipo de Prestador 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Tipo de Prestador](ValueSet-eis-tipo-prestador-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tipo-prestador-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-prestador-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.38"
  }],
  "version" : "0.2.1",
  "name" : "TipoPrestadorCS",
  "title" : "Tipo de Prestador",
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
  "description" : "Tipo de Prestador",
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
    "display" : "Prestador Individual",
    "definition" : "Prestador Individual"
  },
  {
    "code" : "2",
    "display" : "Prestador Institucional",
    "definition" : "Prestador Institucional"
  }]
}

```
