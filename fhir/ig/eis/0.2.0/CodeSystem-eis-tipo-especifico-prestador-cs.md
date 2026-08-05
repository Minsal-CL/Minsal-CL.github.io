# Tipo específico de prestador - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo específico de prestador**

## CodeSystem: Tipo específico de prestador 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-especifico-prestador-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:TipoEspecificoPrestadorCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.36 | |

 
Tipo específico de prestador 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TipoEspecificoPrestadorVS](ValueSet-eis-tipo-especifico-prestador-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-tipo-especifico-prestador-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-especifico-prestador-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.36"
  }],
  "version" : "0.2.0",
  "name" : "TipoEspecificoPrestadorCS",
  "title" : "Tipo específico de prestador",
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
  "description" : "Tipo específico de prestador",
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
  "count" : 27,
  "concept" : [{
    "code" : "1",
    "display" : "Hospitales de primer nivel",
    "definition" : "Hospitales de primer nivel"
  },
  {
    "code" : "2",
    "display" : "Hospitales de segundo nivel",
    "definition" : "Hospitales de segundo nivel"
  },
  {
    "code" : "3",
    "display" : "Hospitales de tercer nivel",
    "definition" : "Hospitales de tercer nivel"
  },
  {
    "code" : "4",
    "display" : "Clínicas privadas",
    "definition" : "Clínicas privadas"
  },
  {
    "code" : "5",
    "display" : "Centros de salud para personas privadas de libertad",
    "definition" : "Centros de salud para personas privadas de libertad"
  },
  {
    "code" : "6",
    "display" : "Servicios de Atención Primaria de Urgencia de Alta Resolución (SAR)",
    "definition" : "Servicios de Atención Primaria de Urgencia de Alta Resolución (SAR)"
  },
  {
    "code" : "7",
    "display" : "Servicios de Atención Primaria de Urgencia (SAPU)",
    "definition" : "Servicios de Atención Primaria de Urgencia (SAPU)"
  },
  {
    "code" : "8",
    "display" : "Servicios de Urgencia Rural (SUR)",
    "definition" : "Servicios de Urgencia Rural (SUR)"
  },
  {
    "code" : "9",
    "display" : "Servicios de Atención Médica de Urgencia (SAMU)",
    "definition" : "Servicios de Atención Médica de Urgencia (SAMU)"
  },
  {
    "code" : "10",
    "display" : "Postas de Salud Rural (PSR)",
    "definition" : "Postas de Salud Rural (PSR)"
  },
  {
    "code" : "11",
    "display" : "Centros de Salud Familiar (CESFAM)",
    "definition" : "Centros de Salud Familiar (CESFAM)"
  },
  {
    "code" : "12",
    "display" : "Centros Comunitarios de Salud Familiar (CECOSF)",
    "definition" : "Centros Comunitarios de Salud Familiar (CECOSF)"
  },
  {
    "code" : "13",
    "display" : "Centros de Especialidades de Atención Primaria (CEAP)",
    "definition" : "Centros de Especialidades de Atención Primaria (CEAP)"
  },
  {
    "code" : "14",
    "display" : "Centros Comunitario de Salud Mental (COSAM)",
    "definition" : "Centros Comunitario de Salud Mental (COSAM)"
  },
  {
    "code" : "15",
    "display" : "Centros de especialidades de atención abierta",
    "definition" : "Centros de especialidades de atención abierta"
  },
  {
    "code" : "16",
    "display" : "Centros de rehabilitación",
    "definition" : "Centros de rehabilitación"
  },
  {
    "code" : "17",
    "display" : "Clínicas dentales",
    "definition" : "Clínicas dentales"
  },
  {
    "code" : "18",
    "display" : "Centros de la Corporación para la Nutrición Infantil (CONIN)",
    "definition" : "Centros de la Corporación para la Nutrición Infantil (CONIN)"
  },
  {
    "code" : "19",
    "display" : "Centros de Tratamiento de Adicciones (CTA)",
    "definition" : "Centros de Tratamiento de Adicciones (CTA)"
  },
  {
    "code" : "20",
    "display" : "Hospitales de día",
    "definition" : "Hospitales de día"
  },
  {
    "code" : "21",
    "display" : "Centros de apoyo comunitario para personas con demencia",
    "definition" : "Centros de apoyo comunitario para personas con demencia"
  },
  {
    "code" : "22",
    "display" : "Centros de sangre",
    "definition" : "Centros de sangre"
  },
  {
    "code" : "23",
    "display" : "Centros de diálisis",
    "definition" : "Centros de diálisis"
  },
  {
    "code" : "24",
    "display" : "Casas del donante de sangre",
    "definition" : "Casas del donante de sangre"
  },
  {
    "code" : "25",
    "display" : "Laboratorios clínicos",
    "definition" : "Laboratorios clínicos"
  },
  {
    "code" : "26",
    "display" : "Unidad de diálisis móvil",
    "definition" : "Unidad de diálisis móvil"
  },
  {
    "code" : "27",
    "display" : "Vacunatorios",
    "definition" : "Vacunatorios"
  }]
}

```
