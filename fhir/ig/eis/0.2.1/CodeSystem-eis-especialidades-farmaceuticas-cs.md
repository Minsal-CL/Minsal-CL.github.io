# Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas**

## CodeSystem: Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-farmaceuticas-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:EspecialidadesFarmaceuticasCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.20 | |

 
Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades farmacéuticas o químico-farmacéuticas, que permiten identificar y registrar el ámbito específico de desempeño profesional del prestador individual del área farmacéutica. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Especialidades Farmacéuticas](ValueSet-eis-especialidades-farmaceuticas-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-especialidades-farmaceuticas-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-farmaceuticas-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.20"
  }],
  "version" : "0.2.1",
  "name" : "EspecialidadesFarmaceuticasCS",
  "title" : "Especialidades y Subespecialidades Farmacéuticas o Químico Farmacéuticas",
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
  "description" : "Corresponde al conjunto de códigos y valores asociados a las especialidades y subespecialidades farmacéuticas o químico-farmacéuticas, que permiten identificar y registrar el ámbito específico de desempeño profesional del prestador individual del área farmacéutica.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Farmacia Clínica",
    "definition" : "Farmacia Clínica"
  },
  {
    "code" : "2",
    "display" : "Farmacia Hospitalaria",
    "definition" : "Farmacia Hospitalaria"
  },
  {
    "code" : "3",
    "display" : "Laboratorio Clínico",
    "definition" : "Laboratorio Clínico"
  },
  {
    "code" : "4",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  },
  {
    "code" : "5",
    "display" : "Laboratorio Forense",
    "definition" : "Laboratorio Forense"
  }]
}

```
