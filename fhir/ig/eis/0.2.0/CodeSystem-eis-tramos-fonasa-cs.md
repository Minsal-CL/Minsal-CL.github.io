# Tramos FONASA - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tramos FONASA**

## CodeSystem: Tramos FONASA 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tramos-fonasa-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:TramosFONASACS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.42 | |

 
Los tramos FONASA corresponden a la clasificación que realiza el Fondo Nacional de Salud (FONASA) en función del nivel de ingreso mensual que percibe la persona, la cual determina el acceso a beneficios, copagos y modalidades de atención dentro del Seguro Público de Salud. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TramosFONASAVS](ValueSet-eis-tramos-fonasa-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tramos-fonasa-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tramos-fonasa-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.42"
  }],
  "version" : "0.2.0",
  "name" : "TramosFONASACS",
  "title" : "Tramos FONASA",
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
  "description" : "Los tramos FONASA corresponden a la clasificación que realiza el Fondo Nacional de Salud (FONASA) en función del nivel de ingreso mensual que percibe la persona, la cual determina el acceso a beneficios, copagos y modalidades de atención dentro del Seguro Público de Salud. ",
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
    "code" : "A",
    "display" : "Tramo A",
    "definition" : "Tramo A"
  },
  {
    "code" : "B",
    "display" : "Tramo B",
    "definition" : "Tramo B"
  },
  {
    "code" : "C",
    "display" : "Tramo C",
    "definition" : "Tramo C"
  },
  {
    "code" : "D",
    "display" : "Tramo D",
    "definition" : "Tramo D"
  }]
}

```
