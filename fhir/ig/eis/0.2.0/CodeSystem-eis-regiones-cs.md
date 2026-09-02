# Regiones - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Regiones**

## CodeSystem: Regiones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-regiones-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:RegionesCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.32 | |

 
Regiones 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-regiones-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-regiones-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.32"
  }],
  "version" : "0.2.0",
  "name" : "RegionesCS",
  "title" : "Regiones",
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
  "description" : "Regiones",
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
  "count" : 16,
  "concept" : [{
    "code" : "1",
    "display" : "Tarapacá",
    "definition" : "Tarapacá"
  },
  {
    "code" : "2",
    "display" : "Antofagasta",
    "definition" : "Antofagasta"
  },
  {
    "code" : "3",
    "display" : "Atacama",
    "definition" : "Atacama"
  },
  {
    "code" : "4",
    "display" : "Coquimbo",
    "definition" : "Coquimbo"
  },
  {
    "code" : "5",
    "display" : "Valparaíso",
    "definition" : "Valparaíso"
  },
  {
    "code" : "6",
    "display" : "Libertador General Bernardo O'Higgins",
    "definition" : "Libertador General Bernardo O'Higgins"
  },
  {
    "code" : "7",
    "display" : "Maule",
    "definition" : "Maule"
  },
  {
    "code" : "8",
    "display" : "Biobío",
    "definition" : "Biobío"
  },
  {
    "code" : "9",
    "display" : "La Araucanía",
    "definition" : "La Araucanía"
  },
  {
    "code" : "10",
    "display" : "Los Lagos",
    "definition" : "Los Lagos"
  },
  {
    "code" : "11",
    "display" : "Aysén del General Carlos Ibáñez del Campo",
    "definition" : "Aysén del General Carlos Ibáñez del Campo"
  },
  {
    "code" : "12",
    "display" : "Magallanes y de la Antártica Chilena",
    "definition" : "Magallanes y de la Antártica Chilena"
  },
  {
    "code" : "13",
    "display" : "Metropolitana de Santiago",
    "definition" : "Metropolitana de Santiago"
  },
  {
    "code" : "14",
    "display" : "Los Ríos",
    "definition" : "Los Ríos"
  },
  {
    "code" : "15",
    "display" : "Arica y Parinacota",
    "definition" : "Arica y Parinacota"
  },
  {
    "code" : "16",
    "display" : "Ñuble",
    "definition" : "Ñuble"
  }]
}

```
