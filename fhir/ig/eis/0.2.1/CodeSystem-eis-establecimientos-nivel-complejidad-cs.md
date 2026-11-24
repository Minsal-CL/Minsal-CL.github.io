# Establecimientos según Nivel de Complejidad - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimientos según Nivel de Complejidad**

## CodeSystem: Establecimientos según Nivel de Complejidad 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-establecimientos-nivel-complejidad-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:EstablecimientosNivelComplejidadCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.22 | |

 
El nivel de complejidad de los establecimientos que integran la Red Asistencial del Sistema Nacional de Servicios de Salud se determina conforme a lo establecido en el Reglamento Orgánico de los Servicios de Salud, considerando su infraestructura, capacidad resolutiva y tipo de prestaciones que otorgan. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Establecimientos según Nivel de Complejidad](ValueSet-eis-establecimientos-nivel-complejidad-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-establecimientos-nivel-complejidad-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-establecimientos-nivel-complejidad-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.22"
  }],
  "version" : "0.2.1",
  "name" : "EstablecimientosNivelComplejidadCS",
  "title" : "Establecimientos según Nivel de Complejidad",
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
  "description" : "El nivel de complejidad de los establecimientos que integran la Red Asistencial del Sistema Nacional de Servicios de Salud se determina conforme a lo establecido en el Reglamento Orgánico de los Servicios de Salud, considerando su infraestructura, capacidad resolutiva y tipo de prestaciones que otorgan.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Baja complejidad",
    "definition" : "Baja complejidad"
  },
  {
    "code" : "2",
    "display" : "Mediana complejidad",
    "definition" : "Mediana complejidad"
  },
  {
    "code" : "3",
    "display" : "Alta complejidad",
    "definition" : "Alta complejidad"
  }]
}

```
