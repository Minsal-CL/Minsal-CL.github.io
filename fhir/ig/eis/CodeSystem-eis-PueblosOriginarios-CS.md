# Pueblos Indígenas u Originarios - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pueblos Indígenas u Originarios**

## CodeSystem: Pueblos Indígenas u Originarios 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PueblosOriginarios-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:PueblosOriginariosCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.13 | |

 
Los Pueblos Indígenas u Originarios en Chile corresponden a los descendientes de agrupaciones humanas que habitaban el territorio nacional en tiempos precolombinos, y que conservan manifestaciones culturales, sociales y étnicas propias, o parte de ellas, teniendo para estos pueblos la tierra un rol fundamental en su existencia y desarrollo cultural. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PueblosOriginariosVS](ValueSet-eis-PueblosOriginarios-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-PueblosOriginarios-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-PueblosOriginarios-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.13"
  }],
  "version" : "0.2.0",
  "name" : "PueblosOriginariosCS",
  "title" : "Pueblos Indígenas u Originarios",
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
  "description" : "Los Pueblos Indígenas u Originarios en Chile corresponden a los descendientes de agrupaciones humanas que habitaban el territorio nacional en tiempos precolombinos, y que conservan manifestaciones culturales, sociales y étnicas propias, o parte de ellas, teniendo para estos pueblos la tierra un rol fundamental en su existencia y desarrollo cultural.",
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
  "count" : 13,
  "concept" : [{
    "code" : "1",
    "display" : "Mapuche",
    "definition" : "Mapuche"
  },
  {
    "code" : "2",
    "display" : "Aymara",
    "definition" : "Aymara"
  },
  {
    "code" : "3",
    "display" : "Rapa Nui o Pascuense",
    "definition" : "Rapa Nui o Pascuense"
  },
  {
    "code" : "4",
    "display" : "Lickanantay",
    "definition" : "Lickanantay"
  },
  {
    "code" : "5",
    "display" : "Quechua",
    "definition" : "Quechua"
  },
  {
    "code" : "6",
    "display" : "Colla",
    "definition" : "Colla"
  },
  {
    "code" : "7",
    "display" : "Diaguita",
    "definition" : "Diaguita"
  },
  {
    "code" : "8",
    "display" : "Kawésqar",
    "definition" : "Kawésqar"
  },
  {
    "code" : "9",
    "display" : "Yagán",
    "definition" : "Yagán"
  },
  {
    "code" : "11",
    "display" : "Chango",
    "definition" : "Chango"
  },
  {
    "code" : "12",
    "display" : "Selk'nam",
    "definition" : "Selk'nam"
  },
  {
    "code" : "10",
    "display" : "Otro (Especificar)",
    "definition" : "Otro (Especificar)"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
