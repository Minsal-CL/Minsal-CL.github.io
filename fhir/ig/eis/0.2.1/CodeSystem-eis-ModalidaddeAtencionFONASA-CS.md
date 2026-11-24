# Modalidad de Atención FONASA - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modalidad de Atención FONASA**

## CodeSystem: Modalidad de Atención FONASA 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-ModalidaddeAtencionFONASA-CS | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:ModalidaddeAtencionFONASACS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.6 | |

 
La modalidad de atención FONASA corresponde a la forma en que una persona afiliada voluntariamente al Fondo Nacional de Salud (FONASA) accede a las prestaciones de salud, permitiéndole contar con los servicios y la protección financiera otorgada por el Seguro Público de Salud 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Modalidad de Atención FONASA](ValueSet-eis-ModalidaddeAtencionFONASA-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-ModalidaddeAtencionFONASA-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-ModalidaddeAtencionFONASA-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.6"
  }],
  "version" : "0.2.1",
  "name" : "ModalidaddeAtencionFONASACS",
  "title" : "Modalidad de Atención FONASA",
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
  "description" : "La modalidad de atención FONASA corresponde a la forma en que  una persona afiliada voluntariamente al Fondo Nacional de Salud (FONASA) accede a las prestaciones de salud, permitiéndole contar con los servicios y la protección financiera otorgada por el Seguro Público de Salud",
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
    "code" : "MAI",
    "display" : "Modalidad de Atención Institucional",
    "definition" : "Modalidad de Atención Institucional"
  },
  {
    "code" : "MLE",
    "display" : "Modalidad Libre Elección",
    "definition" : "Modalidad Libre Elección"
  }]
}

```
