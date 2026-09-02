# Provincias - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provincias**

## CodeSystem: Provincias 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-provincias-cs | *Version*:0.2.0 |
| Active as of 2023-01-15 | *Computable Name*:ProvinciasCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.31 | |

 
Provincias 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ProvinciasVS](ValueSet-eis-provincias-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-provincias-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-provincias-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.31"
  }],
  "version" : "0.2.0",
  "name" : "ProvinciasCS",
  "title" : "Provincias",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
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
  "description" : "Provincias",
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
  "count" : 56,
  "concept" : [{
    "code" : "11",
    "display" : "Iquique",
    "definition" : "Iquique"
  },
  {
    "code" : "14",
    "display" : "Tamarugal",
    "definition" : "Tamarugal"
  },
  {
    "code" : "21",
    "display" : "Antofagasta",
    "definition" : "Antofagasta"
  },
  {
    "code" : "22",
    "display" : "El loa",
    "definition" : "El loa"
  },
  {
    "code" : "23",
    "display" : "Tocopilla",
    "definition" : "Tocopilla"
  },
  {
    "code" : "31",
    "display" : "Copiapó",
    "definition" : "Copiapó"
  },
  {
    "code" : "32",
    "display" : "Chañaral",
    "definition" : "Chañaral"
  },
  {
    "code" : "33",
    "display" : "Huasco",
    "definition" : "Huasco"
  },
  {
    "code" : "41",
    "display" : "Elqui",
    "definition" : "Elqui"
  },
  {
    "code" : "42",
    "display" : "Choapa",
    "definition" : "Choapa"
  },
  {
    "code" : "43",
    "display" : "Limarí",
    "definition" : "Limarí"
  },
  {
    "code" : "51",
    "display" : "Valparaíso",
    "definition" : "Valparaíso"
  },
  {
    "code" : "52",
    "display" : "Isla de pascua",
    "definition" : "Isla de pascua"
  },
  {
    "code" : "53",
    "display" : "Los andes",
    "definition" : "Los andes"
  },
  {
    "code" : "54",
    "display" : "Petorca",
    "definition" : "Petorca"
  },
  {
    "code" : "55",
    "display" : "Quillota",
    "definition" : "Quillota"
  },
  {
    "code" : "56",
    "display" : "San antonio",
    "definition" : "San antonio"
  },
  {
    "code" : "57",
    "display" : "San felipe de aconcagua",
    "definition" : "San felipe de aconcagua"
  },
  {
    "code" : "58",
    "display" : "Marga marga",
    "definition" : "Marga marga"
  },
  {
    "code" : "61",
    "display" : "Cachapoal",
    "definition" : "Cachapoal"
  },
  {
    "code" : "62",
    "display" : "Cardenal caro",
    "definition" : "Cardenal caro"
  },
  {
    "code" : "63",
    "display" : "Colchagua",
    "definition" : "Colchagua"
  },
  {
    "code" : "71",
    "display" : "Talca",
    "definition" : "Talca"
  },
  {
    "code" : "72",
    "display" : "Cauquenes",
    "definition" : "Cauquenes"
  },
  {
    "code" : "73",
    "display" : "Curicó",
    "definition" : "Curicó"
  },
  {
    "code" : "74",
    "display" : "Linares",
    "definition" : "Linares"
  },
  {
    "code" : "81",
    "display" : "Concepción",
    "definition" : "Concepción"
  },
  {
    "code" : "82",
    "display" : "Arauco",
    "definition" : "Arauco"
  },
  {
    "code" : "83",
    "display" : "Biobío",
    "definition" : "Biobío"
  },
  {
    "code" : "91",
    "display" : "Cautín",
    "definition" : "Cautín"
  },
  {
    "code" : "92",
    "display" : "Malleco",
    "definition" : "Malleco"
  },
  {
    "code" : "101",
    "display" : "Llanquihue",
    "definition" : "Llanquihue"
  },
  {
    "code" : "102",
    "display" : "Chiloé",
    "definition" : "Chiloé"
  },
  {
    "code" : "103",
    "display" : "Osorno",
    "definition" : "Osorno"
  },
  {
    "code" : "104",
    "display" : "Palena",
    "definition" : "Palena"
  },
  {
    "code" : "111",
    "display" : "Coihaique",
    "definition" : "Coihaique"
  },
  {
    "code" : "112",
    "display" : "Capitán prat",
    "definition" : "Capitán prat"
  },
  {
    "code" : "113",
    "display" : "Aisén",
    "definition" : "Aisén"
  },
  {
    "code" : "114",
    "display" : "General carrera",
    "definition" : "General carrera"
  },
  {
    "code" : "121",
    "display" : "Magallanes",
    "definition" : "Magallanes"
  },
  {
    "code" : "122",
    "display" : "Antártica chilena",
    "definition" : "Antártica chilena"
  },
  {
    "code" : "123",
    "display" : "Tierra del fuego",
    "definition" : "Tierra del fuego"
  },
  {
    "code" : "124",
    "display" : "Ultima esperanza",
    "definition" : "Ultima esperanza"
  },
  {
    "code" : "131",
    "display" : "Santiago",
    "definition" : "Santiago"
  },
  {
    "code" : "132",
    "display" : "Cordillera",
    "definition" : "Cordillera"
  },
  {
    "code" : "133",
    "display" : "Chacabuco",
    "definition" : "Chacabuco"
  },
  {
    "code" : "134",
    "display" : "Maipo",
    "definition" : "Maipo"
  },
  {
    "code" : "135",
    "display" : "Melipilla",
    "definition" : "Melipilla"
  },
  {
    "code" : "136",
    "display" : "Talagante",
    "definition" : "Talagante"
  },
  {
    "code" : "141",
    "display" : "Valdivia",
    "definition" : "Valdivia"
  },
  {
    "code" : "142",
    "display" : "Ranco",
    "definition" : "Ranco"
  },
  {
    "code" : "151",
    "display" : "Arica",
    "definition" : "Arica"
  },
  {
    "code" : "152",
    "display" : "Parinacota",
    "definition" : "Parinacota"
  },
  {
    "code" : "161",
    "display" : "Diguillín",
    "definition" : "Diguillín"
  },
  {
    "code" : "162",
    "display" : "Itata",
    "definition" : "Itata"
  },
  {
    "code" : "163",
    "display" : "Punilla",
    "definition" : "Punilla"
  }]
}

```
