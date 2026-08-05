# Servicios de Salud - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Servicios de Salud**

## CodeSystem: Servicios de Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-servicios-salud-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:ServiciosdeSaludCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.35 | |

 
Corresponde a los códigos y valores asociados a los servicios de salud del país, utilizados para la identificación territorial y administrativa de la red asistencial en los sistemas de información en salud. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ServiciosdeSaludVS](ValueSet-eis-servicios-salud-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-servicios-salud-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-servicios-salud-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.35"
  }],
  "version" : "0.2.0",
  "name" : "ServiciosdeSaludCS",
  "title" : "Servicios de Salud",
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
  "description" : "Corresponde a los códigos y valores asociados a los servicios de salud del país, utilizados para la identificación territorial y administrativa de la red asistencial en los sistemas de información en salud.",
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
  "count" : 29,
  "concept" : [{
    "code" : "1",
    "display" : "Servicio de Salud Arica",
    "definition" : "Servicio de Salud Arica"
  },
  {
    "code" : "2",
    "display" : "Servicio de Salud Tarapacá",
    "definition" : "Servicio de Salud Tarapacá"
  },
  {
    "code" : "3",
    "display" : "Servicio de Salud Antofagasta",
    "definition" : "Servicio de Salud Antofagasta"
  },
  {
    "code" : "4",
    "display" : "Servicio de Salud Atacama",
    "definition" : "Servicio de Salud Atacama"
  },
  {
    "code" : "5",
    "display" : "Servicio de Salud Coquimbo",
    "definition" : "Servicio de Salud Coquimbo"
  },
  {
    "code" : "6",
    "display" : "Servicio de Salud Valparaíso San Antonio",
    "definition" : "Servicio de Salud Valparaíso San Antonio"
  },
  {
    "code" : "7",
    "display" : "Servicio de Salud Viña del Mar Quillota",
    "definition" : "Servicio de Salud Viña del Mar Quillota"
  },
  {
    "code" : "8",
    "display" : "Servicio de Salud Aconcagua",
    "definition" : "Servicio de Salud Aconcagua"
  },
  {
    "code" : "9",
    "display" : "Servicio de Salud Metropolitano Norte",
    "definition" : "Servicio de Salud Metropolitano Norte"
  },
  {
    "code" : "10",
    "display" : "Servicio de Salud Metropolitano Occidente",
    "definition" : "Servicio de Salud Metropolitano Occidente"
  },
  {
    "code" : "11",
    "display" : "Servicio de Salud Metropolitano Central",
    "definition" : "Servicio de Salud Metropolitano Central"
  },
  {
    "code" : "12",
    "display" : "Servicio de Salud Metropolitano Oriente",
    "definition" : "Servicio de Salud Metropolitano Oriente"
  },
  {
    "code" : "13",
    "display" : "Servicio de Salud Metropolitano Sur",
    "definition" : "Servicio de Salud Metropolitano Sur"
  },
  {
    "code" : "14",
    "display" : "Servicio de Salud Metropolitano Sur Oriente",
    "definition" : "Servicio de Salud Metropolitano Sur Oriente"
  },
  {
    "code" : "15",
    "display" : "Servicio de Salud Del Libertador B. O’Higgins",
    "definition" : "Servicio de Salud Del Libertador B. O’Higgins"
  },
  {
    "code" : "16",
    "display" : "Servicio de Salud Del Maule",
    "definition" : "Servicio de Salud Del Maule"
  },
  {
    "code" : "17",
    "display" : "Servicio de Salud Ñuble",
    "definition" : "Servicio de Salud Ñuble"
  },
  {
    "code" : "18",
    "display" : "Servicio de Salud Concepción",
    "definition" : "Servicio de Salud Concepción"
  },
  {
    "code" : "19",
    "display" : "Servicio de Salud Talcahuano",
    "definition" : "Servicio de Salud Talcahuano"
  },
  {
    "code" : "20",
    "display" : "Servicio de Salud Biobío",
    "definition" : "Servicio de Salud Biobío"
  },
  {
    "code" : "21",
    "display" : "Servicio de Salud Araucanía Sur",
    "definition" : "Servicio de Salud Araucanía Sur"
  },
  {
    "code" : "22",
    "display" : "Servicio de Salud Los Ríos",
    "definition" : "Servicio de Salud Los Ríos"
  },
  {
    "code" : "23",
    "display" : "Servicio de Salud Osorno",
    "definition" : "Servicio de Salud Osorno"
  },
  {
    "code" : "24",
    "display" : "Servicio de Salud Del Reloncaví",
    "definition" : "Servicio de Salud Del Reloncaví"
  },
  {
    "code" : "25",
    "display" : "Servicio de Salud Aisén",
    "definition" : "Servicio de Salud Aisén"
  },
  {
    "code" : "26",
    "display" : "Servicio de Salud Magallanes",
    "definition" : "Servicio de Salud Magallanes"
  },
  {
    "code" : "28",
    "display" : "Servicio de Salud Arauco",
    "definition" : "Servicio de Salud Arauco"
  },
  {
    "code" : "29",
    "display" : "Servicio de Salud Araucanía Norte",
    "definition" : "Servicio de Salud Araucanía Norte"
  },
  {
    "code" : "33",
    "display" : "Servicio de Salud Chiloé",
    "definition" : "Servicio de Salud Chiloé"
  }]
}

```
