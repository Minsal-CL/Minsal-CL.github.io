# Pertenencia al Sistema Nacional de Servicios de Salud - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pertenencia al Sistema Nacional de Servicios de Salud**

## CodeSystem: Pertenencia al Sistema Nacional de Servicios de Salud 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-pertenencia-sistema-nacional-servicios-salud-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:PertenenciaSistemaNacionalServiciosSaludCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.30 | |

 
Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Pertenencia al Sistema Nacional de Servicios de Salud](ValueSet-eis-pertenencia-sistema-nacional-servicios-salud-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-pertenencia-sistema-nacional-servicios-salud-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-pertenencia-sistema-nacional-servicios-salud-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.30"
  }],
  "version" : "0.2.1",
  "name" : "PertenenciaSistemaNacionalServiciosSaludCS",
  "title" : "Pertenencia al Sistema Nacional de Servicios de Salud",
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
  "description" : "Los establecimientos públicos pertenecen a un Servicio de Salud y, por ello, se conside-ran parte del Sistema Nacional de Servicios de Salud. Los establecimientos privados y los de las Fuerzas Armadas, de Orden y Seguridad tienen una jurisdicción distinta y, por tanto, quedan fuera de dicho sistema.",
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
    "code" : "1",
    "display" : "Pertenecientes al SNSS",
    "definition" : "Pertenecientes al SNSS"
  },
  {
    "code" : "2",
    "display" : "No pertenecientes al SNSS",
    "definition" : "No pertenecientes al SNSS"
  }]
}

```
