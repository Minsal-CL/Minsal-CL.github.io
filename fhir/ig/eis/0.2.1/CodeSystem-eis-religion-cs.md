# Religiones y Cultos - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Religiones y Cultos**

## CodeSystem: Religiones y Cultos 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-religion-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:ReligionCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.33 | |

 
La religión o credo corresponde a un sistema de creencias y prácticas, de carácter individual o colectivo, relacionadas con lo que la persona considera sagrado o divino, y que se vinculan a su dimensión espiritual, existencial y cultural. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Religiones y Cultos](ValueSet-eis-religion-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-religion-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-religion-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.33"
  }],
  "version" : "0.2.1",
  "name" : "ReligionCS",
  "title" : "Religiones y Cultos",
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
  "description" : "La religión o credo corresponde a un sistema de creencias y prácticas, de carácter individual o colectivo, relacionadas con lo que la persona considera sagrado o divino, y que se vinculan a su dimensión espiritual, existencial y cultural.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "1",
    "display" : "Católica",
    "definition" : "Católica"
  },
  {
    "code" : "2",
    "display" : "Evangélica",
    "definition" : "Evangélica"
  },
  {
    "code" : "3",
    "display" : "Testigo de Jehová",
    "definition" : "Testigo de Jehová"
  },
  {
    "code" : "4",
    "display" : "Judaica",
    "definition" : "Judaica"
  },
  {
    "code" : "5",
    "display" : "Mormón",
    "definition" : "Mormón"
  },
  {
    "code" : "6",
    "display" : "Musulmana",
    "definition" : "Musulmana"
  },
  {
    "code" : "7",
    "display" : "Ortodoxa",
    "definition" : "Ortodoxa"
  },
  {
    "code" : "8",
    "display" : "Otra religión o credo",
    "definition" : "Otra religión o credo"
  },
  {
    "code" : "9",
    "display" : "Ninguna",
    "definition" : "Ninguna"
  }]
}

```
