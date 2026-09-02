# Origen de Discapacidad - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Origen de Discapacidad**

## CodeSystem: Origen de Discapacidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-OrigendeDiscapacidad-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:OrigendeDiscapacidadCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.10 | |

 
El origen de la discapacidad corresponde al evento, condición o circunstancia a partir de la cual se genera una situación de discapacidad en la persona, considerando la interacción entre sus condiciones de salud y las barreras contextuales, actitudinales y ambientales. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrigendeDiscapacidadVS](ValueSet-eis-OrigendeDiscapacidad-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-OrigendeDiscapacidad-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-OrigendeDiscapacidad-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.10"
  }],
  "version" : "0.2.0",
  "name" : "OrigendeDiscapacidadCS",
  "title" : "Origen de Discapacidad",
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
  "description" : "El origen de la discapacidad corresponde al evento, condición o circunstancia a partir de la cual se genera una situación de discapacidad en la persona, considerando la interacción entre sus condiciones de salud y las barreras contextuales, actitudinales y ambientales.",
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
    "display" : "Origen Físico",
    "definition" : "Origen Físico"
  },
  {
    "code" : "2",
    "display" : "Origen Sensorial Visual",
    "definition" : "Origen Sensorial Visual"
  },
  {
    "code" : "3",
    "display" : "Origen Sensorial Auditivo",
    "definition" : "Origen Sensorial Auditivo"
  },
  {
    "code" : "4",
    "display" : "Origen Mental Psíquico",
    "definition" : "Origen Mental Psíquico"
  },
  {
    "code" : "5",
    "display" : "Origen Mental Intelectual",
    "definition" : "Origen Mental Intelectual"
  },
  {
    "code" : "6",
    "display" : "Origen Múltiple",
    "definition" : "Origen Múltiple"
  }]
}

```
