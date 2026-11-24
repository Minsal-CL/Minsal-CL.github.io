# Estado Civil - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado Civil**

## CodeSystem: Estado Civil 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:EstadoCivilCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.4 | |

 
El estado civil es la situación de un individuo jurídica de una persona dentro de la sociedad, determinada principalmente por sus relaciones de familia, que la habilita para ejercer determinados derechos y contraer obligaciones de carácter civil. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Estado Civil](ValueSet-eis-EstadoCivil-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-EstadoCivil-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.4"
  }],
  "version" : "0.2.1",
  "name" : "EstadoCivilCS",
  "title" : "Estado Civil",
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
  "description" : "El estado civil es la situación de un individuo jurídica de una persona dentro de la sociedad, determinada principalmente por sus relaciones de familia, que la habilita para ejercer determinados derechos y contraer obligaciones de carácter civil.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "Soltero/a",
    "definition" : "Soltero/a"
  },
  {
    "code" : "2",
    "display" : "Casado/a",
    "definition" : "Casado/a"
  },
  {
    "code" : "3",
    "display" : "Viudo/a",
    "definition" : "Viudo/a"
  },
  {
    "code" : "4",
    "display" : "Divorciado/a",
    "definition" : "Divorciado/a"
  },
  {
    "code" : "5",
    "display" : "Separado/a Judicialmente",
    "definition" : "Separado/a Judicialmente"
  },
  {
    "code" : "6",
    "display" : "Conviviente (con acuerdo de unión civil)",
    "definition" : "Conviviente (con acuerdo de unión civil)"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
