# Tipo de Vía - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de Vía**

## CodeSystem: Tipo de Vía 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-via-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:TipoViaCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.40 | |

 
Corresponde al tipo o clasificación de calle. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Tipo de Vía](ValueSet-eis-tipo-via-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tipo-via-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-via-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.40"
  }],
  "version" : "0.2.1",
  "name" : "TipoViaCS",
  "title" : "Tipo de Vía",
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
  "description" : "Corresponde al tipo o clasificación de calle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "1",
    "display" : "Calle",
    "definition" : "Calle"
  },
  {
    "code" : "2",
    "display" : "Avenida",
    "definition" : "Avenida"
  },
  {
    "code" : "3",
    "display" : "Pasaje",
    "definition" : "Pasaje"
  },
  {
    "code" : "4",
    "display" : "Camino",
    "definition" : "Camino"
  },
  {
    "code" : "5",
    "display" : "Carretera",
    "definition" : "Carretera"
  },
  {
    "code" : "6",
    "display" : "Callejón",
    "definition" : "Callejón"
  },
  {
    "code" : "7",
    "display" : "Paseo",
    "definition" : "Paseo"
  },
  {
    "code" : "8",
    "display" : "Escalera",
    "definition" : "Escalera"
  },
  {
    "code" : "9",
    "display" : "Otro",
    "definition" : "Otro"
  },
  {
    "code" : "10",
    "display" : "Rotonda",
    "definition" : "Rotonda"
  }]
}

```
