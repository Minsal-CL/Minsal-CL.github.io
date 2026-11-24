# Pueblo Afrodescendiente Chileno - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pueblo Afrodescendiente Chileno**

## CodeSystem: Pueblo Afrodescendiente Chileno 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PuebloAfrodescendienteChileno-CS | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:PuebloAfrodescendienteChilenoCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.12 | |

 
Se entiende por pueblo afrodescendiente chileno al grupo humano que, teniendo nacionalidad chilena conforme a la Constitución Política de la República, comparte una historia, cultura, tradiciones y costumbres comunes, unidas por la conciencia de identidad y reconocimiento colectivo. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Pueblo Afrodescendiente Chileno](ValueSet-eis-PuebloAfrodescendienteChileno-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-PuebloAfrodescendienteChileno-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PuebloAfrodescendienteChileno-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.12"
  }],
  "version" : "0.2.1",
  "name" : "PuebloAfrodescendienteChilenoCS",
  "title" : "Pueblo Afrodescendiente Chileno",
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
  "description" : "Se entiende por pueblo afrodescendiente chileno al grupo humano que, teniendo nacionalidad chilena conforme a la Constitución Política de la República, comparte una historia, cultura, tradiciones y costumbres comunes, unidas por la conciencia de identidad y reconocimiento colectivo.",
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
    "display" : "Afrodescendiente Chileno",
    "definition" : "Afrodescendiente Chileno"
  },
  {
    "code" : "2",
    "display" : "No Afrodescendiente Chileno",
    "definition" : "No Afrodescendiente Chileno"
  }]
}

```
