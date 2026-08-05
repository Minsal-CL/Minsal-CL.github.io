# Nivel de Instrucción - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nivel de Instrucción**

## CodeSystem: Nivel de Instrucción 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-NiveldeInstruccion-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:NiveldeInstruccionCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.8 | |

 
Código del último nivel aprobado 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NiveldeInstruccionVS](ValueSet-eis-NiveldeInstruccion-CS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-NiveldeInstruccion-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-NiveldeInstruccion-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.8"
  }],
  "version" : "0.2.0",
  "name" : "NiveldeInstruccionCS",
  "title" : "Nivel de Instrucción",
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
  "description" : "Código del último nivel aprobado",
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
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "Preescolar",
    "definition" : "Preescolar"
  },
  {
    "code" : "2",
    "display" : "Especial o Diferencial",
    "definition" : "Especial o Diferencial"
  },
  {
    "code" : "3",
    "display" : "Básica o Primaria",
    "definition" : "Básica o Primaria"
  },
  {
    "code" : "4",
    "display" : "Media o Secundaria",
    "definition" : "Media o Secundaria"
  },
  {
    "code" : "5",
    "display" : "Educación Superior",
    "definition" : "Educación Superior"
  },
  {
    "code" : "6",
    "display" : "Sin Instrucción",
    "definition" : "Sin Instrucción"
  }]
}

```
