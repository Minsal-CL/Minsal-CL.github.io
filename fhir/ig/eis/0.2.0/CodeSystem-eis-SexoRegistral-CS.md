# Sexo Registral - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexo Registral**

## CodeSystem: Sexo Registral 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoRegistral-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:SexoRegistralCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.15 | |

 
o Reúne los códigos y valores relacionados con el sexo registral explicitado por el SRCeI 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SexoRegistralVS](ValueSet-SexoRegistralVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-SexoRegistral-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoRegistral-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.15"
  }],
  "version" : "0.2.0",
  "name" : "SexoRegistralCS",
  "title" : "Sexo Registral",
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
  "description" : "o\tReúne los códigos y valores relacionados con el sexo registral explicitado por el SRCeI",
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
  "count" : 5,
  "concept" : [{
    "code" : "M",
    "display" : "Masculino",
    "definition" : "Masculino"
  },
  {
    "code" : "F",
    "display" : "Femenino",
    "definition" : "Femenino"
  },
  {
    "code" : "X",
    "display" : "No Binario",
    "definition" : "No Binario"
  },
  {
    "code" : "I",
    "display" : "Indeterminado",
    "definition" : "Indeterminado"
  },
  {
    "code" : "D",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
