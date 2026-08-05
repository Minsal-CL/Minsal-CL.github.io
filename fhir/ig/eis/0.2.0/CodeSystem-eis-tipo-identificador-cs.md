# Tipo de Identificador - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de Identificador**

## CodeSystem: Tipo de Identificador 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-identificador-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:TipoIdentificadorCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.37 | |

 
Define el tipo de documento de identificación del usuario, paciente o prestador de salud individual 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TipoIdentificadorVS](ValueSet-eis-tipo-identificador-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tipo-identificador-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-identificador-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.37"
  }],
  "version" : "0.2.0",
  "name" : "TipoIdentificadorCS",
  "title" : "Tipo de Identificador",
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
  "description" : "Define el tipo de documento de identificación del usuario, paciente o prestador de salud individual",
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
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "RUN",
    "definition" : "RUN"
  },
  {
    "code" : "2",
    "display" : "RUN Materno / Progenitor (a)",
    "definition" : "RUN Materno / Progenitor (a)"
  },
  {
    "code" : "3",
    "display" : "Número de Pasaporte",
    "definition" : "Número de Pasaporte"
  },
  {
    "code" : "4",
    "display" : "Número de Documento Identificador de País de Origen",
    "definition" : "Número de Documento Identificador de País de Origen"
  },
  {
    "code" : "5",
    "display" : "Número de Identificador Provisorio FONASA (NIP)",
    "definition" : "Número de Identificador Provisorio FONASA (NIP)"
  },
  {
    "code" : "6",
    "display" : "Número de Historia Clínica",
    "definition" : "Número de Historia Clínica"
  },
  {
    "code" : "7",
    "display" : "Identificación Provisoria del Estudiante (IPE)",
    "definition" : "Identificación Provisoria del Estudiante (IPE)"
  }]
}

```
