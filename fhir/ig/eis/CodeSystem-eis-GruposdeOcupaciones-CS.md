# Grupos de Ocupaciones - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Grupos de Ocupaciones**

## CodeSystem: Grupos de Ocupaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-GruposdeOcupaciones-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:GruposdeOcupacionesCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.5 | |

 
La ocupación corresponde al conjunto de tareas y funciones asociadas al empleo que la persona desempeña o ha desempeñado. Una persona puede estar vinculada a una ocupación a través de su empleo principal, un empleo secundario o un empleo desempeñado anteriormente. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GruposdeOcupacionesVS](ValueSet-eis-GruposdeOcupaciones-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-GruposdeOcupaciones-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-GruposdeOcupaciones-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.5"
  }],
  "version" : "0.2.0",
  "name" : "GruposdeOcupacionesCS",
  "title" : "Grupos de Ocupaciones",
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
  "description" : "La ocupación corresponde al conjunto de tareas y funciones asociadas al empleo que la persona desempeña o ha desempeñado. Una persona puede estar vinculada a una ocupación a través de su empleo principal, un empleo secundario o un empleo desempeñado anteriormente.",
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
  "count" : 10,
  "concept" : [{
    "code" : "1",
    "display" : "Directores, Gerentes y Administradores",
    "definition" : "Directores, Gerentes y Administradores"
  },
  {
    "code" : "2",
    "display" : "Profesionales, Científicos e Intelectuales",
    "definition" : "Profesionales, Científicos e Intelectuales"
  },
  {
    "code" : "3",
    "display" : "Técnicos y Profesionales de Nivel Medio",
    "definition" : "Técnicos y Profesionales de Nivel Medio"
  },
  {
    "code" : "4",
    "display" : "Personal de Apoyo Administrativo",
    "definition" : "Personal de Apoyo Administrativo"
  },
  {
    "code" : "5",
    "display" : "Trabajadores de los Servicios y Vendedores de Comercio y Mercado",
    "definition" : "Trabajadores de los Servicios y Vendedores de Comercio y Mercado"
  },
  {
    "code" : "6",
    "display" : "Agricultores y Trabajadores Calificados Agropecuarios y Pesqueros",
    "definition" : "Agricultores y Trabajadores Calificados Agropecuarios y Pesqueros"
  },
  {
    "code" : "7",
    "display" : "Artesanos y Operarios de Oficios",
    "definition" : "Artesanos y Operarios de Oficios"
  },
  {
    "code" : "8",
    "display" : "Operadores de Instalaciones, Máquinas y Ensambladores",
    "definition" : "Operadores de Instalaciones, Máquinas y Ensambladores"
  },
  {
    "code" : "9",
    "display" : "Ocupaciones Elementales",
    "definition" : "Ocupaciones Elementales"
  },
  {
    "code" : "0",
    "display" : "Ocupaciones de las Fuerzas Armadas",
    "definition" : "Ocupaciones de las Fuerzas Armadas"
  }]
}

```
