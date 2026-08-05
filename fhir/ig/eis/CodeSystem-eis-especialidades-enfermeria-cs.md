# Especialidades y Subespecialidades de Enfermería - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades y Subespecialidades de Enfermería**

## CodeSystem: Especialidades y Subespecialidades de Enfermería 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-enfermeria-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:EspecialidadesEnfermeriaCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.19 | |

 
Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades de enfermería, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de enfermería en el sistema de salud. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EspecialidadesEnfermeriaVS](ValueSet-eis-especialidades-enfermeria-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-especialidades-enfermeria-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-enfermeria-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.19"
  }],
  "version" : "0.2.0",
  "name" : "EspecialidadesEnfermeriaCS",
  "title" : "Especialidades y Subespecialidades de Enfermería",
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
  "description" : "Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades de enfermería, que permiten identificar el ámbito específico de desempeño profesional del prestador individual del área de enfermería en el sistema de salud.",
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
  "count" : 1,
  "concept" : [{
    "code" : "1",
    "display" : "Enfermería Oncológica",
    "definition" : "Enfermería Oncológica"
  }]
}

```
