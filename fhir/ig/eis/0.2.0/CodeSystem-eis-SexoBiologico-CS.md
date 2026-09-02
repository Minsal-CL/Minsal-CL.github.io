# Sexo Biológico - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexo Biológico**

## CodeSystem: Sexo Biológico 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoBiologico-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:SexoBiologicoCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.14 | |

 
El sexo biológico corresponde a la determinación realizada mediante la aplicación de criterios biológicos y anatómicos, utilizados para clasificar a las personas como hombre o mujer al momento del nacimiento. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SexoBiologicoVS](ValueSet-SexoBiologicoVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-SexoBiologico-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoBiologico-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.14"
  }],
  "version" : "0.2.0",
  "name" : "SexoBiologicoCS",
  "title" : "Sexo Biológico",
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
  "description" : "El sexo biológico corresponde a la determinación realizada mediante la aplicación de criterios biológicos y anatómicos, utilizados para clasificar a las personas como hombre o mujer al momento del nacimiento.",
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
    "code" : "1",
    "display" : "Hombre",
    "definition" : "Hombre"
  },
  {
    "code" : "2",
    "display" : "Mujer",
    "definition" : "Mujer"
  },
  {
    "code" : "3",
    "display" : "Intersexual",
    "definition" : "Intersexual"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
