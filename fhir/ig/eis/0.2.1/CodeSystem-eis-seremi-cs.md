# Seremi - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Seremi**

## CodeSystem: Seremi 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-seremi-cs | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:SeremiCS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.16.34 | |

 
Corresponde a los códigos y valores asociados a cada Secretaría Regional Ministerial (SEREMI), utilizados en los sistemas de información en salud. La codificación de la SEREMI es coincidente con el código de la región, el cual prevalece para efectos de registro e interoperabilidad. 

 Este sistema de códigos se usa en la definición lógica de los siguientes conjuntos de valores: 

* [Seremi](ValueSet-eis-seremi-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-seremi-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-seremi-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.34"
  }],
  "version" : "0.2.1",
  "name" : "SeremiCS",
  "title" : "Seremi",
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
  "description" : "Corresponde a los códigos y valores asociados a cada Secretaría Regional Ministerial (SEREMI), utilizados en los sistemas de información en salud. La codificación de la SEREMI es coincidente con el código de la región, el cual prevalece para efectos de registro e interoperabilidad.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "1",
    "display" : "SEREMI De Tarapacá",
    "definition" : "SEREMI De Tarapacá"
  },
  {
    "code" : "2",
    "display" : "SEREMI De Antofagasta",
    "definition" : "SEREMI De Antofagasta"
  },
  {
    "code" : "3",
    "display" : "SEREMI De Atacama",
    "definition" : "SEREMI De Atacama"
  },
  {
    "code" : "4",
    "display" : "SEREMI De Coquimbo",
    "definition" : "SEREMI De Coquimbo"
  },
  {
    "code" : "5",
    "display" : "SEREMI De Valparaíso",
    "definition" : "SEREMI De Valparaíso"
  },
  {
    "code" : "6",
    "display" : "SEREMI Del Libertador Gral. B. O'Higgins",
    "definition" : "SEREMI Del Libertador Gral. B. O'Higgins"
  },
  {
    "code" : "7",
    "display" : "SEREMI Del Maule",
    "definition" : "SEREMI Del Maule"
  },
  {
    "code" : "8",
    "display" : "SEREMI Del Biobío",
    "definition" : "SEREMI Del Biobío"
  },
  {
    "code" : "9",
    "display" : "SEREMI De La Araucanía",
    "definition" : "SEREMI De La Araucanía"
  },
  {
    "code" : "10",
    "display" : "SEREMI De Los Lagos",
    "definition" : "SEREMI De Los Lagos"
  },
  {
    "code" : "11",
    "display" : "SEREMI De Aisén del General Carlos Ibáñez del Campo",
    "definition" : "SEREMI De Aisén del General Carlos Ibáñez del Campo"
  },
  {
    "code" : "12",
    "display" : "SEREMI De Magallanes y la Antártica Chilena",
    "definition" : "SEREMI De Magallanes y la Antártica Chilena"
  },
  {
    "code" : "13",
    "display" : "SEREMI Metropolitana de Santiago",
    "definition" : "SEREMI Metropolitana de Santiago"
  },
  {
    "code" : "14",
    "display" : "SEREMI De Los Ríos",
    "definition" : "SEREMI De Los Ríos"
  },
  {
    "code" : "15",
    "display" : "SEREMI De Arica y Parinacota",
    "definition" : "SEREMI De Arica y Parinacota"
  },
  {
    "code" : "16",
    "display" : "SEREMI Del Ñuble",
    "definition" : "SEREMI Del Ñuble"
  }]
}

```
