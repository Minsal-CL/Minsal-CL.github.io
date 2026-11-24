# Identidad de Género - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identidad de Género**

## CodeSystem: Identidad de Género 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-identidadgenero-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:IdentidadGeneroCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.24 | |

 
De acuerdo con la Ley 21.120, la identidad de género se entiende como la convicción personal e interna de ser hombre, mujer u otra identidad de género, tal como la persona se percibe a sí misma. Esta puede o no corresponder con el sexo y nombre de pila consignadas en la inscripción de nacimiento. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Identidad de Género](ValueSet-eis-identidad-genero-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-identidadgenero-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-identidadgenero-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.24"
  }],
  "version" : "0.2.1",
  "name" : "IdentidadGeneroCS",
  "title" : "Identidad de Género",
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
  "description" : "De acuerdo con la Ley 21.120, la identidad de género se entiende como la convicción personal e interna de ser hombre, mujer u otra identidad de género, tal como la persona se percibe a sí misma. Esta puede o no corresponder con el sexo y nombre de pila consignadas en la inscripción de nacimiento.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "Masculino",
    "definition" : "Masculino"
  },
  {
    "code" : "2",
    "display" : "Femenina",
    "definition" : "Femenina"
  },
  {
    "code" : "4",
    "display" : "Transgénero Masculino",
    "definition" : "Transgénero Masculino"
  },
  {
    "code" : "5",
    "display" : "Transgénero Femenina",
    "definition" : "Transgénero Femenina"
  },
  {
    "code" : "6",
    "display" : "No Binario",
    "definition" : "No Binario"
  },
  {
    "code" : "7",
    "display" : "Otro",
    "definition" : "Otro"
  },
  {
    "code" : "93",
    "display" : "No Informado",
    "definition" : "No Informado"
  }]
}

```
