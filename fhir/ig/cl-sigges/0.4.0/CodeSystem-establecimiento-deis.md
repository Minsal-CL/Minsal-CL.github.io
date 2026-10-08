# Establecimientos (DEIS) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimientos (DEIS)**

## CodeSystem: Establecimientos (DEIS) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/establecimiento-deis | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSEstablecimientoDEIS |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Establecimientos de salud según catálogo UNIDADES de SIGGES 2.0. Código = DEIS formato NN-NNN. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Establecimientos DEIS](ValueSet-vs-establecimiento-deis.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "establecimiento-deis",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/establecimiento-deis",
  "version" : "0.4.0",
  "name" : "CSEstablecimientoDEIS",
  "title" : "Establecimientos (DEIS)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Establecimientos de salud según catálogo UNIDADES de SIGGES 2.0. Código = DEIS formato NN-NNN.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2973,
  "property" : [{
    "code" : "deis6",
    "description" : "Código DEIS de 6 dígitos",
    "type" : "string"
  },
  {
    "code" : "servicioSalud",
    "description" : "Servicio de Salud (CSServicioSaludDEIS)",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "01-405",
    "display" : "Posta de Salud Rural Alcérreca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-402",
    "display" : "Posta de Salud Rural Belén (Putre)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-406",
    "display" : "Posta de Salud Rural Codpa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-401",
    "display" : "Posta de Salud Rural Poconchile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-400",
    "display" : "Posta de Salud Rural San Miguel de Azapa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-408",
    "display" : "Posta de Salud Rural Sobraya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-407",
    "display" : "Posta de Salud Rural Ticnamar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-404",
    "display" : "Posta de Salud Rural Visviri",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-100",
    "display" : "Hospital Dr. Juan Noé Crevanni (Arica)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-302",
    "display" : "Centro de Salud Familiar Dr. Amador Neghme de Arica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-303",
    "display" : "Centro de Salud Familiar Iris Véliz Hume (Ex Oriente)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-304",
    "display" : "Centro de Salud Familiar Putre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-305",
    "display" : "Centro de Salud Familiar Remigio Sapunar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-300",
    "display" : "Centro de Salud Familiar Víctor Bertín Soto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "02-309",
    "display" : "Centro de Salud Familiar Camiña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-411",
    "display" : "Posta de Salud Rural Cancosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-412",
    "display" : "Posta de Salud Rural Chanavayita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-407",
    "display" : "Posta de Salud Rural Chiapa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-310",
    "display" : "Centro de Salud Familiar Colchane",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-409",
    "display" : "Posta de Salud Rural Enquelga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-308",
    "display" : "Centro de Salud Familiar Dr. Amador Neghme Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-406",
    "display" : "Posta de Salud Rural La Tirana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-403",
    "display" : "Posta de Salud Rural Mamiña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-408",
    "display" : "Posta de Salud Rural Moquella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-400",
    "display" : "Posta de Salud Rural Pisagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-410",
    "display" : "Posta de Salud Rural Sibaya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-402",
    "display" : "Posta de Salud Rural Tarapacá",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-300",
    "display" : "Centro de Salud Familiar Cirujano Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-302",
    "display" : "Centro de Salud Familiar Cirujano Guzmán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-301",
    "display" : "Centro de Salud Familiar Cirujano Videla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-100",
    "display" : "Hospital Dr. Ernesto Torres Galdames (Iquique)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-305",
    "display" : "Centro de Salud Familiar Pedro Pulgar Melgarejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-304",
    "display" : "Centro de Salud Familiar Dr. Juan Márquez Vismarra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-303",
    "display" : "Centro de Salud Familiar Pozo Almonte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-306",
    "display" : "Centro de Salud Familiar Sur de Iquique",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "03-409",
    "display" : "Posta de Salud Rural Ayquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-400",
    "display" : "Posta de Salud Rural Baquedano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-406",
    "display" : "Posta de Salud Rural Caspana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-410",
    "display" : "Posta de Salud Rural Chiu-Chiu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-407",
    "display" : "Posta de Salud Rural Ollagüe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-413",
    "display" : "Posta de Salud Rural Paposo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-404",
    "display" : "Posta de Salud Rural Peine",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-411",
    "display" : "Posta de Salud Rural Quillagua (María Elena)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-414",
    "display" : "Estación de Salud Rural Río Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-401",
    "display" : "Posta de Salud Rural Sierra Gorda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-405",
    "display" : "Posta de Salud Rural Socaire",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-403",
    "display" : "Posta de Salud Rural Toconao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-307",
    "display" : "Centro de Salud Familiar Alemania de Calama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-100",
    "display" : "Hospital Dr. Leonardo Guzmán (Antofagasta)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-301",
    "display" : "Consultorio Antonio Rendic (Ex Cautín)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-101",
    "display" : "Hospital Dr. Carlos Cisternas (Calama)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-308",
    "display" : "Consultorio Central Oriente de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-305",
    "display" : "Centro de Salud Familiar Central de Calama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-303",
    "display" : "Centro de Salud Familiar Centro Sur de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-302",
    "display" : "Centro de Salud Familiar Corvallis",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-304",
    "display" : "Centro de Salud Familiar Juan Pablo II de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-309",
    "display" : "Centro de Salud Familiar María Elena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-104",
    "display" : "Hospital de Mejillones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-306",
    "display" : "Centro de Salud Familiar Montt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-300",
    "display" : "Centro de Salud Familiar Norte de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-103",
    "display" : "Hospital 21 de Mayo (Taltal)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-102",
    "display" : "Hospital Dr. Marcos Macuada (Tocopilla)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "04-410",
    "display" : "Posta de Salud Rural Cachiyuyo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-415",
    "display" : "Posta de Salud Rural Padre Mariano Avellana Lasierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-413",
    "display" : "Posta de Salud Rural Segundo Ponce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-409",
    "display" : "Posta de Salud Rural Carrizalillo (Freirina)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-407",
    "display" : "Posta de Salud Rural Conay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-405",
    "display" : "Posta de Salud Rural Domeyko",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-401",
    "display" : "Posta de Salud Rural El Salado de Chañaral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-404",
    "display" : "Posta de Salud Rural El Tránsito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-412",
    "display" : "Posta de Salud Rural Hacienda Compañía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-408",
    "display" : "Posta de Salud Rural Hacienda Ventanas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-402",
    "display" : "Posta de Salud Rural Inca de Oro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-411",
    "display" : "Posta de Salud Rural Incahuasi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-416",
    "display" : "Posta de Salud Rural Jeremías Cortés",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-414",
    "display" : "Posta de Salud Rural Las Breas (Alto del Carmen)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-400",
    "display" : "Posta de Salud Rural Los Loros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-403",
    "display" : "Posta de Salud Rural San Félix",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-322",
    "display" : "Centro de Salud Familiar Alto del Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-304",
    "display" : "Centro de Salud Familiar Rosario-Palomar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-321",
    "display" : "Centro de Salud Familiar Dr. Bernardo Mellibovsky",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-305",
    "display" : "Centro de Salud Familiar Candelaria Rosario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-101",
    "display" : "Hospital Dr. Jerónimo Méndez Arancibia (Chañaral)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-100",
    "display" : "Hospital San José del Carmen (Copiapó)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-102",
    "display" : "Hospital Dr. Florencio Vargas (Diego de Almagro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-311",
    "display" : "Centro de Salud Familiar El Salvador",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-313",
    "display" : "Centro de Salud Familiar Estación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-314",
    "display" : "Centro de Salud Familiar Freirina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-316",
    "display" : "Centro de Salud Familiar Baquedano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-315",
    "display" : "Centro de Salud Familiar Hermanos Carrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-104",
    "display" : "Hospital Dr. Manuel Magalhaes Medling (Huasco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-317",
    "display" : "Centro de Salud Familiar Joan Crawford Astudillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-302",
    "display" : "Centro de Salud Familiar Juan Martínez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-319",
    "display" : "Centro de Salud Familiar Juan Verdaguer",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-309",
    "display" : "Centro de Salud Familiar Dr. Luis Herrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-306",
    "display" : "Centro de Salud Familiar Manuel Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-307",
    "display" : "Centro de Salud Familiar Paipote",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-303",
    "display" : "Centro de Salud Familiar Pedro León Gallo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-301",
    "display" : "Centro de Salud Familiar Rosario Corvalán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-300",
    "display" : "Centro de Salud Familiar Santa Elvira",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-308",
    "display" : "Centro de Salud Salvador Allende Gossens",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-103",
    "display" : "Hospital Provincial del Huasco Monseñor Fernando Ariztía Ruiz (Vallenar)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "05-451",
    "display" : "Posta de Salud Rural Agua Fría",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-417",
    "display" : "Posta de Salud Rural Alcones Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-400",
    "display" : "Posta de Salud Rural Algarrobito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-501",
    "display" : "Posta de Salud Rural Arboleda Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105501"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-459",
    "display" : "Posta de Salud Rural Barrancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-415",
    "display" : "Posta de Salud Rural Barraza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-478",
    "display" : "Posta de Salud Rural Caimanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-500",
    "display" : "Posta de Salud Rural Caleta Hornos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105500"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-502",
    "display" : "Posta de Salud Rural Calingasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105502"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-416",
    "display" : "Posta de Salud Rural Camarico (Ovalle)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-492",
    "display" : "Posta de Salud Rural Camisa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105492"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-482",
    "display" : "Posta de Salud Rural Canela Alta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105482"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-487",
    "display" : "Posta de Salud Rural Cañas Uno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105487"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-443",
    "display" : "Posta de Salud Rural Cárcamo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-439",
    "display" : "Posta de Salud Rural Cerro Blanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-437",
    "display" : "Posta de Salud Rural Chalinga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-474",
    "display" : "Posta de Salud Rural Chapilca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-425",
    "display" : "Posta de Salud Rural Chilecito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-455",
    "display" : "Posta de Salud Rural Chillepín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-460",
    "display" : "Centro Comunitario de Salud Familiar Cogotí 18",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-452",
    "display" : "Posta de Salud Rural Cuncumén(Salamanca)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-454",
    "display" : "Posta de Salud Rural Cunlagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-467",
    "display" : "Posta de Salud Rural Diaguitas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-440",
    "display" : "Posta de Salud Rural Divisadero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-409",
    "display" : "Posta de Salud Rural El Chañar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "15-433",
    "display" : "Posta de Salud Rural El Durazno (Las Cabras)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-461",
    "display" : "Posta de Salud Rural El Huacho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-436",
    "display" : "Posta de Salud Rural El Maitén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-468",
    "display" : "Posta de Salud Rural El Molle",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-402",
    "display" : "Posta de Salud Rural El Romero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-462",
    "display" : "Posta de Salud Rural El Sauce (Combarbalá)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-469",
    "display" : "Posta de Salud Rural El Tambo (Vicuña)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-404",
    "display" : "Posta de Salud Rural El Tangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-506",
    "display" : "Posta de Salud Rural El Trapiche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105506"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-488",
    "display" : "Posta de Salud Rural Espíritu Santo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105488"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-405",
    "display" : "Posta de Salud Rural Guanaqueros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-479",
    "display" : "Posta de Salud Rural Guangualí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105479"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-427",
    "display" : "Posta de Salud Rural Hacienda Valdivia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-475",
    "display" : "Posta de Salud Rural Horcón (Paiguano)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-422",
    "display" : "Posta de Salud Rural Hornillos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-507",
    "display" : "Posta de Salud Rural Huamalata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105507"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-470",
    "display" : "Posta de Salud Rural Huanta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-428",
    "display" : "Posta de Salud Rural Huatulame",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-484",
    "display" : "Posta de Salud Rural Huentelauquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105484"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-444",
    "display" : "Posta de Salud Rural Huintil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-410",
    "display" : "Posta de Salud Rural Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-497",
    "display" : "Posta de Salud Rural Jabonería",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105497"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-464",
    "display" : "Posta de Salud Rural La Ligua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-499",
    "display" : "Posta de Salud Rural Lambert",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105499"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-418",
    "display" : "Las Damas, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-401",
    "display" : "Posta de Salud Rural Las Rojas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-419",
    "display" : "Posta de Salud Rural Las Sossas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-445",
    "display" : "Posta de Salud Rural Limáhuida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-420",
    "display" : "Posta de Salud Rural Limarí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-456",
    "display" : "Posta de Salud Rural Llimpo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-505",
    "display" : "Posta de Salud Rural Los Choros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105505"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-483",
    "display" : "Posta de Salud Rural Los Rulos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-441",
    "display" : "Posta de Salud Rural Manquehua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-446",
    "display" : "Posta de Salud Rural Matancilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-430",
    "display" : "Posta de Salud Rural Mialqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-450",
    "display" : "Posta de Salud Rural Mincha Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-493",
    "display" : "Posta de Salud Rural Mincha Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105493"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-476",
    "display" : "Posta de Salud Rural Monte Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-406",
    "display" : "Posta de Salud Rural Pan de Azúcar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-431",
    "display" : "Posta de Salud Rural Pedregal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-447",
    "display" : "Posta de Salud Rural Peralillo Illapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-496",
    "display" : "Posta de Salud Rural Pintacura Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105496"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-477",
    "display" : "Posta de Salud Rural Pisco Elqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-485",
    "display" : "Posta de Salud Rural Plan de Hornos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105485"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-498",
    "display" : "Posta de Salud Rural Quebrada Linares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105498"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-491",
    "display" : "Posta de Salud Rural Quelén Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105491"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-480",
    "display" : "Posta de Salud Rural Quilimarí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105480"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-463",
    "display" : "Posta de Salud Rural Quilitapia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-489",
    "display" : "Posta de Salud Rural Ramadas de Tulahuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105489"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-465",
    "display" : "Posta de Salud Rural Ramadilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-432",
    "display" : "Posta de Salud Rural Rapel (Monte Patria)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-472",
    "display" : "Posta de Salud Rural Rivadavia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-413",
    "display" : "Posta de Salud Rural Samo Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-457",
    "display" : "Posta de Salud Rural San Agustín (Salamanca)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-433",
    "display" : "Posta de Salud Rural San Lorenzo (Combarbalá)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-434",
    "display" : "Posta de Salud Rural San Marcos (Combarbalá)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-442",
    "display" : "Posta de Salud Rural San Pedro de Quiles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-448",
    "display" : "Posta de Salud Rural Santa Virginia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-414",
    "display" : "Posta de Salud Rural Serón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-504",
    "display" : "Posta de Salud Rural Socavón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105504"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-503",
    "display" : "Posta de Salud Rural Tabaqueros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105503"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-458",
    "display" : "Posta de Salud Rural Tahuinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-473",
    "display" : "Posta de Salud Rural Talcuna",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-407",
    "display" : "Posta de Salud Rural Tambillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-481",
    "display" : "Posta de Salud Rural Tilama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105481"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-453",
    "display" : "Posta de Salud Rural Tranquilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-435",
    "display" : "Posta de Salud Rural Tulahuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-449",
    "display" : "Posta de Salud Rural Tunga Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-486",
    "display" : "Posta de Salud Rural Tunga Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105486"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-466",
    "display" : "Posta de Salud Rural Valle Hermoso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-106",
    "display" : "Hospital Dr. José Arraño (Andacollo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-309",
    "display" : "Centro de Salud Familiar Canela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-300",
    "display" : "Centro de Salud Familiar Cardenal Caro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-319",
    "display" : "Centro de Salud Familiar Cardenal Raúl Silva Henríquez de La Serena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-312",
    "display" : "Centro de Salud Familiar Carén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-315",
    "display" : "Centro de Salud Familiar Cerrillos de Tamaya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-311",
    "display" : "Centro de Salud Familiar Chañaral Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-105",
    "display" : "Hospital San Juan de Dios (Combarbalá)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-101",
    "display" : "Hospital San Pablo (Coquimbo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-318",
    "display" : "Centro de Salud Familiar El Palqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-313",
    "display" : "Centro de Salud Familiar Dr. Emilio Schaffhauser",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-103",
    "display" : "Hospital Dr. Humberto Elorza Cortéz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-317",
    "display" : "Centro de Salud Familiar Jorge Jordán Domic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-314",
    "display" : "Centro de Salud Familiar La Higuera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-100",
    "display" : "Hospital San Juan de Dios (La Serena)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-301",
    "display" : "Centro de Salud Familiar Las Compañías",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-108",
    "display" : "Hospital San Pedro (Los Vilos)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-322",
    "display" : "Centro de Salud Familiar Marcos Macuada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-307",
    "display" : "Centro de Salud Familiar Monte Patria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-102",
    "display" : "Hospital Dr. Antonio Tirado Lanas de Ovalle",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-306",
    "display" : "Centro de Salud Familiar Jaime Thompson Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-302",
    "display" : "Centro de Salud Familiar Pedro Aguirre Cerda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-310",
    "display" : "Centro de Salud Familiar Rio Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-308",
    "display" : "Centro de Salud Familiar Punitaqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-104",
    "display" : "Hospital de Salamanca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-303",
    "display" : "Centro de Salud Familiar San Juan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-304",
    "display" : "Centro de Salud Familiar Santa Cecilia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-305",
    "display" : "Centro de Salud Familiar Tierras Blancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-321",
    "display" : "Centro de Salud Familiar Tongoy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-107",
    "display" : "Hospital San Juan de Dios (Vicuña)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "15-467",
    "display" : "Posta de Salud Rural Bucalemu (Paredones)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "06-417",
    "display" : "Posta de Salud Rural El Asilo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-413",
    "display" : "Posta de Salud Rural El Convento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-338",
    "display" : "Centro de Salud Familiar El Tabo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106338"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-421",
    "display" : "Posta de Salud Rural El Turco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-410",
    "display" : "Posta de Salud Rural El Yeco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-400",
    "display" : "Centro de Salud Familiar Juan Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-401",
    "display" : "Centro Comunitario de Salud Familiar Laguna Verde",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-405",
    "display" : "Posta de Salud Rural Lagunillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-416",
    "display" : "Centro Comunitario de Salud Familiar Las Cruces (El Tabo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-403",
    "display" : "Posta de Salud Rural Las Dichas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-420",
    "display" : "Posta de Salud Rural Leyda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-408",
    "display" : "Posta de Salud Rural Lo Abarca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-422",
    "display" : "Centro Comunitario de Salud Familiar Lo Gallardo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-406",
    "display" : "Posta de Salud Rural Lo Zárate",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-404",
    "display" : "Posta de Salud Rural Los Maitenes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-402",
    "display" : "Posta de Salud Rural Quintay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-412",
    "display" : "Posta de Salud Rural Rocas de Santo Domingo",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-414",
    "display" : "Posta de Salud Rural San Enrique",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-411",
    "display" : "Posta de Salud Rural San José (Algarrobo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-419",
    "display" : "Posta de Salud Rural San Juan de San Antonio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-409",
    "display" : "Posta de Salud Rural San Sebastián",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-327",
    "display" : "Centro de Salud Familiar Algarrobo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-302",
    "display" : "Centro de Salud Familiar Barón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-319",
    "display" : "Centro de Salud Familiar Barrancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-100",
    "display" : "Hospital Carlos Van Buren (Valparaíso)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-326",
    "display" : "Centro de Salud Familiar Cartagena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-315",
    "display" : "Casablanca, Consultorio de",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-313",
    "display" : "Centro de Salud Mental y Psiquiatría Ambulatoria",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-103",
    "display" : "Hospital Claudio Vicuña ( San Antonio)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-314",
    "display" : "Centro de Salud Familiar San Antonio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-309",
    "display" : "Centro de Salud Familiar Cordillera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-104",
    "display" : "Hospital Del Salvador de Valparaíso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-328",
    "display" : "Centro de Salud Familiar El Quisco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-301",
    "display" : "Centro de Salud Familiar Esperanza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-316",
    "display" : "Hanga Roa, Consultorio",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-305",
    "display" : "Centro de Salud Familiar Jean y Marie Thierry",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-306",
    "display" : "Centro de Salud Familiar Las Cañas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-307",
    "display" : "Centro de Salud Familiar Marcelo Mena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-329",
    "display" : "Centro de Salud Familiar Néstor Fernández Thomas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-334",
    "display" : "Centro de Salud Familiar Padre Damián Molokai",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106334"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-300",
    "display" : "Centro de Salud Familiar Placeres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-304",
    "display" : "Centro de Salud Familiar Placilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-308",
    "display" : "Centro de Salud Familiar Plaza Justicia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-335",
    "display" : "Consultorio Policlínica Diocesana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106335"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-312",
    "display" : "Centro de Salud Familiar Puertas Negras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-311",
    "display" : "Centro de Salud Familiar Quebrada Verde",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-303",
    "display" : "Centro de Salud Familiar Reina Isabel II",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-330",
    "display" : "Centro de Salud Familiar San José de Rodelillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-105",
    "display" : "Hospital San José (Casablanca)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-333",
    "display" : "Centro de Salud Familiar 30 de Marzo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106333"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-102",
    "display" : "Hospital Dr. Eduardo Pereira Ramírez (Valparaíso)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "07-415",
    "display" : "Posta de Salud Rural Alicahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-416",
    "display" : "Posta de Salud Rural Artificio (Cabildo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-356",
    "display" : "Centro de Salud Familiar Aviador Acevedo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107356"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-414",
    "display" : "Centro de Salud Familiar Catapilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-400",
    "display" : "Posta de Salud Rural Colliguay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-419",
    "display" : "Posta de Salud Rural Hierro Viejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-409",
    "display" : "Posta de Salud Rural Huaquén (La Ligua)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-429",
    "display" : "Posta de Salud Rural La Canela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-426",
    "display" : "Posta de Salud Rural La Vega (Olmué)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-417",
    "display" : "Posta de Salud Rural La Viña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-427",
    "display" : "Posta de Salud Rural Las Palmas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-431",
    "display" : "Posta de Salud Rural Las Puertas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-408",
    "display" : "Posta de Salud Rural Las Parcelas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-410",
    "display" : "Posta de Salud Rural Los Molles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-422",
    "display" : "Posta de Salud Rural Maitencillo (Puchuncaví)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-430",
    "display" : "Posta de Salud Rural Manzanar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-433",
    "display" : "Posta de Salud Rural Pachacama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-428",
    "display" : "Posta de Salud Rural Pachacamita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-354",
    "display" : "Centro de Salud Familiar Papudo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107354"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-729",
    "display" : "Centro Comunitario de Salud Familiar Pedegua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-421",
    "display" : "Posta de Salud Rural Pichicuy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-357",
    "display" : "Centro de Salud Familiar Pompeya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107357"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-406",
    "display" : "Posta de Salud Rural Pueblo de Roco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-405",
    "display" : "Posta de Salud Rural Pueblo de Varas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-412",
    "display" : "Posta de Salud Rural Pullally",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-401",
    "display" : "Posta de Salud Rural Quebrada Alvarado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-402",
    "display" : "Posta de Salud Rural Romeral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-404",
    "display" : "Posta de Salud Rural Santa Marta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-407",
    "display" : "Posta de Salud Rural Trapiche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-403",
    "display" : "Posta de Salud Rural Villa Prat",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-413",
    "display" : "Zapallar, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-321",
    "display" : "Centro de Salud Familiar Artificio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-318",
    "display" : "Centro de Salud Familiar Boco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-106",
    "display" : "Hospital Dr. Víctor Hugo Moll (Cabildo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-312",
    "display" : "Centro de Salud Cardenal Raúl Silva Henríquez de Quillota",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-301",
    "display" : "Centro de Salud Familiar Profesor Eugenio Cienfuegos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-305",
    "display" : "Centro de Salud Familiar Concón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-100",
    "display" : "Hospital Dr. Gustavo Fricke (Viña del Mar)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-328",
    "display" : "Centro de Salud Familiar Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-308",
    "display" : "Centro de Salud Familiar El Belloto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-324",
    "display" : "Centro de Salud Familiar UE Rosa Sanchez G. El Melón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-326",
    "display" : "Centro de Salud Familiar Brígida Zavala",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-303",
    "display" : "Centro de Salud Familiar Gómez Carreño",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-110",
    "display" : "Hospital Centro Geriátrico Paz de la Tarde (Limache)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-322",
    "display" : "Centro de Salud Familiar Hijuelas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-325",
    "display" : "Centro de Salud Familiar Dr. Juan Carlos Baeza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-103",
    "display" : "Hospital Dr. Mario Sánchez Vergara (La Calera)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-313",
    "display" : "Consultorio La Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-105",
    "display" : "Hospital San Agustín (La Ligua)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-320",
    "display" : "Centro de Salud Familiar La Palma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-327",
    "display" : "Centro de Salud Familiar Las Torres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-104",
    "display" : "Hospital Santo Tomás (Limache)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-314",
    "display" : "Centro de Salud Familiar Lusitania",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-304",
    "display" : "Centro de Salud Familiar Marco Maldonado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-302",
    "display" : "Centro de Salud Familiar Miraflores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-311",
    "display" : "Centro de Salud Familiar Dr. Miguel Concha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-323",
    "display" : "Centro de Salud Familiar Nogales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-300",
    "display" : "Centro de Salud Familiar Nueva Aurora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-317",
    "display" : "Centro de Salud Familiar Manuel Lucero. Olmué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-109",
    "display" : "Hospital Juana Ross de Edwards (Peñablanca, Villa Alemana)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-107",
    "display" : "Hospital de Petorca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-316",
    "display" : "Centro de Salud Familiar Puchuncaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-101",
    "display" : "Hospital San Martín (Quillota)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-307",
    "display" : "Centro de Salud Familiar Quilpué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-102",
    "display" : "Hospital de Quilpué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-108",
    "display" : "Hospital Adriana Cousiño (Quintero)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-319",
    "display" : "Centro de Salud Familiar San Pedro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-703",
    "display" : "Centro Comunitario de Salud Familiar Santa Julia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-315",
    "display" : "Centro de Salud Familiar Ventanas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-309",
    "display" : "Centro de Salud Familiar Villa Alemana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "08-402",
    "display" : "Posta de Salud Rural Campos de Ahumada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-401",
    "display" : "Posta de Salud Rural Cariño Botado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-408",
    "display" : "Cerrillos, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-407",
    "display" : "Posta de Salud Rural Guzmanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-410",
    "display" : "Posta de Salud Rural La Orilla (Putaendo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-412",
    "display" : "Las Cadenas, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-400",
    "display" : "Posta de Salud Rural Lo Calvo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-406",
    "display" : "Posta de Salud Rural Piguchén (Putaendo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-411",
    "display" : "Posta de Salud Rural Quebrada de Herrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-404",
    "display" : "Posta de Salud Rural Río Blanco (Los Andes)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-403",
    "display" : "Posta de Salud Rural Río Colorado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-405",
    "display" : "Posta de Salud Rural San Vicente (Calle Larga)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-409",
    "display" : "Posta de Salud Rural Santa Filomena (Santa María)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-308",
    "display" : "Centro de Salud Familiar José Joaquín Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-303",
    "display" : "Centro de Salud Familiar Dr. Eduardo Raggio Lanata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-310",
    "display" : "Centro de Salud Familiar Curimón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-102",
    "display" : "Hospital San Francisco (Llaillay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-300",
    "display" : "Centro de Salud Familiar Llaillay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-307",
    "display" : "Centro de Salud Familiar Centenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-101",
    "display" : "Hospital San Juan de Dios (Los Andes)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-306",
    "display" : "Centro de Salud Familiar Cordillera Andina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-311",
    "display" : "Centro de Salud Familiar María Elena Peñaloza Morales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-104",
    "display" : "Hospital San Antonio (Putaendo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-105",
    "display" : "Hospital Psiquiátrico Dr. Philippe Pinel (Putaendo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-304",
    "display" : "Centro de Salud Familiar Valle de Los Libertadores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-301",
    "display" : "Centro de Salud Familiar Rinconada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-100",
    "display" : "Hospital de San Camilo (San Felipe)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-302",
    "display" : "Centro de Salud Familiar San Esteban",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-305",
    "display" : "Centro de Salud Familiar San Felipe El Real",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-309",
    "display" : "Centro de Salud Familiar Santa María Dr. Jorge Ahumada Lemus",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "09-410",
    "display" : "Posta de Salud Rural La Capilla de Caleu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-420",
    "display" : "Posta de Salud Rural Chacabuco (Colina)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-416",
    "display" : "Posta de Salud Rural Colorado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-415",
    "display" : "Huertos Familiares, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-407",
    "display" : "Posta de Salud Rural Juan Pablo II de Lampa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-418",
    "display" : "Posta de Salud Rural Las Canteras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-417",
    "display" : "Posta de Salud Rural Los Ingleses",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-412",
    "display" : "Posta de Salud Rural Montenegro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-414",
    "display" : "Posta de Salud Rural Polpaico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-413",
    "display" : "Posta de Salud Rural Rungue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-419",
    "display" : "Posta de Salud Rural Santa Marta de Liray",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-300",
    "display" : "Centro de Salud Familiar Agustín Cruz Melo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-312",
    "display" : "Centro de Salud Familiar Batuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-310",
    "display" : "Centro de Salud Familiar Colina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-640",
    "display" : "COSAM Colina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109640"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-607",
    "display" : "COSAM Conchalí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-608",
    "display" : "COSAM Huechuraba",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109608"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-606",
    "display" : "COSAM Independencia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109606"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-641",
    "display" : "COSAM Lampa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109641"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-636",
    "display" : "COSAM Quilicura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109636"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-609",
    "display" : "COSAM Recoleta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-642",
    "display" : "COSAM Til-Til",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109642"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-307",
    "display" : "Centro de Salud Familiar Dr. Juan Petrinovic (Ex Scroggie)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-317",
    "display" : "Centro de Salud Familiar El Barrero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-319",
    "display" : "Centro de Diagnóstico y Tratamiento Dra. Eloísa Díaz",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-308",
    "display" : "Centro de Salud Familiar Alberto Bachelet Martínez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-316",
    "display" : "Centro de Salud Familiar Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-313",
    "display" : "Centro de Salud Familiar Irene Frei de Cid",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-311",
    "display" : "Centro de Salud Familiar José Bauza Frau",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-309",
    "display" : "Centro de Salud Familiar José Symon Ojeda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-314",
    "display" : "Centro de Salud Familiar Juanita Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-305",
    "display" : "Centro de Salud Familiar La Pincoya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-302",
    "display" : "Centro de Salud Familiar Lucas Sierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-103",
    "display" : "Instituto Nacional del Cáncer Dr. Caupolicán Pardo Correa (Santiago, Recoleta)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-102",
    "display" : "Instituto Psiquiátrico Dr. José Horwitz Barak (Santiago Recoleta)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-303",
    "display" : "Centro de Salud Familiar Quinta Bella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-301",
    "display" : "Centro de Salud Familiar Recoleta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-101",
    "display" : "Hospital Clínico de Niños Dr. Roberto del Río (Santiago, Independencia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-100",
    "display" : "Complejo Hospitalario San José (Santiago, Independencia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-104",
    "display" : "Hospital de Til Til",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-304",
    "display" : "Centro de Salud Familiar Valdivieso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-505",
    "display" : "Posta de Salud Rural Pichi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110505"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-440",
    "display" : "Posta de Salud Rural Bollenar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-475",
    "display" : "Posta de Salud Rural Chorombo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-510",
    "display" : "Posta de Salud Rural El Asiento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110510"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-415",
    "display" : "El Paico, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-495",
    "display" : "Posta de Salud Rural El Prado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110495"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-431",
    "display" : "Posta de Salud Rural Gacitúa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-503",
    "display" : "Centro Comunitario de Salud Familiar Hacienda Alhué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110503"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-410",
    "display" : "Centro Comunitario de Salud Familiar Irene Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-425",
    "display" : "Centro de Salud Familiar La Islita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-490",
    "display" : "Posta de Salud Rural La Manga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-432",
    "display" : "Posta de Salud Rural Las Mercedes ( Isla de Maipo )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-485",
    "display" : "Posta de Salud Rural Loica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110485"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-492",
    "display" : "Posta de Salud Rural Nihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110492"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-445",
    "display" : "Posta de Salud Rural Pahuilmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-450",
    "display" : "Pomaire, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-430",
    "display" : "Posta de Salud Rural San Antonio de Naltagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-465",
    "display" : "Posta de Salud Rural Santa Emilia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-515",
    "display" : "Posta de Salud Rural Santa María",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110515"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-393",
    "display" : "Centro de Salud Familiar Villa Alhué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110393"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-385",
    "display" : "Centro de Salud Familiar Adriana Madrid De Costabal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110385"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-310",
    "display" : "Centro de Salud Familiar Andes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-345",
    "display" : "Centro de Salud Familiar Dr. Carlos Avendaño",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110345"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-335",
    "display" : "Centro de Salud Familiar Cerro Navia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110335"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-601",
    "display" : "Consultorio Coaniquem",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-160",
    "display" : "Hospital de Curacaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110160"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-355",
    "display" : "Centro de Salud Familiar Dr. Arturo Albertz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110355"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-378",
    "display" : "Centro de Salud Familiar Dr. Edelberto Elgueta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110378"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-369",
    "display" : "Centro de Salud Familiar Dr. Fernando Monckeberg",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110369"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-352",
    "display" : "Centro de Salud Familiar Dr. Gustavo Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110352"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-600",
    "display" : "Dr. Julio Schwarzenberg, Consultorio (Delegado)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-330",
    "display" : "Centro de Salud Familiar Dr. Adalberto Steeger",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-370",
    "display" : "Centro de Salud Familiar El Monte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110370"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-120",
    "display" : "Hospital Félix Bulnes Cerda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110120"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-325",
    "display" : "Centro de Salud Familiar Garín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-362",
    "display" : "Centro de Salud Familiar Dr. Hernán Urzúa Merino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110362"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-364",
    "display" : "Centro de Salud Familiar Huamachuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110364"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-381",
    "display" : "Centro de Salud Familiar Ignacio Domeyko",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111381"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "10-375",
    "display" : "Centro de Salud Familiar Isla de Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110375"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-366",
    "display" : "Centro de Salud Familiar Juan Pablo II de Padre Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110366"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-320",
    "display" : "Centro de Salud Familiar Lo Franco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-150",
    "display" : "Hospital San José (Melipilla)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-140",
    "display" : "Hospital de Peñaflor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110140"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-350",
    "display" : "Centro de Salud Familiar Pudahuel Estrella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-351",
    "display" : "Centro de Salud Familiar Pudahuel Poniente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-360",
    "display" : "Centro de Salud Familiar Renca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110360"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-300",
    "display" : "Centro de Referencia de Salud Salvador Allende",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-100",
    "display" : "Hospital San Juan de Dios (Santiago, Santiago)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-380",
    "display" : "Centro de Salud Familiar San Manuel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110380"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-315",
    "display" : "Centro de Salud Familiar Santa Anita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-367",
    "display" : "Consultorio Santa Rosa Chena",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-130",
    "display" : "Hospital Adalberto Steeger (Talagante)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110130"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-110",
    "display" : "Instituto Traumatológico Dr. Teodoro Gebauer",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-340",
    "display" : "Centro de Salud Familiar Dr. Raúl Yazigi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110340"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-400",
    "display" : "Posta de Salud Rural Rinconada de Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-195",
    "display" : "Hospital de Urgencia Asistencia Pública Dr. Alejandro del Río",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111195"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-300",
    "display" : "Centro de Salud Familiar N°1 Dr. Ramón Corbalán Melgarejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-301",
    "display" : "Centro de Salud Familiar Nº 5",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-308",
    "display" : "Centro de Salud Familiar Dr. José Eduardo Ahués Salame",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-305",
    "display" : "Centro de Salud Familiar Dr. Norman Voulliéme",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-309",
    "display" : "Centro de Salud Familiar Dra. Ana María Juricic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-303a",
    "display" : "Centro de Salud Familiar Lo Valledor Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-302",
    "display" : "Centro de Salud Familiar Padre Vicente Irarrázabal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-351",
    "display" : "Centro de Referencia de Salud de Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-304",
    "display" : "Centro de Salud Familiar Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-370",
    "display" : "Centro de Salud Familiar Padre Orellana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111370"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-100",
    "display" : "Hospital Clínico San Borja Arriarán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-306",
    "display" : "Centro de Salud Familiar San José de Chuchunco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-372",
    "display" : "Centro de Salud Familiar Arauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111372"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-373",
    "display" : "Santiago Bueras, Consultorio",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-307",
    "display" : "Centro de Salud Familiar Enfermera Sofía Pincheira",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "12-303",
    "display" : "Centro de Salud Familiar Aguilucho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-306",
    "display" : "Centro de Salud Familiar Aníbal Ariztía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-304",
    "display" : "Centro de Salud Familiar Apoquindo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-300",
    "display" : "Centro de Referencia de Salud Cordillera Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-100",
    "display" : "Hospital Del Salvador de Santiago",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-302",
    "display" : "Centro de Salud Familiar Dr. Alfonso Leng",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-301",
    "display" : "Centro de Salud Familiar Dr. Hernán Alessandri",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-102",
    "display" : "Hospital de Niños Dr. Luis Calvo Mackenna (Santiago, Providencia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-101",
    "display" : "Hospital Dr. Luis Tisné B. (Santiago, Peñalolén)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-312",
    "display" : "Centro de Salud Familiar Félix de Amesti",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-106",
    "display" : "Instituto Nacional Geriátrico Presidente Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-103",
    "display" : "Instituto Nacional de Enfermedades Respiratorias y Cirugía Torácica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-316",
    "display" : "Centro de Salud Familiar Carol Urzúa Ibáñez de Peñalolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-314",
    "display" : "Centro de Salud Familiar La Faena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-317",
    "display" : "Centro de Salud Familiar Ossandon",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-307",
    "display" : "Centro de Salud Familiar Lo Barnechea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-318",
    "display" : "Centro de Salud Familiar Lo Hermida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-104",
    "display" : "Instituto de Neurocirugía Dr. Alfonso Asenjo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-105",
    "display" : "Instituto Nacional de Rehabilitación Infantil Presidente Pedro Aguirre Cerda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-310",
    "display" : "Centro de Salud Familiar Rosita Renard",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-311",
    "display" : "Centro de Salud Familiar Salvador Bustos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-315",
    "display" : "Centro de Salud Familiar San Luis",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-313",
    "display" : "Centro de Salud Familiar Santa Julia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-309",
    "display" : "Centro de Salud Familiar Vitacura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "13-411",
    "display" : "Posta de Salud Rural Abrantes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-407",
    "display" : "Posta de Salud Rural Los Morros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-321",
    "display" : "Centro de Salud Familiar Calera de Tango",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-412",
    "display" : "Posta de Salud Rural Chada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-406",
    "display" : "Posta de Salud Rural El Recurso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-319",
    "display" : "Centro de Salud Familiar Dr. Raúl Moya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-409",
    "display" : "Posta de Salud Rural Huelquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-402",
    "display" : "Centro Comunitario de Salud Familiar Dr. Ramón Galindo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-408",
    "display" : "Posta de Salud Rural Pintué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-410",
    "display" : "Posta de Salud Rural Rangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-404",
    "display" : "Posta de Salud Rural Valdivia de Paine",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-405",
    "display" : "Posta de Salud Rural Viluco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-401",
    "display" : "Bajos de San Agustín, Consultorio",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-300",
    "display" : "Centro de Salud Familiar Barros Luco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-100",
    "display" : "Hospital Barros Luco Trudeau (Santiago, San Miguel)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-150",
    "display" : "Hospital San Luis (Buin)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-316",
    "display" : "Centro de Salud Familiar Carol Urzúa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-312",
    "display" : "Centro de Salud Familiar Dr. Carlos Lorca Tobar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-308",
    "display" : "Centro de Salud Familiar Clara Estrella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-314",
    "display" : "Centro de Salud Familiar Cóndores de Chile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-315",
    "display" : "Centro de Salud Familiar Confraternidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-340",
    "display" : "COSAM Buin, Consultorio",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-337",
    "display" : "COSAM El Bosque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113337"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-338",
    "display" : "COSAM Pedro Aguirre Cerda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113338"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-339",
    "display" : "COSAM San Bernardo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113339"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-303",
    "display" : "Centro de Salud Familiar Amador Neghme",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-305",
    "display" : "Centro de Salud Familiar Arturo Baeza Goñi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-130",
    "display" : "Hospital Dr. Exequiel González Cortés (Santiago, San Miguel)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113130"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-331",
    "display" : "Centro de Salud Familiar Edgardo Enríquez Fröedden",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-326",
    "display" : "Centro de Salud Familiar Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-394",
    "display" : "Centro de Salud Familiar El Manzano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113394"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-170",
    "display" : "Hospital Psiquiátrico El Peral (Santiago, Puente Alto)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113170"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-181",
    "display" : "Centro de Referencia de Salud El Pino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113181"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-180",
    "display" : "Hospital El Pino (Santiago, San Bernardo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113180"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-160",
    "display" : "Hospital de Enfermedades Infecciosas Dr. Lucio Córdova (Santiago, San Miguel)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113160"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-307aa",
    "display" : "Centro de Salud Familiar Padre Esteban Gumucio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-309",
    "display" : "Centro de Salud Familiar Julio Acuña Pinzón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-306",
    "display" : "Centro de Salud Familiar Padre Pierre Dubois (Ex La Feria)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-323",
    "display" : "Centro de Salud Familiar Dr. Mario Salcedo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-320",
    "display" : "Centro de Salud Familiar Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-329",
    "display" : "Centro de Salud Familiar Orlando Letelier",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-318",
    "display" : "Centro de Salud Familiar Dr. Miguel Ángel Solar (ex CESFAM Paine)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-190",
    "display" : "Hospital Parroquial de San Bernardo (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113190"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-330",
    "display" : "Centro de Salud Familiar Raúl Brañes F.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-302",
    "display" : "Centro de Salud Familiar Recreo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-313",
    "display" : "Centro de Salud Familiar Raúl Cuevas (Ex-San Bernardo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-301",
    "display" : "Centro de Salud Familiar San Joaquín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-311",
    "display" : "Centro de Salud Familiar Santa Anselma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-317",
    "display" : "Centro de Salud Familiar Santa Laura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-322",
    "display" : "Centro de Salud Familiar Santa Teresa de Los Andes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-310",
    "display" : "Centro de Salud Familiar Dra. Mariela Salgado Zepeda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-304",
    "display" : "Centro de Salud Familiar Villa Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-301",
    "display" : "Centro de Salud Familiar Dr. Alejandro del Río",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-405",
    "display" : "El Principal, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-408",
    "display" : "Posta de Salud Rural El Volcán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-318",
    "display" : "Centro de Salud Familiar Flor Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-407",
    "display" : "Posta de Salud Rural Las Vertientes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-409",
    "display" : "Posta de Salud Rural Las Perdices",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-404",
    "display" : "Lo Arcaya, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-401",
    "display" : "Posta de Salud Rural Puntilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-312",
    "display" : "Centro de Salud Familiar San Gerónimo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-102",
    "display" : "Hospital San José de Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-402",
    "display" : "San Juan, Posta.",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-403",
    "display" : "Posta de Salud Rural Santa Rita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-303",
    "display" : "Centro de Salud Familiar Bellavista",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-320",
    "display" : "Centro de Salud Familiar Bernardo Leighton",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-321",
    "display" : "Centro de Salud Familiar Cardenal Silva Henríquez de Puente Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-204",
    "display" : "Centro de Enfermedades Respiratorias Infantiles Josefina Martínez (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114204"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-317",
    "display" : "Centro de Salud Familiar Santo Tomás",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-316",
    "display" : "Centro de Salud Familiar Dr. Fernando Maffioletti",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-310",
    "display" : "Centro de Salud Familiar Dr. José Manuel Balmaceda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-319",
    "display" : "Centro de Salud Familiar El Roble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-307",
    "display" : "Centro de Salud Familiar La Bandera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-306",
    "display" : "Centro de Salud Familiar La Granja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-302",
    "display" : "Centro de Salud Familiar Los Castaños",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-305",
    "display" : "Centro de Salud Familiar Los Quillayes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-315",
    "display" : "Centro de Salud Familiar Malaquías Concha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-309",
    "display" : "Centro de Salud Familiar Pablo de Rokha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-103",
    "display" : "Hospital Padre Alberto Hurtado (San Ramón)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-322",
    "display" : "Centro de Salud Familiar Padre Manuel Villaseca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-308",
    "display" : "Centro de Salud Familiar San Rafael (La Pintana)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-150",
    "display" : "Centro de Referencia de Salud San Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-314",
    "display" : "Centro de Salud Familiar Dr. Salvador Allende (Ex Consultorio San Ramón)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-311",
    "display" : "Centro de Salud Familiar Santiago de Nueva Extremadura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-304",
    "display" : "Centro de Salud Familiar Villa OHiggins",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-313",
    "display" : "Centro de Salud Familiar Vista Hermosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-434",
    "display" : "Posta de Salud Rural Puente Negro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-449",
    "display" : "Posta de Salud Rural Apalta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-465",
    "display" : "Posta de Salud Rural Auquinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-458",
    "display" : "Posta de Salud Rural Cahuil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-456",
    "display" : "Posta de Salud Rural Calleuque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-470",
    "display" : "Posta de Salud Rural Candelaria ( Chépica)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-474",
    "display" : "Posta de Salud Rural Cardonal de Panilonco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-439",
    "display" : "Posta de Salud Rural Codegua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-419",
    "display" : "Posta de Salud Rural Corcolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-400",
    "display" : "Posta de Salud Rural Coya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-451",
    "display" : "Posta de Salud Rural Cunaco",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-409",
    "display" : "Posta de Salud Rural El Abra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-404",
    "display" : "Posta de Salud Rural El Carmen ( Las Cabras)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-415",
    "display" : "Posta de Salud Rural El Manzano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-459",
    "display" : "Posta de Salud Rural El Membrillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-427",
    "display" : "Posta de Salud Rural El Tambo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-423",
    "display" : "Posta de Salud Rural Guacarhue",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-450",
    "display" : "Posta de Salud Rural Guindo Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-403",
    "display" : "Gultro, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-438",
    "display" : "Posta de Salud Rural Huemul (Chimbarongo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-405",
    "display" : "Posta de Salud Rural Idahue (Coltauco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-444",
    "display" : "Posta de Salud Rural Isla de Yáquil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-413",
    "display" : "Posta de Salud Rural La Cebada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-435",
    "display" : "Posta de Salud Rural La Dehesa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-412",
    "display" : "Posta de Salud Rural La Panchina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-401",
    "display" : "Posta de Salud Rural La Punta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-428",
    "display" : "Posta de Salud Rural Larmahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-421",
    "display" : "Posta de Salud Rural Las Viñas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-416",
    "display" : "Posta de Salud Rural Llallauquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-472",
    "display" : "Posta de Salud Rural Lo Cartagena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-407",
    "display" : "Posta de Salud Rural Lo de Cuevas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-420",
    "display" : "Posta de Salud Rural Lo de Lobos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-454",
    "display" : "Posta de Salud Rural Los Cardos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-411",
    "display" : "Posta de Salud Rural Los Lirios",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-422",
    "display" : "Malloa, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-455",
    "display" : "Posta de Salud Rural Molineros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-473",
    "display" : "Posta de Salud Rural Nilahue Cornejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-402",
    "display" : "Olivar, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-466",
    "display" : "Posta de Salud Rural Orilla de Auquinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-457",
    "display" : "Posta de Salud Rural Pailimo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-445",
    "display" : "Consultorio General Rural Palmilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-431",
    "display" : "Posta de Salud Rural Patagua Cerro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-430",
    "display" : "Posta de Salud Rural Patagua Orilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-461",
    "display" : "Posta de Salud Rural Alto Ramírez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-425",
    "display" : "Posta de Salud Rural Pencahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-453",
    "display" : "Posta de Salud Rural Población",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-417",
    "display" : "Posta de Salud Rural Popeta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-436",
    "display" : "Posta de Salud Rural Agua Buena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-452",
    "display" : "Posta de Salud Rural Pumanque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-446",
    "display" : "Posta de Salud Rural Pupilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-460",
    "display" : "Posta de Salud Rural Pupuya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-471",
    "display" : "Posta de Salud Rural Puquillay Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-442",
    "display" : "Posta de Salud Rural Puquillay Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-463",
    "display" : "Posta de Salud Rural Quelentaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-443",
    "display" : "Posta de Salud Rural Quinahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-475",
    "display" : "Posta de Salud Rural Ranguil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-462",
    "display" : "Posta de Salud Rural Rapel (Navidad)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-426",
    "display" : "Posta de Salud Rural Rinconada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-469",
    "display" : "Posta de Salud Rural Rinconada de Alcones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-406",
    "display" : "Posta de Salud Rural Rinconada de Parral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-432",
    "display" : "Posta de Salud Rural Roma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-447",
    "display" : "Posta de Salud Rural San José del Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-440",
    "display" : "Posta de Salud Rural San Juan de La Sierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-468",
    "display" : "Posta de Salud Rural San Pedro de Alcántara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-464",
    "display" : "Posta de Salud Rural San Vicente de Pucalán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-429",
    "display" : "Posta de Salud Rural Santa Amelia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-414",
    "display" : "Posta de Salud Rural Santa Inés",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-448",
    "display" : "Posta de Salud Rural Santa Irene",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-437",
    "display" : "Posta de Salud Rural Tinguiririca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-410",
    "display" : "Posta de Salud Rural Totihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-441",
    "display" : "Posta de Salud Rural Yáquil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-424",
    "display" : "Posta de Salud Rural Zúñiga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-302",
    "display" : "Centro de Salud Familiar N° 3 Dr. Abel Zapata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-317",
    "display" : "Centro de Salud Familiar Chacabuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-315",
    "display" : "Centro de Salud Familiar Chépica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-108",
    "display" : "Hospital Mercedes de Chimbarongo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-307",
    "display" : "Centro de Salud Familiar Codegua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-102",
    "display" : "Hospital de Coínco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-309",
    "display" : "Centro de Salud Familiar Francisco Labrin de Coltauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-308",
    "display" : "Centro de Salud Familiar Doñihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-301",
    "display" : "Centro de Salud Familiar N° 2 Dr. Eduardo Geyter",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-300",
    "display" : "Centro de Salud Familiar N° 1 Dr. Enrique Dintrans",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-101",
    "display" : "Hospital Santa Filomena de Graneros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-304",
    "display" : "Centro de Salud Familiar N° 5 Dr. Juan Chiorrini",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-314",
    "display" : "Centro de Salud Familiar La Estrella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-311",
    "display" : "Centro de Salud Familiar Las Cabras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-114",
    "display" : "Hospital de Litueche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115114"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-321",
    "display" : "Centro de Salud Familiar Lo Miranda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-113",
    "display" : "Hospital de Lolol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115113"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-305",
    "display" : "Centro de Salud Familiar Dr. Osvaldo Ruz Orrego de Machalí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-111",
    "display" : "Hospital de Marchigüe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115111"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-303",
    "display" : "Centro de Salud Familiar Nº 4 Dra. María Latife",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-109",
    "display" : "Hospital de Nancagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-320",
    "display" : "Centro de Salud Familiar Valle Mar Navidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-323",
    "display" : "Centro de Salud Familiar Oriente de San Fernando",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-316",
    "display" : "Centro de Salud Familiar Paredones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-313",
    "display" : "Centro de Salud Familiar Peralillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-103",
    "display" : "Hospital Del Salvador de Peumo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-106",
    "display" : "Hospital de Pichidegua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-112",
    "display" : "Hospital de Pichilemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115112"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-318",
    "display" : "Consultorio Placilla (Placilla)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-312",
    "display" : "Centro de Salud Familiar Quinta de Tilcoco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-100",
    "display" : "Hospital Dr. Franco Ravera Zunino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-104",
    "display" : "Hospital Dr. Ricardo Valenzuela Sáez (Rengo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-310",
    "display" : "Centro de Salud Familiar Requínoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-322",
    "display" : "Centro de Salud Familiar Rosario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-107",
    "display" : "Hospital San Juan de Dios de San Fernando",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-306",
    "display" : "Centro de Salud Familiar San Francisco Mostazal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-105",
    "display" : "Hospital San Vicente de Tagua-Tagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-319",
    "display" : "Centro de Salud Familiar Santa Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-110",
    "display" : "Hospital de Santa Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-545",
    "display" : "Posta de Salud Rural Aurora",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-550",
    "display" : "Posta de Salud Rural Bajos de Huenutil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116550"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-529",
    "display" : "Posta de Salud Rural Barba Rubia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116529"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-543",
    "display" : "Posta de Salud Rural Batuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116543"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-437",
    "display" : "Posta de Salud Rural Botalcura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-549",
    "display" : "Posta de Salud Rural Boyeruca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116549"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-458",
    "display" : "Posta de Salud Rural Buenos Aires",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-494",
    "display" : "Posta de Salud Rural Bullileo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116494"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-464",
    "display" : "Posta de Salud Rural Caliboro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-456",
    "display" : "Posta de Salud Rural Calpún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-432",
    "display" : "Posta de Salud Rural Camarico (Río Claro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-490",
    "display" : "Centro Comunitario de Salud Familiar Camelias",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-503",
    "display" : "Posta de Salud Rural Cancha de Los Huevos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116503"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-436",
    "display" : "Posta de Salud Rural Carrizalillo (Constitución )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-496",
    "display" : "Posta de Salud Rural Catillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116496"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-499",
    "display" : "Posta de Salud Rural Cayurranquil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116499"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-546",
    "display" : "Posta de Salud Rural Chequén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116546"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-415",
    "display" : "Posta de Salud Rural Chequenlemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-508",
    "display" : "Posta de Salud Rural Chovellén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116508"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-477",
    "display" : "Posta de Salud Rural Chupallar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-435",
    "display" : "Posta de Salud Rural Coipué (Curepto)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-440",
    "display" : "Posta de Salud Rural Colín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-492",
    "display" : "Posta de Salud Rural Copihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116492"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-418",
    "display" : "Posta de Salud Rural Cordillerilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-438",
    "display" : "Posta de Salud Rural Corinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-504",
    "display" : "Posta de Salud Rural Coronel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116504"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-449",
    "display" : "Posta de Salud Rural Corralones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-495",
    "display" : "Posta de Salud Rural Digua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116495"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-426",
    "display" : "Posta de Salud Rural Duao de Licantén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-518",
    "display" : "Posta de Salud Rural El Aromo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116518"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-517",
    "display" : "Posta de Salud Rural El Bolsico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116517"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-409",
    "display" : "Posta de Salud Rural El Calabozo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-539",
    "display" : "Posta de Salud Rural El Cardonal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116539"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-516",
    "display" : "Posta de Salud Rural El Carmen( Longaví)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116516"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-430",
    "display" : "Posta de Salud Rural El Colo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-451",
    "display" : "Posta de Salud Rural El Colorado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-403",
    "display" : "Posta de Salud Rural El Manzano ( Teno)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-406",
    "display" : "Posta de Salud Rural El Parrón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-408",
    "display" : "Posta de Salud Rural El Peumal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-544",
    "display" : "Posta de Salud Rural El Porvenir",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116544"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-421",
    "display" : "Posta de Salud Rural El Radal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-465",
    "display" : "Posta de Salud Rural El Sauce (San Javier)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-422",
    "display" : "Posta de Salud Rural El Yacal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-474",
    "display" : "Posta de Salud Rural Embalse Ancoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-519",
    "display" : "Posta de Salud Rural Esperanza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116519"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-530",
    "display" : "Posta de Salud Rural Espinalillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116530"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-466",
    "display" : "Posta de Salud Rural Estación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-538",
    "display" : "Posta de Salud Rural Estancilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116538"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-559",
    "display" : "Posta de Salud Rural Floresta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116559"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-524",
    "display" : "Posta de Salud Rural Fuerte Viejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116524"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-455",
    "display" : "Posta de Salud Rural Gualleco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-411",
    "display" : "Posta de Salud Rural Huaquén (Curepto)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-534",
    "display" : "Posta de Salud Rural Huencuecho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116534"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-462",
    "display" : "Posta de Salud Rural Huerta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-481",
    "display" : "Posta de Salud Rural Huimeo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116481"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-427",
    "display" : "Posta de Salud Rural Iloca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-420",
    "display" : "Posta de Salud Rural Itahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-424",
    "display" : "Posta de Salud Rural La Huerta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-557",
    "display" : "Posta de Salud Rural La Obra (Curicó)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116557"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-560",
    "display" : "Posta de Salud Rural La Orilla (Parral)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116560"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-528",
    "display" : "Posta de Salud Rural La Pesca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116528"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-444",
    "display" : "Posta de Salud Rural La Placeta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-483",
    "display" : "Posta de Salud Rural La Quinta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-452",
    "display" : "Posta de Salud Rural La Suiza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-548",
    "display" : "Posta de Salud Rural La Vega (Chanco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116548"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-468",
    "display" : "Posta de Salud Rural Lagunillas ( Villa Alegre )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-479",
    "display" : "Posta de Salud Rural Las Cañas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116479"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-446",
    "display" : "Posta de Salud Rural Las Lomas (San Clemente )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-552",
    "display" : "Posta de Salud Rural Las Palmas de Toconey",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116552"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-562",
    "display" : "Posta de Salud Rural Las Toscas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116562"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-400",
    "display" : "Posta de Salud Rural Limávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-542",
    "display" : "Posta de Salud Rural Linares de Perales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116542"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-429",
    "display" : "Posta de Salud Rural Lipimávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-537",
    "display" : "Posta de Salud Rural Llancanao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116537"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-428",
    "display" : "Posta de Salud Rural Llico (Vichuquén)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-510",
    "display" : "Posta de Salud Rural Loanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116510"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-486",
    "display" : "Posta de Salud Rural Loma de Vásquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116486"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-532",
    "display" : "Posta de Salud Rural Lomas de la Tercera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116532"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-505",
    "display" : "Posta de Salud Rural Lomas de Putagán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116505"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-425",
    "display" : "Posta de Salud Rural Lora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-493",
    "display" : "Posta de Salud Rural Los Canelos (Parral)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116493"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-522",
    "display" : "Posta de Salud Rural Los Carros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116522"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-485",
    "display" : "Posta de Salud Rural Los Cristales",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-478",
    "display" : "Posta de Salud Rural Los Hualles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-450",
    "display" : "Posta de Salud Rural Los Montes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-410",
    "display" : "Posta de Salud Rural Los Queñes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-514",
    "display" : "Posta de Salud Rural Los Quillayes (Sagrada Familia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116514"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-540",
    "display" : "Posta de Salud Rural Los Robles (Río Claro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116540"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-471",
    "display" : "Posta de Salud Rural Maitencillo (Yerbas Buenas)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-453",
    "display" : "Posta de Salud Rural Maitenes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-447",
    "display" : "Posta de Salud Rural Mariposas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-472",
    "display" : "Posta de Salud Rural Maule Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-463",
    "display" : "Posta de Salud Rural Melozal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-561",
    "display" : "Posta de Salud Rural Mercedes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116561"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-482",
    "display" : "Posta de Salud Rural Mesamávida - Longaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116482"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-480",
    "display" : "Posta de Salud Rural Miraflores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116480"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-523",
    "display" : "Posta de Salud Rural Monte Flor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116523"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-401",
    "display" : "Posta de Salud Rural Monterilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-459",
    "display" : "Posta de Salud Rural Nirivilo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-470",
    "display" : "Posta de Salud Rural Orilla de Maule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-509",
    "display" : "Posta de Salud Rural Pahuil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-405",
    "display" : "Posta de Salud Rural Palquibudi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-412",
    "display" : "Posta de Salud Rural Pejerrey",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-407",
    "display" : "Posta de Salud Rural Pellines (Empedrado)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-506",
    "display" : "Centro Comunitario de Salud Familiar Pelluhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116506"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-434",
    "display" : "Posta de Salud Rural Peñaflor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-469",
    "display" : "Posta de Salud Rural Peñuelas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-497",
    "display" : "Posta de Salud Rural Perquilauquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116497"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-475",
    "display" : "Posta de Salud Rural Peumal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-443",
    "display" : "Posta de Salud Rural Peumo Negro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-419",
    "display" : "Posta de Salud Rural Pichingal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-487",
    "display" : "Posta de Salud Rural Piguchén (Retiro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116487"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-402",
    "display" : "Posta de Salud Rural Pilén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-556",
    "display" : "Posta de Salud Rural Pocillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116556"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-433",
    "display" : "Posta de Salud Rural Porvenir",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-417",
    "display" : "Posta de Salud Rural Potrero Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-547",
    "display" : "Posta de Salud Rural Puipuyén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116547"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-445",
    "display" : "Posta de Salud Rural Punta de Diamante",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-467",
    "display" : "Posta de Salud Rural Putagán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-457",
    "display" : "Posta de Salud Rural Putú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-501",
    "display" : "Posta de Salud Rural Quella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116501"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-553",
    "display" : "Posta de Salud Rural Quilhuine",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116553"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-442",
    "display" : "Posta de Salud Rural Quiñipeumo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-454",
    "display" : "Posta de Salud Rural Rapilermo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-431",
    "display" : "Posta de Salud Rural Rarín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-460",
    "display" : "Posta de Salud Rural Rastrojos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-554",
    "display" : "Posta de Salud Rural Raúl Folleraux",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116554"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-484",
    "display" : "Posta de Salud Rural San José (Longaví)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116484"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-491",
    "display" : "Posta de Salud Rural San Marcos (Retiro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116491"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-527",
    "display" : "Posta de Salud Rural San Ramón (Retiro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116527"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-531",
    "display" : "Posta de Salud Rural San Víctor Álamos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116531"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-404",
    "display" : "Posta de Salud Rural Santa Blanca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-526",
    "display" : "Posta de Salud Rural Santa Delfina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116526"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-520",
    "display" : "Posta de Salud Rural Santa Elena (San Clemente)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116520"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-512",
    "display" : "Posta de Salud Rural Santa Olga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116512"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-533",
    "display" : "Posta de Salud Rural Santa Rosa (Sagrada Familia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116533"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-555",
    "display" : "Posta de Salud Rural Santa Sofía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116555"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-500",
    "display" : "Posta de Salud Rural Santo Toribio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116500"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-489",
    "display" : "Posta de Salud Rural Talhuenes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116489"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-551",
    "display" : "Posta de Salud Rural Talquita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116551"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-439",
    "display" : "Posta de Salud Rural Tanhuao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-498",
    "display" : "Posta de Salud Rural Tapihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116498"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-507",
    "display" : "Posta de Salud Rural Tregualemu",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-502",
    "display" : "Posta de Salud Rural Tres Esquinas (Cauquenes)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116502"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-413",
    "display" : "Posta de Salud Rural Tutuquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-416",
    "display" : "Posta de Salud Rural Upeo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-515",
    "display" : "Posta de Salud Rural Vara Gruesa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116515"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-476",
    "display" : "Posta de Salud Rural Vega de Salas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-448",
    "display" : "Posta de Salud Rural Vilches",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-488",
    "display" : "Posta de Salud Rural Villaseca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116488"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-461",
    "display" : "Posta de Salud Rural Villavicencio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-320",
    "display" : "Centro de Salud Familiar Amanda Benavente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-329",
    "display" : "Centro de Salud Familiar Armando Williams",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-311",
    "display" : "Centro de Salud Familiar Arrau Méndez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-331",
    "display" : "Centro de Salud Familiar Carlos Trupp",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-111",
    "display" : "Hospital San Juan de Dios (Cauquenes)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116111"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-332",
    "display" : "Centro de Salud Familiar Cerro Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116332"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-112",
    "display" : "Hospital Dr. Benjamín Pedreros (Chanco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116112"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-317",
    "display" : "Centro de Salud Familiar Alcalde Francisco Sepúlveda Salgado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-302",
    "display" : "Centro de Salud Familiar Colón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-336",
    "display" : "Centro de Salud Familiar Comalle",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116336"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-107",
    "display" : "Hospital de Constitución",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-316",
    "display" : "Centro de Salud Familiar Cumpeo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-322",
    "display" : "Centro de Salud Familiar Dr. Pedro Rivas Pinochet",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-106",
    "display" : "Hospital de Curepto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-303",
    "display" : "Centro de Salud Familiar Curicó Centro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-100",
    "display" : "Hospital San Juan de Dios (Curicó)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-334",
    "display" : "Centro de Salud Familiar Empedrado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116334"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-103",
    "display" : "Hospital de Hualañé",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-318",
    "display" : "Centro de Salud Familiar Ignacio Carrera Pinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-305",
    "display" : "Centro de Salud Familiar José Dionisio Astaburuaga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-307",
    "display" : "Centro de Salud Familiar Julio Contardo Urzúa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-306",
    "display" : "Centro de Salud Familiar La Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-104",
    "display" : "Hospital de Licantén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-108",
    "display" : "Hospital Presidente Carlos Ibáñez del Campo (Linares)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-304",
    "display" : "Centro de Salud Familiar Lontué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-301",
    "display" : "Centro de Salud Familiar Miguel Ángel Arenas López",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-321",
    "display" : "Centro de Salud Familiar Marta Estévez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-314",
    "display" : "Centro de Salud Familiar Maule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-102",
    "display" : "Hospital de Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-335",
    "display" : "Centro de Salud Familiar Morza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116335"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-323",
    "display" : "Centro de Salud Familiar Oscar Bonilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-319",
    "display" : "Centro de Salud Familiar Panimávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-110",
    "display" : "Hospital San José (Parral)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-315",
    "display" : "Centro de Salud Familiar Pelarco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-312",
    "display" : "Centro de Salud Familiar Pencahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-333",
    "display" : "Centro de Salud Familiar Rauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116333"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-328",
    "display" : "Centro de Salud Familiar Romeral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-325",
    "display" : "Centro de Salud Familiar Sagrada Familia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-313",
    "display" : "Centro de Salud Familiar San Clemente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-109",
    "display" : "Hospital Dr. Abel Fuentealba Lagos de San Javier",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-309",
    "display" : "Centro de Salud Familiar San Juan Dios de Linares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-324",
    "display" : "Centro de Salud Familiar San Rafael (San Rafael)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-330",
    "display" : "Centro de Salud Familiar Sarmiento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-563",
    "display" : "Posta de Salud Rural Sauzal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116563"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-300",
    "display" : "Centro De Salud Familiar A.S. Betty Muñoz Arce (Ex Sol de Septiembre)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-105",
    "display" : "Hospital Dr. César Garavagno Burotto (Talca)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-101",
    "display" : "Hospital de Teno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-308",
    "display" : "Centro de Salud Familiar Valentín Letelier",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-327",
    "display" : "Centro de Salud Familiar Vichuquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-310",
    "display" : "Centro de Salud Familiar Villa Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-326",
    "display" : "Centro de Salud Familiar Villa Prat",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "17-462",
    "display" : "Posta de Salud Rural Arizona",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-468",
    "display" : "Posta de Salud Rural Belén (Ñiquen)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-443",
    "display" : "Posta de Salud Rural Boca Itata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-451",
    "display" : "Posta de Salud Rural Buchupureo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-403",
    "display" : "Posta de Salud Rural Bustamante",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-415",
    "display" : "Posta de Salud Rural Cachapoal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-459",
    "display" : "Posta de Salud Rural Capellanía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-405",
    "display" : "Posta de Salud Rural Capilla Cato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-457",
    "display" : "Posta de Salud Rural Capilla Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-430",
    "display" : "Posta de Salud Rural Cartago",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-450",
    "display" : "Posta de Salud Rural Casino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-418",
    "display" : "Centro Comunitario de Salud Familiar Chacay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-452",
    "display" : "Posta de Salud Rural Colmuyao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-447",
    "display" : "Posta de Salud Rural Cucha Cox",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-444",
    "display" : "Posta de Salud Rural Denecan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-454",
    "display" : "Posta de Salud Rural El Calvario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-467",
    "display" : "Posta de Salud Rural El Caracol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-463",
    "display" : "Posta de Salud Rural El Rincón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-442",
    "display" : "Posta de Salud Rural Guarilihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-410",
    "display" : "Posta de Salud Rural Huape",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-449",
    "display" : "Posta de Salud Rural Juan Enrique Mora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-422",
    "display" : "Posta de Salud Rural La Gloria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-425",
    "display" : "Posta de Salud Rural Las Raíces",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-448",
    "display" : "Posta de Salud Rural Liucura Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-434",
    "display" : "Posta de Salud Rural Los Remates",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-446",
    "display" : "Posta de Salud Rural Minas de Leuque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-406",
    "display" : "Posta de Salud Rural Minas del Prado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-423",
    "display" : "Posta de Salud Rural Monte Blanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-414",
    "display" : "Posta de Salud Rural Nebuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-427",
    "display" : "Posta de Salud Rural Nueva Aldea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-436",
    "display" : "Posta de Salud Rural Pedregal de Zapallar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-455",
    "display" : "Consultorio General Rural de Pueblo Seco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-471",
    "display" : "Posta de Salud Rural Puente Ñuble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-460",
    "display" : "Posta de Salud Rural Rahuil",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-439",
    "display" : "Posta de Salud Rural Ranguelmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-409",
    "display" : "Posta de Salud Rural Recinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-416",
    "display" : "Posta de Salud Rural Rivera de Ñuble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-413",
    "display" : "Posta de Salud Rural Rucapequén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-458",
    "display" : "Posta de Salud Rural San Antonio (Yungay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-465",
    "display" : "Posta de Salud Rural San Ignacio Palomares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-437",
    "display" : "Posta de Salud Rural San Vicente (El Carmen)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-401",
    "display" : "Posta de Salud Rural Talquipén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-407",
    "display" : "Posta de Salud Rural Tanilvoro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-461",
    "display" : "Posta de Salud Rural Toquihua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-421",
    "display" : "Posta de Salud Rural Torrecillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-470",
    "display" : "Posta de Salud Rural Trabuncura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-435",
    "display" : "Posta de Salud Rural Trehualemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-445",
    "display" : "Posta de Salud Rural Vegas de Itata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-464",
    "display" : "Posta de Salud Rural Zemita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-103",
    "display" : "Hospital Comunitario de Salud Familiar de Bulnes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-315",
    "display" : "Centro de Salud Familiar Campanario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-324",
    "display" : "Centro de Salud Familiar Los Volcanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-101",
    "display" : "Hospital Clínico Herminda Martín (Chillán)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-307",
    "display" : "Centro de Salud Familiar Cobquecura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-108",
    "display" : "Hospital Comunitario de Salud Familiar Dr. Eduardo Contreras Trabucco de Coelemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-318",
    "display" : "Centro de Salud Familiar Michelle Chandía Alarcón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-107",
    "display" : "Hospital Comunitario de Salud Familiar de El Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-304",
    "display" : "Centro de Salud Familiar Isabel Riquelme",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-314",
    "display" : "Centro de Salud Familiar Dr. David Benavente de Ninhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-316",
    "display" : "Centro de Salud Familiar Ñipas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-310",
    "display" : "Centro de Salud Familiar Pemuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-317",
    "display" : "Centro de Salud Familiar Pinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-305",
    "display" : "Centro de Salud Familiar Portezuelo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-306",
    "display" : "Centro de Salud Familiar Quillón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-322",
    "display" : "Centro de Salud Familiar Quinchamalí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-106",
    "display" : "Hospital Comunitario de Salud Familiar de Quirihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-319",
    "display" : "Centro de Salud Familiar Quiriquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-311",
    "display" : "Centro de Salud Familiar Dr. José Duran Trujillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-102",
    "display" : "Hospital de San Carlos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-309",
    "display" : "Centro de Salud Familiar San Fabián",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-313",
    "display" : "Centro de Salud Familiar Ñiquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-308",
    "display" : "Centro de Salud Familiar San Ignacio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-312",
    "display" : "Centro de Salud Familiar San Nicolás",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-302",
    "display" : "Centro de Salud Familiar San Ramón Nonato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-303",
    "display" : "Centro de Salud Familiar Ultraestación Dr. Raúl San Martín González",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-301",
    "display" : "Centro de Salud Familiar Violeta Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-104",
    "display" : "Hospital Comunitario de Salud Familiar Pedro Morales Campos (Yungay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "18-441",
    "display" : "Posta de Salud Rural Cancha Los Monteros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-435",
    "display" : "Posta de Salud Rural Chacay (Santa Juana)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-404",
    "display" : "Colcura, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-433",
    "display" : "Posta de Salud Rural Colico Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-400",
    "display" : "Posta de Salud Rural Copiulemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-439",
    "display" : "Posta de Salud Rural Granerillos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-432",
    "display" : "Posta de Salud Rural La Generala",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-401",
    "display" : "Posta de Salud Rural Manco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-446",
    "display" : "Posta de Salud Rural Patagual",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-403",
    "display" : "Posta de Salud Rural Puerto Norte Isla Sta. María",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-402",
    "display" : "Posta de Salud Rural Puerto Sur Isla Sta. María",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-437",
    "display" : "Posta de Salud Rural Purgatorio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-431",
    "display" : "Posta de Salud Rural Quilacoya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-445",
    "display" : "Posta de Salud Rural Roa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-430",
    "display" : "Posta de Salud Rural Talcamávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-434",
    "display" : "Posta de Salud Rural Tanahuillín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-436",
    "display" : "Posta de Salud Rural Torre Dorada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-302",
    "display" : "Centro de Salud Familiar Boca Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-315",
    "display" : "Centro del Adolescente de Chiguayante",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-307",
    "display" : "Centro de Salud Familiar Chiguayante",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-103",
    "display" : "Hospital Traumatológico (Concepción)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-100",
    "display" : "Hospital Clínico Regional Dr. Guillermo Grant Benavente (Concepción)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-105",
    "display" : "Hospital San José (Coronel)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-310",
    "display" : "Centro de Salud Familiar Juan Soto Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-108",
    "display" : "Hospital San Agustín de Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-326",
    "display" : "Centro de Salud Familiar Hualqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-314",
    "display" : "Centro de Salud Familiar La Leonera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-312",
    "display" : "Centro de Salud Familiar Lagunillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-318",
    "display" : "Centro de Salud Familiar Lomas Coloradas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-309",
    "display" : "Centro de Salud Familiar Lorenzo Arenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-106",
    "display" : "Hospital de Lota",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-325",
    "display" : "Centro de Salud Familiar Dr. Juan Cartes Arias",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-316",
    "display" : "Centro de Salud Familiar Dr. Sergio Lagos Olave (ex Nº 4 Lota Bajo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-304",
    "display" : "Centro de Salud Familiar OHiggins",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-303",
    "display" : "Centro de Salud Familiar Pedro de Valdivia (Concepción)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-308",
    "display" : "Centro de Salud Familiar San Pedro de La Paz Candelaria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-107",
    "display" : "Hospital Clorinda Avello (Santa Juana)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-317",
    "display" : "Centro de Salud Familiar Santa Sabina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118317"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-306",
    "display" : "Centro de Salud Familiar Tucapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-305",
    "display" : "Centro de Salud Familiar Víctor Manuel Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-609",
    "display" : "Centro de Salud Familiar Villa Nonguén (Organizaciones sin fines de lucro y ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-313",
    "display" : "Centro de Salud Familiar Yobilo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "19-404",
    "display" : "Posta de Salud Rural Coliumo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-402",
    "display" : "Centro de Salud Familiar Dichato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-403",
    "display" : "Posta de Salud Rural Menque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-401",
    "display" : "Posta de Salud Rural Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-400",
    "display" : "Posta de Salud Rural Tumbes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-306",
    "display" : "Centro de Salud Familiar Bellavista",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-301",
    "display" : "Centro de Salud Familiar Hualpencillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-307",
    "display" : "Centro de Salud Familiar Paulina Avendaño Pereda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-308",
    "display" : "Centro de Salud Familiar Los Cerros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-304",
    "display" : "Centro de Salud Familiar Penco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-102",
    "display" : "Hospital Penco - Lirquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-302",
    "display" : "Centro de Salud Familiar San Vicente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-309",
    "display" : "Centro de Salud Familiar Talcahuano Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-100",
    "display" : "Hospital Las Higueras (Talcahuano)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-101",
    "display" : "Hospital de Tomé",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "20-428",
    "display" : "Posta de Salud Rural San Roque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-309",
    "display" : "Centro de Salud Familiar 2 Septiembre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-414",
    "display" : "Posta de Salud Rural Alborada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-444",
    "display" : "Posta de Salud Rural Callaqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-434",
    "display" : "Posta de Salud Rural Campamento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-463",
    "display" : "Posta de Salud Rural Cañicura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-427",
    "display" : "Posta de Salud Rural Carrizal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-464",
    "display" : "Posta de Salud Rural Cauñicú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-402",
    "display" : "Posta de Salud Rural Chacayal Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-467",
    "display" : "Posta de Salud Rural Chacayal Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-456",
    "display" : "Posta de Salud Rural Charrúa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-455",
    "display" : "Posta de Salud Rural Chillancito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-424",
    "display" : "Posta de Salud Rural Choroico (Nacimiento)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-425",
    "display" : "Posta de Salud Rural Coigue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-457",
    "display" : "Posta de Salud Rural Colicheo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-423",
    "display" : "Posta de Salud Rural Culenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-411",
    "display" : "Posta de Salud Rural Dicahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-422",
    "display" : "Posta de Salud Rural Dollinco (Nacimiento)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-416",
    "display" : "Posta de Salud Rural El Cisne",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-403",
    "display" : "Posta de Salud Rural El Durazno ( Los Ángeles)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-443",
    "display" : "Posta de Salud Rural El Huachi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-407",
    "display" : "Posta de Salud Rural El Peral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-451",
    "display" : "Posta de Salud Rural La Aguada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-419",
    "display" : "Posta de Salud Rural La Colonia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-405",
    "display" : "Posta de Salud Rural Llano Blanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-432",
    "display" : "Posta de Salud Rural Loncopangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-447",
    "display" : "Posta de Salud Rural Los Boldos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-404",
    "display" : "Posta de Salud Rural Los Molinos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-406",
    "display" : "Posta de Salud Rural Los Troncos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-449",
    "display" : "Posta de Salud Rural Malla Malla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-450",
    "display" : "Posta de Salud Rural Malla Palmucho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-465",
    "display" : "Posta de Salud Rural Mañihual",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-409",
    "display" : "Posta de Salud Rural Mesamávida - Los Ángeles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-401",
    "display" : "Posta de Salud Rural Millantú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-426",
    "display" : "Posta de Salud Rural Millapoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-438",
    "display" : "Posta de Salud Rural Piñiquihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-441",
    "display" : "Posta de Salud Rural Pitril",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-460",
    "display" : "Posta de Salud Rural Polcura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-421",
    "display" : "Posta de Salud Rural Puente Perales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-437",
    "display" : "Quilaco, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-461",
    "display" : "Posta de Salud Rural Quinel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-448",
    "display" : "Posta de Salud Rural Ralco Lepoy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-466",
    "display" : "Posta de Salud Rural Rapelco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-452",
    "display" : "Posta de Salud Rural Rere",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-429",
    "display" : "Posta de Salud Rural Rihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-454",
    "display" : "Posta de Salud Rural Río Claro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-462",
    "display" : "Posta de Salud Rural Río Pardo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-431",
    "display" : "Posta de Salud Rural Rucalhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-430",
    "display" : "Posta de Salud Rural Rucamanqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-412",
    "display" : "Posta de Salud Rural Salto del Laja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-408",
    "display" : "Posta de Salud Rural San Carlos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-410",
    "display" : "Posta de Salud Rural San Gerardo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-418",
    "display" : "Posta de Salud Rural Santa Adriana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-417",
    "display" : "Posta de Salud Rural Tierras Libres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-435",
    "display" : "Posta de Salud Rural Tinajón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-453",
    "display" : "Posta de Salud Rural Tomeco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-445",
    "display" : "Posta de Salud Rural Trapa Trapa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-459",
    "display" : "Posta de Salud Rural Trupán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-458",
    "display" : "Consultorio General Rural Tucapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-436",
    "display" : "Posta de Salud Rural Turquía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-442",
    "display" : "Posta de Salud Rural Villucura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-468",
    "display" : "Posta de Salud Rural Virquenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-303",
    "display" : "Centro de Salud Familiar Antuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-314",
    "display" : "Centro de Salud Familiar Canteras Villa Mercedes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-301",
    "display" : "Centro de Salud Familiar Nororiente de Los Ángeles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-107",
    "display" : "Hospital Dr. Roberto Muñoz Urrutia de Huépil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-105",
    "display" : "Hospital Comunitario de Laja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-305",
    "display" : "Centro de Salud Familiar Lautaro Cáceres R.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-100",
    "display" : "Centro de Diagnóstico y Tratamiento de Los Ángeles",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-101",
    "display" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-304",
    "display" : "Centro de Salud Familiar Monteaguila",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-102",
    "display" : "Hospital de Mulchén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-103",
    "display" : "Hospital Comunitario y Familiar de Nacimiento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-310",
    "display" : "Centro de Salud Familiar Norte de Los Ángeles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-311",
    "display" : "Centro de Salud Familiar Paillihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-306",
    "display" : "Centro de Salud Familiar Quilleco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-312",
    "display" : "Centro de Salud Familiar Ralco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-308",
    "display" : "Centro de Salud Familiar Dr. Carlos Echeverría Véjar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-106",
    "display" : "Hospital Comunitario de Santa Bárbara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-302",
    "display" : "Centro de Salud Familiar Santa Fe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-307",
    "display" : "Centro de Salud Familiar Yanequén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-313",
    "display" : "Centro de Salud Familiar Yumbel Estación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-104",
    "display" : "Hospital Comunitario de Yumbel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "21-495",
    "display" : "Posta de Salud Rural Agua Tendida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121495"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-480",
    "display" : "Posta de Salud Rural Ailinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121480"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-563",
    "display" : "Posta de Salud Rural Allipén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121563"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-502",
    "display" : "Posta de Salud Rural Alto Boroa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121502"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-571",
    "display" : "Posta de Salud Rural Alto Carén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121571"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-508",
    "display" : "Posta de Salud Rural Alto Yupehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121508"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-569",
    "display" : "Ancahual - San Ramón, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-599",
    "display" : "Posta de Salud Rural Añilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121599"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-575",
    "display" : "Posta de Salud Rural Barros Arana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121575"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-474",
    "display" : "Posta de Salud Rural Blanco Lepín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-500",
    "display" : "Posta de Salud Rural Bochoco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121500"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-541",
    "display" : "Posta de Salud Rural Boroa Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121541"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-456",
    "display" : "Centro de Salud Familiar de Cajón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-540",
    "display" : "Posta de Salud Rural Pocoyan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121540"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-516",
    "display" : "Posta de Salud Rural Catripulli ( Carahue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121516"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-485",
    "display" : "Centro Comunitario de Salud Familiar Cherquenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121485"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-529",
    "display" : "Posta de Salud Rural Cheucán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121529"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-499",
    "display" : "Posta de Salud Rural Chivilcoyan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121499"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-589",
    "display" : "Posta de Salud Rural Chucauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121589"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-488",
    "display" : "Posta de Salud Rural Codinhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121488"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-592",
    "display" : "Posta de Salud Rural Codopille",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121592"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-512",
    "display" : "Posta de Salud Rural Coi Coi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121512"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-468",
    "display" : "Posta de Salud Rural Coihueco (Lautaro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-565",
    "display" : "Posta de Salud Rural Coipué (Freire)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121565"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-460",
    "display" : "Posta de Salud Rural Collimallín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-472",
    "display" : "Posta de Salud Rural Colonia Lautaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-531",
    "display" : "Posta de Salud Rural Comuy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121531"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-463",
    "display" : "Posta de Salud Rural Conoco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-550",
    "display" : "Posta de Salud Rural Copihuelpe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121550"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-477",
    "display" : "Posta de Salud Rural Cuel Ñielol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-572",
    "display" : "Posta de Salud Rural Cumcumllaque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121572"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-527",
    "display" : "Posta de Salud Rural Deume",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121527"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-471",
    "display" : "Posta de Salud Rural Dollinco (Lautaro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-590",
    "display" : "Posta de Salud Rural El Escudo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121590"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-544",
    "display" : "Posta de Salud Rural Pidenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121544"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-584",
    "display" : "Posta de Salud Rural Faja Ricci",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121584"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-482",
    "display" : "Posta de Salud Rural Fortín Ñielol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121482"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-487",
    "display" : "Posta de Salud Rural General López",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121487"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-568",
    "display" : "Posta de Salud Rural Guiñimo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121568"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-574",
    "display" : "Posta de Salud Rural Hualpín",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-496",
    "display" : "Posta de Salud Rural Huamaqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121496"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-528",
    "display" : "Posta de Salud Rural Huapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121528"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-545",
    "display" : "Posta de Salud Rural Huellanto Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121545"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-557",
    "display" : "Huenllanto Oriente, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-497",
    "display" : "Posta de Salud Rural Huentelar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121497"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-518",
    "display" : "Posta de Salud Rural Hueñalihuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121518"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-504",
    "display" : "Posta de Salud Rural Huilío",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121504"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-554",
    "display" : "Huincacara Norte, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-547",
    "display" : "Posta de Salud Rural Huiscapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121547"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-507",
    "display" : "Posta de Salud Rural La Cabaña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121507"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-596",
    "display" : "Posta de Salud Rural La Esperanza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121596"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-548",
    "display" : "Posta de Salud Rural La Paz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121548"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-416",
    "display" : "Posta de Salud Rural La Piedra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-513",
    "display" : "Posta de Salud Rural La Sierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121513"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-457",
    "display" : "Posta de Salud Rural Labranza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-491",
    "display" : "Posta de Salud Rural Las Hortensias",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121491"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-538",
    "display" : "Posta de Salud Rural Las Quemas (Toltén)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121538"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-542",
    "display" : "Centro de Salud Rural Lastarria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121542"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-459",
    "display" : "Posta de Salud Rural Laurel Huacho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-493",
    "display" : "Posta de Salud Rural Leufuche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121493"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-552",
    "display" : "Lican Ray, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-546",
    "display" : "Posta de Salud Rural Licancullín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121546"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-555",
    "display" : "Posta de Salud Rural Liumalla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121555"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-566",
    "display" : "Posta de Salud Rural Lliuco(Freire)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121566"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-519",
    "display" : "Posta de Salud Rural Loncoyamo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121519"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-532",
    "display" : "Posta de Salud Rural Los Galpones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121532"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-511",
    "display" : "Posta de Salud Rural Los Placeres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121511"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-594",
    "display" : "Posta de Salud Rural Santa Rosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121594"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-535",
    "display" : "Posta de Salud Rural Mahuidanche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121535"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-582",
    "display" : "Posta de Salud Rural Maite",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121582"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-580",
    "display" : "Posta de Salud Rural Malalche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121580"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-556",
    "display" : "Posta de Salud Rural Manhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121556"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-498",
    "display" : "Posta de Salud Rural Mañío Ducañán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121498"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-517",
    "display" : "Posta de Salud Rural Matte y Sánchez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121517"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-593",
    "display" : "Posta de Salud Rural Metrenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121593"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-515",
    "display" : "Posta de Salud Rural Miramar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121515"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-551",
    "display" : "Posta de Salud Rural Molco ( Loncoche )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121551"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-470",
    "display" : "Posta de Salud Rural Muco Chureo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-520",
    "display" : "Posta de Salud Rural Nehuentué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121520"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-479",
    "display" : "Posta de Salud Rural Nilpe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121479"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-579",
    "display" : "Posta de Salud Rural Nohualhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121579"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-578",
    "display" : "Posta de Salud Rural Número Tres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121578"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-553",
    "display" : "Posta de Salud Rural Ñancul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121553"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-475",
    "display" : "Posta de Salud Rural Ñereco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-559",
    "display" : "Posta de Salud Rural Paillaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121559"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-561",
    "display" : "Posta de Salud Rural Pangueco (Galvarino)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121561"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-462",
    "display" : "Posta de Salud Rural Pedregoso (Cunco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-524",
    "display" : "Posta de Salud Rural Perquiñán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121524"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-576",
    "display" : "Posta de Salud Rural Pichichelle",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121576"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-526",
    "display" : "Posta de Salud Rural Piedra Alta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121526"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-469",
    "display" : "Posta de Salud Rural Pillanlelbún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-467",
    "display" : "Posta de Salud Rural Pitraco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-490",
    "display" : "Posta de Salud Rural Polul Coicoma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-539",
    "display" : "Posta de Salud Rural Porma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121539"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-505",
    "display" : "Posta de Salud Rural Pto. Domínguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121505"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-521",
    "display" : "Posta de Salud Rural Puaucho(Saavedra)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121521"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-549",
    "display" : "Posta de Salud Rural Pulmahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121549"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-473",
    "display" : "Posta de Salud Rural Pumalal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-597",
    "display" : "Posta de Salud Rural Puralaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121597"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-510",
    "display" : "Posta de Salud Rural Puyangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121510"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-494",
    "display" : "Posta de Salud Rural Quecheregue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121494"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-560",
    "display" : "Posta de Salud Rural Quelhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121560"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-564",
    "display" : "Posta de Salud Rural Quetroco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121564"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-536",
    "display" : "Posta de Salud Rural Queule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121536"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-501",
    "display" : "Posta de Salud Rural Queupue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121501"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-522",
    "display" : "Posta de Salud Rural Quifo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121522"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-465",
    "display" : "Posta de Salud Rural Quillem",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-489",
    "display" : "Posta de Salud Rural Quintrilpe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121489"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-586",
    "display" : "Posta de Salud Rural Quiñenahuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121586"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-543",
    "display" : "Posta de Salud Rural Quitratúe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121543"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-562",
    "display" : "Posta de Salud Rural Radal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121562"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-523",
    "display" : "Posta de Salud Rural Ranco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121523"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-478",
    "display" : "Posta de Salud Rural Rapa - Mañiuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-466",
    "display" : "Posta de Salud Rural Rehuecoyan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-583",
    "display" : "Posta de Salud Rural Reigolil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121583"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-481",
    "display" : "Posta de Salud Rural Repocura - Chacaico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121481"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-458",
    "display" : "Posta de Salud Rural Roble Huacho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-525",
    "display" : "Posta de Salud Rural Romopulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121525"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-484",
    "display" : "Posta de Salud Rural Rucatraro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121484"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-503",
    "display" : "Posta de Salud Rural Rulo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121503"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-486",
    "display" : "Posta de Salud Rural San Patricio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121486"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-567",
    "display" : "Posta de Salud Rural San Ramón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121567"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-483",
    "display" : "Posta de Salud Rural Santa Carolina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-509",
    "display" : "Posta de Salud Rural Santa Celia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-570",
    "display" : "Posta de Salud Rural Santa María Llaima",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121570"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-506",
    "display" : "Posta de Salud Rural Tranapuente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121506"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-461",
    "display" : "Posta de Salud Rural Truf Truf",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-591",
    "display" : "Posta de Salud Rural Vega Larga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121591"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-476",
    "display" : "Posta de Salud Rural Vega Redonda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-537",
    "display" : "Posta de Salud Rural Villa Boldos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121537"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-492",
    "display" : "Posta de Salud Rural Villa García",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121492"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-577",
    "display" : "Posta de Salud Rural Yenehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121577"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-307",
    "display" : "Centro de Salud Familiar Amanecer",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-558",
    "display" : "Posta de Salud Rural Caburga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121558"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-530",
    "display" : "Posta de Salud Rural Calof",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121530"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-115",
    "display" : "Hospital Familiar y Comunitario Carahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121115"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-327",
    "display" : "Centro de Salud Familiar Chol Chol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-113",
    "display" : "Hospital Dr. Eduardo González Galeno (Cunco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121113"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-313",
    "display" : "Consultorio Curarrehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-464",
    "display" : "Posta de Salud Rural El Temo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-304",
    "display" : "Centro de Salud Familiar Freire",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-111",
    "display" : "Hospital de Galvarino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121111"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-119",
    "display" : "Hospital de Gorbea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121119"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-336",
    "display" : "Centro de Salud Familiar Las Colinas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121336"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-110",
    "display" : "Hospital Dr. Abraham Godoy (Lautaro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-120",
    "display" : "Hospital de Loncoche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121120"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-326",
    "display" : "Centro de Salud Familiar Andrés Sandoval Calderón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-201",
    "display" : "Hospital Makewe (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121201"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-311",
    "display" : "Centro de Salud Familiar Melipeuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-657",
    "display" : "Centro de Salud Familiar Metodista (Organizaciones sin fines de lucro y ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121657"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-533",
    "display" : "Posta de Salud Rural Millahuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121533"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-303",
    "display" : "Centro de Salud Familiar Miraflores (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-114",
    "display" : "Hospital Intercultural de Nueva Imperial",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121114"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-308",
    "display" : "Centro de Salud Familiar Padre Las Casas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-323",
    "display" : "Consultorio Perquenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-117",
    "display" : "Hospital de Pitrufquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121117"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-200",
    "display" : "Hospital San Francisco (Pucón) (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121200"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-309",
    "display" : "Centro de Salud Familiar Pueblo Nuevo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-116",
    "display" : "Hospital Dr. Arturo Hillerns Larrañaga (Saavedra)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121116"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-534",
    "display" : "Posta de Salud Rural Puraquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121534"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-337",
    "display" : "Centro de Salud Familiar Quepe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121337"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-573",
    "display" : "Posta de Salud Rural San Pedro de Pucón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121573"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-306",
    "display" : "Centro de Salud Familiar Santa Rosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-109",
    "display" : "Hospital Dr. Hernán Henríquez Aravena (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-312",
    "display" : "Centro de Salud Familiar Teodoro Schmidt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-118",
    "display" : "Hospital de Toltén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121118"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-328",
    "display" : "Centro de Salud Familiar Trovolhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-112",
    "display" : "Hospital de Vilcún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121112"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-305",
    "display" : "Centro de Salud Familiar Villa Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-334",
    "display" : "Centro de Salud Familiar Villarrica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121334"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-121",
    "display" : "Hospital de Villarrica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121121"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "22-442",
    "display" : "Posta de Salud Rural Aguas Negras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-419",
    "display" : "Posta de Salud Rural Alepué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-408",
    "display" : "Posta de Salud Rural Antilhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-443",
    "display" : "Posta de Salud Rural Arquilhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-452",
    "display" : "Posta de Salud Rural Bocatoma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-458",
    "display" : "Posta de Salud Rural Calcurrupe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-436",
    "display" : "Posta de Salud Rural Carimallín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-428",
    "display" : "Posta de Salud Rural Catamutún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-427",
    "display" : "Posta de Salud Rural Cayumapu (Panguipulli)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-438",
    "display" : "Posta de Salud Rural Cayurruca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-405",
    "display" : "Posta de Salud Rural Chaihuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-439",
    "display" : "Posta de Salud Rural Futahuente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-414",
    "display" : "Posta de Salud Rural Chan Chan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-430",
    "display" : "Posta de Salud Rural Choroico (La Unión)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-418",
    "display" : "Posta de Salud Rural Ciruelos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-434",
    "display" : "Posta de Salud Rural Crucero (Río Bueno)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-402",
    "display" : "Posta de Salud Rural Curiñanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-406",
    "display" : "Posta de Salud Rural El Salto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-410",
    "display" : "Posta de Salud Rural Folilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-305",
    "display" : "Centro de Salud Familiar Belarmina Paredes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-446",
    "display" : "Posta de Salud Rural Huapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-401",
    "display" : "Posta de Salud Rural Huellelhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-459",
    "display" : "Posta de Salud Rural Huichaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-421",
    "display" : "Posta de Salud Rural Huitag",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-449",
    "display" : "Posta de Salud Rural Illahuape",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-420",
    "display" : "Posta de Salud Rural Iñipulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-404",
    "display" : "Posta de Salud Rural Isla del Rey",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-407",
    "display" : "Posta de Salud Rural Las Huellas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-425",
    "display" : "Centro Comunitario de Salud Familiar Liquiñe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-433",
    "display" : "Posta de Salud Rural Llancacura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-447",
    "display" : "Posta de Salud Rural Llifén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-444",
    "display" : "Posta de Salud Rural Loncopán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-462",
    "display" : "Posta de Salud Rural Los Esteros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-445",
    "display" : "Posta de Salud Rural Maihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-411",
    "display" : "Posta de Salud Rural Malihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-455",
    "display" : "Posta de Salud Rural Mantilhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-454",
    "display" : "Posta de Salud Rural Mashue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-415",
    "display" : "Posta de Salud Rural Mehuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-413",
    "display" : "Posta de Salud Rural Melefquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-416",
    "display" : "Posta de Salud Rural Mississippi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-451",
    "display" : "Posta de Salud Rural Morrompulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-422",
    "display" : "Posta de Salud Rural Neltume",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-417",
    "display" : "Posta de Salud Rural Pelchuquín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-441",
    "display" : "Posta de Salud Rural Pichirropulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-431",
    "display" : "Posta de Salud Rural Pilpilcahuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-426",
    "display" : "Posta de Salud Rural Pirihueico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-448",
    "display" : "Posta de Salud Rural Pitriuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-460",
    "display" : "Posta de Salud Rural Pocura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-429",
    "display" : "Posta de Salud Rural Puerto Nuevo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-400",
    "display" : "Posta de Salud Rural Punucapa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-440",
    "display" : "Posta de Salud Rural Reumén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-409",
    "display" : "Posta de Salud Rural Riñihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-450",
    "display" : "Centro Comunitario de Salud Familiar Riñinahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-461",
    "display" : "Posta de Salud Rural Rupumeica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-453",
    "display" : "Posta de Salud Rural Santa Elisa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-456",
    "display" : "Posta de Salud Rural Santa Rosa (Paillaco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-432",
    "display" : "Posta de Salud Rural Traiguén ( La Unión)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-437",
    "display" : "Posta de Salud Rural Trapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-435",
    "display" : "Posta de Salud Rural Vivanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-314",
    "display" : "Centro de Salud Familiar Angachilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122314"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-309",
    "display" : "Centro de Salud Familiar Choshuenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-308",
    "display" : "Centro de Salud Familiar Coñaripe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-101",
    "display" : "Hospital de Corral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-300",
    "display" : "Centro de Salud Familiar Externo Valdivia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-302",
    "display" : "Centro de Salud Familiar Dr. Jorge Sabat Gozalo (Ex Gil de Castro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-306",
    "display" : "Centro de Salud Familiar Juan Santa María Bonet",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-310",
    "display" : "Centro de Salud Familiar Dr. Alfredo Gantz Mann",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-104",
    "display" : "Hospital Juan Morey (La Unión)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-103",
    "display" : "Hospital de Lanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-301",
    "display" : "Centro de Salud Familiar Las Ánimas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-102",
    "display" : "Hospital de Los Lagos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-307",
    "display" : "Centro de Salud Familiar Máfil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-311",
    "display" : "Centro de Salud Familiar Malalhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-313",
    "display" : "Centro de Salud Familiar Niebla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122313"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-106",
    "display" : "Hospital de Paillaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-304",
    "display" : "Centro de Salud Familiar Panguipulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-201",
    "display" : "Hospital de Panguipulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122201"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-312",
    "display" : "Consultorio Río Bueno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-105",
    "display" : "Hospital de Río Bueno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-303",
    "display" : "Centro de Salud Familiar San José de la Mariquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-200",
    "display" : "Hospital Santa Elisa de San José de la Mariquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122200"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-100",
    "display" : "Hospital Clínico Regional (Valdivia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "23-431",
    "display" : "Posta de Salud Rural Aleucapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-425",
    "display" : "Posta de Salud Rural Cancura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-423",
    "display" : "Posta de Salud Rural Cascadas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-436",
    "display" : "Posta de Salud Rural Chanco ( San Pablo )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-413",
    "display" : "Posta de Salud Rural Coligual",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-420",
    "display" : "Posta de Salud Rural Collihuinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-416",
    "display" : "Posta de Salud Rural Colonia Ponce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-415",
    "display" : "Posta de Salud Rural Concordia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-418",
    "display" : "Coñico, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-411",
    "display" : "Posta de Salud Rural Corte Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-402",
    "display" : "Posta de Salud Rural Cuinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-437",
    "display" : "Posta de Salud Rural Currimáhuida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-407",
    "display" : "Posta de Salud Rural Desagüe Rupanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-405",
    "display" : "El Encanto, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-414",
    "display" : "Posta de Salud Rural Hueyusca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-434",
    "display" : "Posta de Salud Rural Huilma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-427",
    "display" : "Posta de Salud Rural La Calo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-417",
    "display" : "Posta de Salud Rural La Naranja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-432",
    "display" : "Posta de Salud Rural La Poza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-408",
    "display" : "Posta de Salud Rural Ñadi Pichi-Damas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-426",
    "display" : "Posta de Salud Rural Pellinada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-404",
    "display" : "Posta de Salud Rural Pichi Damas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-424",
    "display" : "Posta de Salud Rural Piedras Negras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-435",
    "display" : "Posta de Salud Rural Pucopio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-430",
    "display" : "Posta de Salud Rural Purrehuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-406",
    "display" : "Posta de Salud Rural Puyehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-409",
    "display" : "Riachuelo, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-422",
    "display" : "Posta de Salud Rural Rupanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-410",
    "display" : "Posta de Salud Rural Tres Esteros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-311",
    "display" : "Centro de Salud Familiar Bahía Mansa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-304",
    "display" : "Centro de Salud Familiar Entre Lagos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-308",
    "display" : "Hogar de Cristo",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-301",
    "display" : "Centro de Salud Familiar Dr. Marcelo Lopetegui Adams",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-100",
    "display" : "Hospital Base San José de Osorno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-302",
    "display" : "Centro de Salud Familiar Ovejería",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-300",
    "display" : "Centro de Salud Familiar Dr. Pedro Jáuregui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-306",
    "display" : "Centro de Salud Familiar Pampa Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-103",
    "display" : "Hospital de Puerto Octay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-307",
    "display" : "Centro de Salud Familiar Purranque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-204",
    "display" : "Hogar Protegido",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-101",
    "display" : "Hospital de Purranque Dr. Juan Hepp Dubiau",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-105",
    "display" : "Hospital Pu Mulen Quilacahuín",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-303",
    "display" : "Centro de Salud Familiar Rahue Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-102",
    "display" : "Hospital de Río Negro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-201",
    "display" : "San Juan de la Costa, Hospital",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-305",
    "display" : "Centro de Salud Familiar San Pablo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "33-498",
    "display" : "Posta de Salud Rural Agoni Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133498"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-451",
    "display" : "Posta de Salud Rural Aguantao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-475",
    "display" : "Posta de Salud Rural Aldachildo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-500",
    "display" : "Posta de Salud Rural Apeche",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133500"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-453",
    "display" : "Posta de Salud Rural Avellanal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-531",
    "display" : "Posta de Salud Rural Ayacara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124531"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-519",
    "display" : "Posta de Salud Rural Buill",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124519"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-516",
    "display" : "Posta de Salud Rural Butachauques o Metahue",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-474",
    "display" : "Posta de Salud Rural Calén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-523",
    "display" : "Posta de Salud Rural Candelaria (Quellón)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133523"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-430",
    "display" : "Posta de Salud Rural Casma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-432",
    "display" : "Posta de Salud Rural Centinela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-533",
    "display" : "Posta de Salud Rural Chana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124533"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-482",
    "display" : "Posta de Salud Rural Chanquín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133482"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-456",
    "display" : "Posta de Salud Rural Chauquear",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-457",
    "display" : "Posta de Salud Rural Chayahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-470",
    "display" : "Posta de Salud Rural Chelín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-518",
    "display" : "Posta de Salud Rural Chulín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124518"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-530",
    "display" : "Posta de Salud Rural Chumeldén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124530"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-411",
    "display" : "Posta de Salud Rural Cochamó",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-429",
    "display" : "Posta de Salud Rural Colegual",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-425",
    "display" : "Posta de Salud Rural Colonia Río Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-524",
    "display" : "Posta de Salud Rural Compu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133524"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-464",
    "display" : "Posta de Salud Rural Cumbre Alta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-466",
    "display" : "Posta de Salud Rural Curahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133466"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-540",
    "display" : "Posta de Salud Rural El Espolón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124540"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-532",
    "display" : "Posta de Salud Rural El Frío o Santa Lucía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124532"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-421",
    "display" : "Posta de Salud Rural Ensenada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-455",
    "display" : "Posta de Salud Rural Huar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-548",
    "display" : "Posta de Salud Rural Hueque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124548"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-481",
    "display" : "Huillinco, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-512",
    "display" : "Posta de Salud Rural Huyar Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133512"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-476",
    "display" : "Posta de Salud Rural Ichuac",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-510",
    "display" : "Posta de Salud Rural Isla Alao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133510"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-511",
    "display" : "Posta de Salud Rural Capilla Antigüa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133511"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-507",
    "display" : "Posta de Salud Rural Isla Quenac",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133507"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-401",
    "display" : "Posta de Salud Rural Lago Chapo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-479",
    "display" : "Lincay, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-427",
    "display" : "Posta de Salud Rural Loncotoro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-549",
    "display" : "Posta de Salud Rural Macal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124549"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-406",
    "display" : "Posta de Salud Rural Maillén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-514",
    "display" : "Posta de Salud Rural Mechuque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133514"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-472",
    "display" : "Posta de Salud Rural Mocopulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-493",
    "display" : "Posta de Salud Rural Morrolobos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133493"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-521",
    "display" : "Posta de Salud Rural Nayahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124521"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-502",
    "display" : "Posta de Salud Rural Nepúe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133502"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-423",
    "display" : "Posta de Salud Rural Nueva Braunau",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-513",
    "display" : "Posta de Salud Rural Palqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133513"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-433",
    "display" : "Posta de Salud Rural Parga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-448",
    "display" : "Posta de Salud Rural Pargua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-428",
    "display" : "Posta de Salud Rural Pellines (Llanquihue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-526",
    "display" : "Posta de Salud Rural Pelu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133526"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-452",
    "display" : "Posta de Salud Rural Peñasmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-458",
    "display" : "Posta de Salud Rural Pergue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-483",
    "display" : "Posta de Salud Rural Petanes Bajos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-424",
    "display" : "Posta de Salud Rural Petrohué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-422",
    "display" : "Posta de Salud Rural Peulla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-547",
    "display" : "Posta de Salud Rural Pid - Pid",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133547"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-529",
    "display" : "Posta de Salud Rural Piedras Blancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133529"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-501",
    "display" : "Posta de Salud Rural Pío - Pío",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133501"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-546",
    "display" : "Posta de Salud Rural Puchaurán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133546"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-534",
    "display" : "Posta de Salud Rural Puerto Ramírez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124534"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-538",
    "display" : "Posta de Salud Rural Pulpito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133538"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-527",
    "display" : "Posta de Salud Rural Punta Liles o Laitec",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133527"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-528",
    "display" : "Posta de Salud Rural Punta Paula o Coldita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133528"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-449",
    "display" : "Posta de Salud Rural Putenio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-467",
    "display" : "Posta de Salud Rural Puyán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133467"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-469",
    "display" : "Posta de Salud Rural Quehui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-473",
    "display" : "Posta de Salud Rural Quetalco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-459",
    "display" : "Posta de Salud Rural Quetrulauquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-497",
    "display" : "Posta de Salud Rural Quicaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133497"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-494",
    "display" : "Posta de Salud Rural Quinterquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133494"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-426",
    "display" : "Posta de Salud Rural Ralún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-484",
    "display" : "Posta de Salud Rural Rauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133484"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-468",
    "display" : "Posta de Salud Rural Rilán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-412",
    "display" : "Posta de Salud Rural Río Puelo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-408",
    "display" : "Posta de Salud Rural Salto Chico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-461",
    "display" : "Posta de Salud Rural San Agustín (Calbuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124461"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-460",
    "display" : "Posta de Salud Rural San Antonio (Calbuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124460"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-525",
    "display" : "Posta de Salud Rural San Juan de Chadmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133525"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-454",
    "display" : "Posta de Salud Rural Tabón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-515",
    "display" : "Posta de Salud Rural Tac",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133515"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-520",
    "display" : "Posta de Salud Rural Talcán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124520"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-496",
    "display" : "Posta de Salud Rural Tenaún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133496"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-480",
    "display" : "Posta de Salud Rural Terao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133480"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-450",
    "display" : "Posta de Salud Rural Texas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-517",
    "display" : "Posta de Salud Rural Voigue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133517"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-471",
    "display" : "Posta de Salud Rural Yutuy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-160",
    "display" : "Hospital de Achao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133160"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-499",
    "display" : "Posta de Salud Rural Alqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133499"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-155",
    "display" : "Hospital de Ancud",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133155"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-310",
    "display" : "Centro de Salud Familiar Antonio Varas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-445",
    "display" : "Posta de Salud Rural Astillero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-417",
    "display" : "Posta de Salud Rural Aulén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-130",
    "display" : "Hospital de Calbuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124130"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-462",
    "display" : "Posta de Salud Rural Cañitas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-442",
    "display" : "Posta de Salud Rural Carelmapu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-150",
    "display" : "Hospital de Castro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-436",
    "display" : "Posta de Salud Rural Cau-Cau",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-542",
    "display" : "Posta de Salud Rural Caulín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133542"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-486",
    "display" : "Posta de Salud Rural Chacao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133486"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-403",
    "display" : "Posta de Salud Rural Chaicas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-135",
    "display" : "Dr. Pedro Jiménez Romero de Chaitén, Hospital",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-537",
    "display" : "Posta de Salud Rural Chope",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124537"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-419",
    "display" : "Posta de Salud Rural Contao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-402",
    "display" : "Posta de Salud Rural Correntoso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-522",
    "display" : "Posta de Salud Rural Curanue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133522"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-477",
    "display" : "Posta de Salud Rural Detif",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-535",
    "display" : "Posta de Salud Rural El Azul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124535"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-438",
    "display" : "Posta de Salud Rural El Mirador",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-545",
    "display" : "Posta de Salud Rural Estaquilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124545"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-120",
    "display" : "Hospital de Fresia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124120"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-115",
    "display" : "Hospital de Frutillar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124115"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-145",
    "display" : "Hospital de Futaleufú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124145"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-490",
    "display" : "Posta de Salud Rural Guabún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-420",
    "display" : "Posta de Salud Rural Hualaihué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-541",
    "display" : "Posta de Salud Rural Huelmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124541"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-508",
    "display" : "Isla Apiao, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-509",
    "display" : "Posta de Salud Rural Isla Cahuach",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-505",
    "display" : "Posta de Salud Rural Isla Llingua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133505"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-506",
    "display" : "Posta de Salud Rural Isla Meulín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133506"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-446",
    "display" : "Posta de Salud Rural La Pasada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-404",
    "display" : "Posta de Salud Rural Lenca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-485",
    "display" : "Posta de Salud Rural Linao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133485"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-441",
    "display" : "Posta de Salud Rural Línea Sin Nombre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-414",
    "display" : "Posta de Salud Rural Llanada Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-110",
    "display" : "Hospital de Llanquihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-463",
    "display" : "Posta de Salud Rural Los Piques",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-489",
    "display" : "Posta de Salud Rural Manao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133489"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-437",
    "display" : "Posta de Salud Rural Mañío",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-125",
    "display" : "Hospital de Maullín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124125"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-443",
    "display" : "Posta de Salud Rural Misquihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-495",
    "display" : "Posta de Salud Rural Montemar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133495"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-488",
    "display" : "Posta de Salud Rural Nal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133488"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-140",
    "display" : "Hospital de Palena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124140"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-410",
    "display" : "Posta de Salud Rural Panitao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-415",
    "display" : "Posta de Salud Rural Paso El Bolsón o Segundo Corral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-416",
    "display" : "Posta de Salud Rural Paso El León",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-180",
    "display" : "Paul Harris, Hogar de Ancianos",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-444",
    "display" : "Posta de Salud Rural Peñol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-544",
    "display" : "Posta de Salud Rural Piedra Azul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124544"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-539",
    "display" : "Posta de Salud Rural Pocoihuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124539"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-435",
    "display" : "Posta de Salud Rural Polizones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-105",
    "display" : "Hospital de Puerto Montt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-491",
    "display" : "Posta de Salud Rural Puntra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133491"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-536",
    "display" : "Posta de Salud Rural Pureo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133536"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-170",
    "display" : "Hospital Comunitario de Queilén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133170"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-165",
    "display" : "Hospital de Quellón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133165"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-447",
    "display" : "Posta de Salud Rural Quenuir",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-487",
    "display" : "Centro Comunitario de Salud Familiar Quetalmahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133487"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-503",
    "display" : "Posta de Salud Rural Quinchao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133503"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-418",
    "display" : "Posta de Salud Rural Rolecha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-407",
    "display" : "Posta de Salud Rural Salto Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-413",
    "display" : "Posta de Salud Rural Sotomó",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-434",
    "display" : "Posta de Salud Rural Tegualda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-409",
    "display" : "Posta de Salud Rural Trapén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-543",
    "display" : "Posta de Salud Rural Valle El Frío",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124543"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-305",
    "display" : "Centro de Salud Familiar Angelmó",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-315",
    "display" : "Centro de Salud Familiar Carmela Carvajal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-375",
    "display" : "Centro de Salud Familiar Dr. René Tapia Salgado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133375"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-325",
    "display" : "Centro de Salud Familiar Pudeto Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-345",
    "display" : "Centro de Salud Familiar Chonchi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133345"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-360",
    "display" : "Centro de Salud Familiar Curaco de Vélez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133360"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-350",
    "display" : "Centro de Salud Familiar Dalcahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-390",
    "display" : "Centro de Salud Familiar Dr. Manuel Ferreira de Ancud",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133390"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-365",
    "display" : "Centro de Salud Familiar Frutillar Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124365"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-330",
    "display" : "Centro de Salud Familiar Los Muermos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-370",
    "display" : "Centro de Salud Familiar Los Volcanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124370"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-335",
    "display" : "Centro de Salud Familia Nº 1 Puerto Varas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124335"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-210",
    "display" : "Hospital San José (Puerto Varas) (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124210"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-355",
    "display" : "Centro de Salud Familiar Puqueldón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133355"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-340",
    "display" : "Centro de Salud Familiar Quemchi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133340"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-380",
    "display" : "Centro de Salud Familiar Río Negro Hornopirén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124380"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-385",
    "display" : "Centro de Salud Familiar San Pablo Mirasol (ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124385"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-320",
    "display" : "Centro de Salud Familiar Techo para todos (ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "25-426",
    "display" : "Posta de Salud Rural El Gato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-407",
    "display" : "Posta de Salud Rural Bahía Murta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-400",
    "display" : "Posta de Salud Rural Balmaceda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-403",
    "display" : "Posta de Salud Rural Caleta Andrade",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-428",
    "display" : "Posta de Salud Rural Caleta Tortel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-413",
    "display" : "Posta de Salud Rural El Blanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-429",
    "display" : "Posta de Salud Rural Isla Toto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-442",
    "display" : "Centro de Salud Familiar La Junta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-405",
    "display" : "Posta de Salud Rural La Tapera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-423",
    "display" : "Posta de Salud Rural Lago Atravesado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-404",
    "display" : "Posta de Salud Rural Lago Verde",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-411",
    "display" : "Posta de Salud Rural Mallín Grande",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-427",
    "display" : "Posta de Salud Rural Melimoyu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-401",
    "display" : "Posta de Salud Rural Melinka",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-416",
    "display" : "Posta de Salud Rural Ñireguao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-402",
    "display" : "Posta de Salud Rural Puerto Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-409",
    "display" : "Posta de Salud Rural Puerto Bertrand",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-417",
    "display" : "Centro Comunitario de Salud Familiar Puerto Chacabuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-410",
    "display" : "Posta de Salud Rural Puerto Guadal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-419",
    "display" : "Posta de Salud Rural Puerto Ibáñez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-408",
    "display" : "Posta de Salud Rural Puerto Sánchez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-424",
    "display" : "Posta de Salud Rural Raúl Marín Balmaceda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-412",
    "display" : "Posta de Salud Rural Río Tranquilo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-414",
    "display" : "Posta de Salud Rural Valle Simpson",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-406",
    "display" : "Posta de Salud Rural Villa Amengual",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-420",
    "display" : "Posta de Salud Rural Cerro Castillo (Río Ibáñez)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-418",
    "display" : "Centro Comunitario de Salud Familiar Villa Mañihuales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-425",
    "display" : "Posta de Salud Rural Villa OHiggins",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-415",
    "display" : "Posta de Salud Rural Villa Ortega",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-421",
    "display" : "Posta de Salud Rural Puyuhuapi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-301",
    "display" : "Consultorio Alejandro Gutiérrez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-102",
    "display" : "Hospital Dr. Leopoldo Ortega R. (Chile Chico)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-103",
    "display" : "Hospital Lord Cochrane",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-100",
    "display" : "Hospital Regional (Coihaique)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-101",
    "display" : "Hospital de Puerto Aisén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-104",
    "display" : "Hospital Dr. Jorge Ibar (Cisnes)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "25-300",
    "display" : "Consultorio Víctor Domingo Silva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "26-414",
    "display" : "Posta de Salud Rural Agua Fresca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-412",
    "display" : "Posta de Salud Rural Cameron",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-400",
    "display" : "Posta de Salud Rural Cerro Castillo(Torres del Paine)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-413",
    "display" : "Posta de Salud Rural Dorotea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-410",
    "display" : "Posta de Salud Rural Puerto Edén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-404",
    "display" : "Posta de Salud Rural Punta Delgada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-401",
    "display" : "Posta de Salud Rural Río Seco",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-402",
    "display" : "Posta de Salud Rural Río Verde",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-403",
    "display" : "Posta de Salud Rural Tehuelches",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-302",
    "display" : "Centro de Salud Familiar 18 Septiembre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-304",
    "display" : "Centro de Salud Familiar Carlos Ibáñez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-301",
    "display" : "Centro de Salud Familiar Dr. Juan Damianovic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-300",
    "display" : "Centro de Salud Familiar Dr. Mateo Bencur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-303",
    "display" : "Centro de Salud Familiar Dr. Thomas Fenton",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-102",
    "display" : "Hospital Dr. Marco Antonio Chamorro ( Porvenir)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-101",
    "display" : "Hospital Dr. Augusto Essmann Burgos ( Natales)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-204",
    "display" : "Hospital Naval (Puerto Williams) (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126204"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-100",
    "display" : "Hospital Clínico de Magallanes Dr. Lautaro Navarro Avaria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "28-421",
    "display" : "Posta de Salud Rural Alto Quilantahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-417",
    "display" : "Posta de Salud Rural Antihuala",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-416",
    "display" : "Posta de Salud Rural Antiquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-422",
    "display" : "Posta de Salud Rural Casa de Piedra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128422"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-415",
    "display" : "Posta de Salud Rural Cayucupil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-405",
    "display" : "Posta de Salud Rural Cerro Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-426",
    "display" : "Centro Comunitario de Salud Familiar Elicura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-418",
    "display" : "Posta de Salud Rural Huentelolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-429",
    "display" : "Posta de Salud Rural Huillinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-410",
    "display" : "Posta de Salud Rural Isla Mocha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-440",
    "display" : "Posta de Salud Rural Las Puentes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-423",
    "display" : "Posta de Salud Rural Llenquehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-444",
    "display" : "Posta de Salud Rural Llico (Arauco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-424",
    "display" : "Posta de Salud Rural Lloncao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-428",
    "display" : "Posta de Salud Rural Los Huapes de Aillahuampi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-427",
    "display" : "Posta de Salud Rural Mahuilque Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-408",
    "display" : "Posta de Salud Rural Pangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-406",
    "display" : "Posta de Salud Rural Pehuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-425",
    "display" : "Posta de Salud Rural Pocuno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-447",
    "display" : "Posta de Salud Rural Primer Agua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-413",
    "display" : "Posta de Salud Rural Punta Lavapié",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-409",
    "display" : "Posta de Salud Rural Quiapo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-419",
    "display" : "Posta de Salud Rural Quidico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-412",
    "display" : "Posta de Salud Rural Ramadillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-445",
    "display" : "Posta de Salud Rural Ranquilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-420",
    "display" : "Posta de Salud Rural Ranquilhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-442",
    "display" : "Posta de Salud Rural San José de Colico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-407",
    "display" : "Posta de Salud Rural Tres Pinos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-411",
    "display" : "Posta de Salud Rural Tubul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-113",
    "display" : "Hospital San Vicente de Arauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128113"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-111",
    "display" : "Hospital Intercultural Kallvu Llanka (Cañete)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128111"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-438",
    "display" : "Centro de Salud Familiar Carampangue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-112",
    "display" : "Hospital de Contulmo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128112"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-109",
    "display" : "Hospital Provincial Dr. Rafael Avaría (Curanilahue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-327",
    "display" : "Centro de Salud Familiar Eleuterio Ramírez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-324",
    "display" : "Centro de Salud Familiar Isabel Jiménez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-414",
    "display" : "Centro de Salud Familiar Laraquete",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-110",
    "display" : "Hospital de Lebu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128110"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-328",
    "display" : "Centro de Salud Familiar Los Álamos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "29-413",
    "display" : "Posta de Salud Rural Amargo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-435",
    "display" : "Posta de Salud Rural California",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-422",
    "display" : "Posta de Salud Rural Capitán Pastene",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-438",
    "display" : "Posta de Salud Rural Chacaico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-415",
    "display" : "Posta de Salud Rural Chequenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-403",
    "display" : "Posta de Salud Rural Colonia Manuel Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129403"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-448",
    "display" : "Posta de Salud Rural Contraco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-405",
    "display" : "Posta de Salud Rural Coyancahuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-404",
    "display" : "Posta de Salud Rural Cuartel Quemado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129404"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-434",
    "display" : "Posta de Salud Rural Cullinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-424",
    "display" : "Posta de Salud Rural Curilebu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129424"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-586",
    "display" : "Posta de Salud Rural Didaico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129586"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-406",
    "display" : "Posta de Salud Rural El Lingue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-587",
    "display" : "Posta de Salud Rural Encinar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129587"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-437",
    "display" : "Posta de Salud Rural Huitranlebu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129437"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-451",
    "display" : "Posta de Salud Rural Icalma",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129451"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-412",
    "display" : "Posta de Salud Rural La Batalla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-427",
    "display" : "Posta de Salud Rural La Herradura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129427"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-443",
    "display" : "Posta de Salud Rural La Tepa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-452",
    "display" : "Posta de Salud Rural Liucura (Lonquimay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129452"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-449",
    "display" : "Posta de Salud Rural Lolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-428",
    "display" : "Posta de Salud Rural Loncoyán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-410",
    "display" : "Posta de Salud Rural Maica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-402",
    "display" : "Maintenrehue, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-441",
    "display" : "Posta de Salud Rural Malalcahuello",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-411",
    "display" : "Posta de Salud Rural Mininco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-414",
    "display" : "Posta de Salud Rural Niblinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-432",
    "display" : "Centro Comunitario de Salud Familiar Pailahueque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129432"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-454",
    "display" : "Posta de Salud Rural Pichipehuenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-423",
    "display" : "Posta de Salud Rural Pichipellahuén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129423"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-585",
    "display" : "Posta de Salud Rural Pivadenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129585"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-430",
    "display" : "Posta de Salud Rural Púa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129430"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-418",
    "display" : "Posta de Salud Rural Quechereguas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-421",
    "display" : "Posta de Salud Rural Quilquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129421"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-431",
    "display" : "Posta de Salud Rural Quino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-445",
    "display" : "Posta de Salud Rural Radalco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-446",
    "display" : "Posta de Salud Rural Rariruca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-436",
    "display" : "Posta de Salud Rural Reducción Pailahueque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129436"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-442",
    "display" : "Posta de Salud Rural Río Blanco (Curacautín)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-433",
    "display" : "Posta de Salud Rural Rosario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-444",
    "display" : "Posta de Salud Rural Santa Ana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-588",
    "display" : "Posta de Salud Rural Santa Julia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129588"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-429",
    "display" : "Posta de Salud Rural Selva Oscura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129429"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-450",
    "display" : "Posta de Salud Rural Sierra Nevada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-440",
    "display" : "Posta de Salud Rural Temocuicui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-420",
    "display" : "Posta de Salud Rural Temulemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-409",
    "display" : "Posta de Salud Rural Tijeral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129409"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-439",
    "display" : "Posta de Salud Rural Tricauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-408",
    "display" : "Posta de Salud Rural Trintre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129408"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-455",
    "display" : "Posta de Salud Rural Troyo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-400",
    "display" : "Posta de Salud Rural Vegas Blancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-303",
    "display" : "Centro de Salud Familiar Alemania de Angol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-100",
    "display" : "Hospital Dr. Mauricio Heyermann (Angol)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-103",
    "display" : "Hospital de Collipulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-107",
    "display" : "Hospital Dr. Oscar Hernández E.(Curacautín)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-302",
    "display" : "Consultorio Ercilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129302"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-301",
    "display" : "Centro de Salud Familiar Huequén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-108",
    "display" : "Hospital de Lonquimay",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-102",
    "display" : "Consultorio Los Sauces",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-105",
    "display" : "Consultorio Lumaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-101",
    "display" : "Hospital de Purén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-300",
    "display" : "Centro de Salud Familiar Renaico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129300"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-104",
    "display" : "Hospital Dr. Dino Stagno M.(Traiguén)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-318",
    "display" : "Centro de Salud Familiar Victoria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129318"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-106",
    "display" : "Hospital San José (Victoria)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "28-311",
    "display" : "Centro de Salud Familiar Lebu Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "13-390",
    "display" : "Centro de Salud Familiar Dr. Héctor García",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113390"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-110",
    "display" : "Barros Luco, CDT",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "23-433",
    "display" : "Puaucho, Posta (SSO)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "01-607",
    "display" : "COSAM Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-608",
    "display" : "ESSMA Sur de Arica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101608"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "02-600",
    "display" : "COSAM Dr. Jorge Seguel Cáceres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-601",
    "display" : "COSAM Salvador Allende",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-602",
    "display" : "COSAM Enrique París",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "10-622",
    "display" : "COSAM Pudahuel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110622"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-620",
    "display" : "COSAM Quinta Normal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110620"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-621",
    "display" : "COSAM Lo Prado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110621"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-619",
    "display" : "COSAM Cerro Navia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110619"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-624",
    "display" : "COSAM Peñaflor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110624"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-623",
    "display" : "COSAM Talagante",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110623"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-625",
    "display" : "COSAM Melipilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110625"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-606",
    "display" : "COSAM Estación Central",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111606"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-607",
    "display" : "COSAM Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-608",
    "display" : "COSAM Cerrillos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111608"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "12-606",
    "display" : "COSAM La Reina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112606"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-607",
    "display" : "COSAM Macul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-608",
    "display" : "COSAM Ñuñoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112608"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "14-606",
    "display" : "COSAM La Bandera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114606"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-607",
    "display" : "COSAM La Rinconada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-608",
    "display" : "COSAM La Granja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114608"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-609",
    "display" : "COSAM La Pintana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-610",
    "display" : "COSAM La Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114610"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-611",
    "display" : "COSAM Puente Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114611"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "21-338",
    "display" : "COSAM de Temuco",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "17-328",
    "display" : "Centro de Salud Familiar Dr. Federico Puga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "14-323",
    "display" : "Centro de Salud Familiar Madre Teresa de Calcuta (Organizaciones sin fines de lucro y ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "26-606",
    "display" : "COSAM Punta Arenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126606"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "16-SSS",
    "display" : "San Pedro, Posta",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-376",
    "display" : "Centro de Salud Familiar Matta Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111376"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "15-476",
    "display" : "Posta de Salud Rural San Roberto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-477",
    "display" : "Posta de Salud Rural San José de Marchigue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "28-446",
    "display" : "Posta de Salud Rural Pangueco (Cañete)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128446"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "11-378",
    "display" : "Centro de Salud Familiar Dr. Iván Insunza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111378"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "13-332",
    "display" : "Centro de Salud Familiar Juan Pablo II ( San Bernardo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113332"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-331",
    "display" : "Centro de Salud Familiar La Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "10-102",
    "display" : "San Juan de Dios, CDT",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-379",
    "display" : "Centro de Salud Familiar Dr. Francisco Boris Soler",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110379"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "09-318",
    "display" : "Los Libertadores, Consultorio",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-840",
    "display" : "Dr. Yazigi (con SAPU)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "20-420",
    "display" : "Posta de Salud Rural Santa Elena (Laja)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120420"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "14-324",
    "display" : "Centro de Salud Familiar Santa Amalia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "06-336",
    "display" : "Centro de Salud Familiar Diputado Manuel Bustos Huerta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106336"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "14-325",
    "display" : "Centro de Salud Familiar Granja Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "07-350",
    "display" : "Centro de Referencia Odontológico Simón Bolívar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "24-395",
    "display" : "Centro de Salud Familiar Alerce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124395"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "21-339",
    "display" : "Centro de Salud Intercultural Boroa Filulawen (D)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121339"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "11-375",
    "display" : "Consultorio El Trébol",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "10-353",
    "display" : "Centro de Salud Familiar Cardenal Raúl Silva Henríquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110353"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "24-551",
    "display" : "Posta de Salud Rural Machil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124551"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-552",
    "display" : "Posta de Salud Rural Queullín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124552"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "29-407",
    "display" : "Posta de Salud Rural San Ramón de Los Sauces",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "24-554",
    "display" : "Posta de Salud Rural Huayún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124554"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "05-411",
    "display" : "Posta de Salud Rural Las Breas (Río Hurtado)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105411"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "14-101",
    "display" : "Complejo Hospitalario Dr. Sótero del Río (Santiago, Puente Alto)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "11-377",
    "display" : "Centro de Salud(municial) El abrazo de Maipú",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "24-440",
    "display" : "Posta de Salud Rural Las Cruces ( Fresia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "05-471",
    "display" : "Posta de Salud Rural Peralillo Vicuña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-508",
    "display" : "Posta de Salud Rural El Parral de Quiles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105508"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "06-418",
    "display" : "Posta de Salud Rural Cuncumén (San Antonio)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "07-329",
    "display" : "Centro de Salud Familiar Chincolco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-425",
    "display" : "Posta de Salud Rural Horcón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-4340000",
    "display" : "Posta de Salud Rural Loncura",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "09-315",
    "display" : "Centro de Salud Familiar Manuel Bustos Huerta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "15-350",
    "display" : "PRAIS, Consultorio (Exclusivo SIGGES)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-478",
    "display" : "Posta de Salud Rural Lo Moscoso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "13-822",
    "display" : "SAPU-Santa Teresa de Los Andes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113822"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-807aa",
    "display" : "SAPU-Padre Esteban Gumucio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-802",
    "display" : "SAR San Miguel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-826",
    "display" : "SAPU-Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113826"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-812",
    "display" : "SAPU-Dr. Carlos Lorca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113812"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-814",
    "display" : "SAPU-Cóndores de Chile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113814"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-823",
    "display" : "SAR Haydee López",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113823"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-803",
    "display" : "SAR Dr. Amador Neghme R.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-809",
    "display" : "SAPU-Julio Acuña Pinzón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-820",
    "display" : "SAPU-Dra. Mariela Salgado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113820"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-813",
    "display" : "SAPU-Raúl Cuevas (Ex-San Bernardo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113813"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-815",
    "display" : "SAPU-Confraternidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113815"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-830",
    "display" : "SAPU-Raúl Brañes F.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113830"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-818",
    "display" : "SAPU-Paine",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113818"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "12-806",
    "display" : "SAPU Aníbal Ariztía",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-807",
    "display" : "SAPU-Lo Barnechea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-810",
    "display" : "SAPU Rosita Renard",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-813",
    "display" : "SAPU Santa Julia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112813"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-814",
    "display" : "SAPU La Faena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112814"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-815",
    "display" : "SAPU San Luis",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112815"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-816",
    "display" : "SAR Carol Urzúa Ibáñez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112816"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-818",
    "display" : "SAPU Lo Hermida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112818"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "14-801",
    "display" : "SAPU-Dr. Alejandro del Río",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-804",
    "display" : "SAPU-Villa OHiggins",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-805",
    "display" : "SAPU-Los Quillayes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-806",
    "display" : "SAPU-La Granja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-807",
    "display" : "SAPU-La Bandera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-808",
    "display" : "SAPU-San Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-811",
    "display" : "SAPU-Santiago de Nueva Extremadura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-812",
    "display" : "SAPU-San Gerónimo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114812"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-814",
    "display" : "SAPU-San Ramón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114814"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-820",
    "display" : "SAPU-Bernardo Leighton",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114820"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-821",
    "display" : "SAPU-Cardenal Silva Henríquez de Puente Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114821"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-801",
    "display" : "SAPU-Eduardo de Geyter",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-802",
    "display" : "SAPU-Abel Zapata",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-803",
    "display" : "SAR María Latife",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-801",
    "display" : "SAR Aguas Negras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-805",
    "display" : "SAPU-José Dionisio Astaburuaga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-807",
    "display" : "SAPU-Julio Contardo Urzúa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-809",
    "display" : "SAR San Juan de Dios de Linares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-811",
    "display" : "SAR Parral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-813",
    "display" : "SAR San Clemente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116813"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-820",
    "display" : "SAPU-Amanda Benavente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116820"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-831",
    "display" : "SAPU-Carlos Trupp",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116831"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "17-824",
    "display" : "SAPU-Los Volcanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117824"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-803",
    "display" : "SAPU-Ultraestación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-811",
    "display" : "SAPU-José Durán Trujillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-828",
    "display" : "SAPU-Dr. Federico Puga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117828"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "18-806",
    "display" : "SAR Tucapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-807",
    "display" : "SAPU Dental Chiguayante",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "14-326",
    "display" : "Centro de Salud Familiar Karol Wojtyla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "18-808",
    "display" : "SAPU Dental San Pedro de La Paz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-809",
    "display" : "SAPU-Lorenzo Arenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-812",
    "display" : "SAPU-Lagunillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118812"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-817",
    "display" : "SAPU-Santa Sabina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118817"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "19-801",
    "display" : "SAR Hualpencillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-807",
    "display" : "SAPU-Alcalde Leocán Portus",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-808",
    "display" : "SAPU-Los Cerros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "20-805",
    "display" : "SAR Cabrero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-811",
    "display" : "SAPU Paillihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-815",
    "display" : "SAR Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120815"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "29-803",
    "display" : "SAR Alemania",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "21-803",
    "display" : "SAR Miraflores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-806",
    "display" : "SAPU-Santa Rosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-808",
    "display" : "SAPU-Padre Las Casas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "22-801",
    "display" : "SAPU-Las Ánimas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-802",
    "display" : "SAPU-Gil de Castro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-810",
    "display" : "SAR La Unión",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-811",
    "display" : "SAPU-Malalhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-812",
    "display" : "SAPU-Río Bueno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122812"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-814",
    "display" : "SAPU-Angachilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122814"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "23-800",
    "display" : "SAPU Dr. Pedro Jáuregui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "24-805",
    "display" : "SAPU Angelmó",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-810",
    "display" : "SAR Puerto Varas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-881",
    "display" : "SAPU Padre Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124881"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-895",
    "display" : "SAR Alerce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124895"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "26-801",
    "display" : "SAPU-Dr. Juan Damianovic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "12-820",
    "display" : "SAPU-Centro de Urgencia Ñuñoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112820"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "06-407",
    "display" : "Posta de Salud Rural Bucalemu (Santo Domingo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "17-329",
    "display" : "Centro de Salud Familiar Teresa Baldechi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "10-626",
    "display" : "COSAM Renca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110626"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "09-801",
    "display" : "SAR Recoleta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-802",
    "display" : "SAPU-Lucas Sierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-805",
    "display" : "SAR La Pincoya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-809",
    "display" : "SAR Conchalí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-810",
    "display" : "SAR Colina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-811",
    "display" : "SAPU-José Bauzá Frau",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-813",
    "display" : "SAPU-Nº 2 Irene Frei de Cid",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109813"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-815",
    "display" : "SAPU Nº 1 Rodrigo Rojas Denegri",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109815"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "12-609",
    "display" : "COSAM Las Condes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-610",
    "display" : "COSAM Peñalolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112610"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "05-490",
    "display" : "Posta de Salud Rural El Durazno(Combarbalá)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-700",
    "display" : "Centro Comunitario de Salud Familiar Villa el Indio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-705",
    "display" : "Centro Comunitario de Salud Familiar El Alba",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-722",
    "display" : "Centro Comunitario de Salud Familiar San José de la Dehesa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105722"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-801",
    "display" : "SAPU-Las Compañías",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-802",
    "display" : "SAPU-Pedro Aguirre Cerda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-804",
    "display" : "SAPU-Santa Cecilia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-805",
    "display" : "SAR Tierras Blancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-809",
    "display" : "SAPU-Canela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-817",
    "display" : "SAPU-Jorge Jordán Domic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105817"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-819",
    "display" : "SAR Raúl Silva Henríquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105819"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "03-311",
    "display" : "Centro de Salud Familiar San Pedro Atacama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-704",
    "display" : "Centro Comunitario de Salud Familiar Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-707",
    "display" : "Centro Comunitario de Salud Familiar Alemania",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103707"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-800",
    "display" : "SAPU Norte de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-801",
    "display" : "SAPU Antonio Rendic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-802",
    "display" : "SAPU Corvallis",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-804",
    "display" : "SAPU Juan Pablo II de Antofagasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-806",
    "display" : "SAPU Norponiente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-807",
    "display" : "SAPU SUR",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "04-904",
    "display" : "SAR Rosario Corvalán-Caldera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200103"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-901",
    "display" : "SAPU Dr. Bernardo Mellibovsky",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200100"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "01-702",
    "display" : "Centro Comunitario de Salud Familiar Dr Miguel Massa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-703",
    "display" : "Centro Comunitario de Salud Familiar Dr. René García Valenzuela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-802",
    "display" : "SAPU Marco Antonio Carvajal Moreno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200094"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "02-801",
    "display" : "SAPU Cirujano Videla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-803",
    "display" : "SAR Pozo Almonte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-806",
    "display" : "SAR Sur de Iquique",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "10-470",
    "display" : "Posta de Salud Rural Las Mercedes ( María Pinto )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-704",
    "display" : "Centro Comunitario de Salud Familiar Futramapu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-780",
    "display" : "Centro Comunitario de Salud Familiar Europa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111780"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-800",
    "display" : "SAPU Consultorio Nº1",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-804",
    "display" : "SAPU Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-805",
    "display" : "SAPU Dr. Norman Voulliéme",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-806",
    "display" : "SAPU San José de Chuchunco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-809",
    "display" : "SAPU-Dra. Ana María Juricic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "07-712",
    "display" : "Centro Comunitario de Salud Familiar Cardenal Raúl Silva Henríquez Cerro Macaya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-721",
    "display" : "Centro Comunitario de Salud Familiar Patricia Guerra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107721"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-800",
    "display" : "SAPU-Nueva Aurora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-802",
    "display" : "SAPU-Miraflores (Viña del Mar)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-805",
    "display" : "SAPU-Concón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-808",
    "display" : "SAPU-El Belloto Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-815",
    "display" : "SAPU-Ventanas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107815"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-821",
    "display" : "SAPU-Artificio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107821"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-828",
    "display" : "SAPU-Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107828"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "08-810",
    "display" : "SAPU-Curimón",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "09-709",
    "display" : "Centro Comunitario de Salud Familiar Dr. José Symón Ojeda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-712",
    "display" : "Centro Comunitario de Salud Familiar Batuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-716",
    "display" : "Centro Comunitario de Salud Familiar Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109716"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "06-711",
    "display" : "Centro Comunitario de Salud Familiar Porvenir Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106711"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-736",
    "display" : "Centro Comunitario de Salud Familiar Cerro Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106736"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-800",
    "display" : "SAPU Placeres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-811",
    "display" : "SAPU Quebrada Verde",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-826",
    "display" : "SAPU Cartagena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106826"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-827",
    "display" : "SAPU Algarrobo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106827"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-828",
    "display" : "SAPU El Quisco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200695"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-829",
    "display" : "SAR Nestor Fernández Thomas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106829"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "10-390",
    "display" : "Centro de Salud Familiar Dr. Alberto Allende Jones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110390"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-477",
    "display" : "Centro Comunitario de Salud Familiar María Salas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-387",
    "display" : "Centro de Salud Familiar San Pedro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110387"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-720",
    "display" : "Centro Comunitario de Salud Familiar Catamarca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110720"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-725",
    "display" : "Centro Comunitario de Salud Familiar Antumalal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110725"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-735",
    "display" : "Centro Comunitario de Salud Familiar Los Lagos (Unidad Vecinal Nº 33)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110735"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-750",
    "display" : "Centro Comunitario de Salud Familiar Concejal Guillermo Flores O.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110750"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-752",
    "display" : "Centro Comunitario de Salud Familiar Padre Félix Gutiérrez Donoso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110752"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-778",
    "display" : "Centro Comunitario de Salud Familiar Padre Demetrio Bravo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110778"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-781",
    "display" : "Centro Comunitario de Salud Familiar Obispo Pablo Lizama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110781"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-922",
    "display" : "SAPU-Santa Anita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200140"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-908",
    "display" : "SAPU Garín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200126"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-835",
    "display" : "SAPU-Cerro Navia",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-850",
    "display" : "SAPU-Pudahuel Estrella",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-921",
    "display" : "SAPU-Pudahuel Poniente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200139"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-906a",
    "display" : "SAPU-Dr. Gustavo Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200124"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-902",
    "display" : "SAPU Dr. Arturo Albertz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200120"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-860",
    "display" : "SAR Renca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110860"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-867",
    "display" : "SAPU-Santa Rosa de Chena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110867"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-917",
    "display" : "SAPU Dr. Edelberto Elgueta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200135"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "14-706",
    "display" : "Centro Comunitario de Salud Familiar Millalemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114706"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-714",
    "display" : "Centro Comunitario de Salud Familiar Modelo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114714"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-701",
    "display" : "Centro Comunitario de Salud Familiar Dr. Eduardo de Geyter",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-717",
    "display" : "Centro Comunitario de Salud Familiar Consultorio Chacabuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115717"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-823",
    "display" : "SAPU-Oriente de San Fernando",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115823"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-418",
    "display" : "Posta de Salud Rural Cerrillos (Rengo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115418"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "17-431",
    "display" : "Posta de Salud Rural Gral. Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117431"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-433",
    "display" : "Posta de Salud Rural El Sauce (Ninhue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117433"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-438",
    "display" : "Posta de Salud Rural Huemul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "16-338",
    "display" : "Centro de Salud Familiar Los Niches",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116338"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-339",
    "display" : "Consultorio Los Olivos",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "13-713",
    "display" : "Centro Comunitario de Salud Familiar Ribera del Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113713"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-722",
    "display" : "Centro Comunitario de Salud Familiar Juan Aravena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113722"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-790",
    "display" : "Centro Comunitario de Salud Familiar Dr. Héctor García",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113790"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-810",
    "display" : "SAPU Dental Valledor Tres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "16-441",
    "display" : "Posta de Salud Rural Duao de Maule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-473",
    "display" : "Posta de Salud Rural Palmilla (Linares)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-513",
    "display" : "Posta de Salud Rural San Javier",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-521",
    "display" : "Posta de Salud Rural Las Lomas (Curepto)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116521"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-525",
    "display" : "Posta de Salud Rural Tres Esquinas (Molina)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116525"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-541",
    "display" : "Posta de Salud Rural El Manzano (Pelarco )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116541"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-558",
    "display" : "Posta de Salud Rural Lagunillas (Chanco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116558"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-564",
    "display" : "Posta de Salud Rural Villa Baviera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116564"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-600",
    "display" : "PRAIS-Dirección Servicio de Salud",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-703",
    "display" : "Centro Comunitario de Salud Familiar Prosperidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-705",
    "display" : "Centro Comunitario de Salud Familia Brilla el Sol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-709",
    "display" : "Centro Comunitario de Salud Familiar Luis Navarrete",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-711",
    "display" : "Centro Comunitario de Salud Familiar Los Olivos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116711"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-713",
    "display" : "Centro Comunitario de Salud Familiar Chile Nuevo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116713"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-729",
    "display" : "Centro Comunitario de Salud Familiar Población Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-780",
    "display" : "Centro Comunitario de Salud Familiar Aurora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116780"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "13-395",
    "display" : "Centro de Imagenología Mamaria Metropolitano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113395"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-703",
    "display" : "CECOSF Dr. Miguel Enríquez Espinosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "12-707",
    "display" : "Centro Comunitario de Salud Familiar Cerro 18",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112707"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-716",
    "display" : "Centro Comunitario de Salud Familiar Esperanza Andina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112716"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "20-446",
    "display" : "Posta de Salud Rural San Lorenzo.",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "17-325",
    "display" : "Centro de Salud Familiar Luis Montecinos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-326",
    "display" : "Centro de Salud Familiar Santa Clara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-327",
    "display" : "Centro de Salud Familiar Treguaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-419",
    "display" : "Posta de Salud Rural Ñiquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-426",
    "display" : "Centro Comunitario de Salud Familiar Tres Esquinas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "22-316",
    "display" : "Centro de Salud Familiar Los Lagos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "20-413",
    "display" : "Posta de Salud Rural Los Robles (Los Ángeles)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-415",
    "display" : "Posta de Salud Rural Los Canelos (Antuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "23-207",
    "display" : "Centro de Rehabilitación de Minusválidos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123207"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-412",
    "display" : "Posta de Salud Rural Crucero ( Purranque)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123412"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "20-469",
    "display" : "Posta de Salud Rural Los Junquillos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-470",
    "display" : "Posta de Salud Rural Alhuelemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-710",
    "display" : "Centro Comunitario de Salud Familiar Los Pioneros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120710"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-711",
    "display" : "Centro Comunitario de Salud Familiar Villa Los Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120711"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-780",
    "display" : "Centro Comunitario de Salud Familiar Los Carrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120780"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-781",
    "display" : "Centro Comunitario de Salud Familiar Las Azaleas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120781"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "17-469",
    "display" : "Posta de Salud Rural Ciruelito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117469"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-701",
    "display" : "Centro Comunitario de Salud Familiar Padre Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-702",
    "display" : "Centro Comunitario de Salud Familiar El Roble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-729",
    "display" : "Centro Comunitario de Salud Familiar Valle Hondo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "18-708",
    "display" : "Centro Comunitario de Salud Familiar Boca Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118708"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-712",
    "display" : "Centro Comunitario de Salud Familiar Lagunillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "19-701",
    "display" : "Centro Comunitario de Salud Familiar España",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-704",
    "display" : "Centro Comunitario de Salud Familiar Los Forjadores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "21-581",
    "display" : "Posta de Salud Rural Catripulli ( Curarrehue )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121581"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-588",
    "display" : "Posta de Salud Rural Molco (Nueva Imperial )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121588"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-780",
    "display" : "Centro Comunitario de Salud Familiar Villa el Salar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121780"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-781",
    "display" : "Centro Comunitario de Salud Familiar 21 de Mayo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121781"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-782",
    "display" : "Centro Comunitario de Salud Familiar Arquenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121782"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-783",
    "display" : "Centro Comunitario de Salud Familiar Todos los Santos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121783"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-419",
    "display" : "Posta de Salud Rural San Pedro de Purranque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-428",
    "display" : "Posta de Salud Rural Coihueco (Puerto Octay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123428"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "24-251",
    "display" : "Hospital Santa Teresita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124251"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "25-701",
    "display" : "Centro Comunitario de Salud Familiar Ribera Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "26-704",
    "display" : "Hospital Comunitario Cristina Calderón de Puerto Williams",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-800",
    "display" : "SAPU-Dr. Mateo Bencur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "24-405",
    "display" : "Posta de Salud Rural Las Quemas (Puerto Montt)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124405"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "21-341",
    "display" : "Centro de Salud Familiar Nueva Imperial",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121341"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "24-439",
    "display" : "Posta de Salud Rural Traiguén (Fresia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124439"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-465",
    "display" : "Posta de Salud Rural Quillagua (Los Muermos)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-478",
    "display" : "Posta de Salud Rural Liucura (Puqueldón)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-492",
    "display" : "Posta de Salud Rural Lliuco (Quemchi)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133492"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-504",
    "display" : "Posta de Salud Rural Isla Lin-Lin",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133504"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-550",
    "display" : "Posta de Salud Rural Casa de Pesca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124550"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-553",
    "display" : "Posta de Salud Rural San Ramón (Calbuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124553"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-705",
    "display" : "Centro Comunitario de Salud Familiar Anahuac",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-710",
    "display" : "Centro Comunitario de Salud Familiar Licarayen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124710"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-775",
    "display" : "Centro Comunitario de Salud Familiar Llau Llao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133775"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-806",
    "display" : "SAPU Antonio Varas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "22-457",
    "display" : "Posta de Salud Rural Santa Filomena (Paillaco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122457"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-700",
    "display" : "Centro Comunitario de Salud Familiar Barrios Bajos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-701",
    "display" : "Centro Comunitario de Salud Familiar Consultorio Las Ánimas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-702",
    "display" : "Centro Comunitario de Salud Familiar Gil de Castro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-714",
    "display" : "Centro Comunitario de Salud Familiar Cons. Angachilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122714"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "21-514",
    "display" : "Posta de Salud Rural El Manzano (Carahue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121514"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "28-443",
    "display" : "Posta de Salud Rural Santa Rosa (Lebu)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128443"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-448",
    "display" : "Posta de Salud Rural Loncotripai",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128448"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-728",
    "display" : "Centro Comunitario de Salud Familiar Los Álamos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128728"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "29-401",
    "display" : "Posta de Salud Rural Coyanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129401"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-416",
    "display" : "Posta de Salud Rural Aniñir",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-417",
    "display" : "Posta de Salud Rural Molco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129417"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-419",
    "display" : "Posta de Salud Rural Santa Rosa (Los Sauces )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129419"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-425",
    "display" : "Posta de Salud Rural Manzanar ( Lumaco )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129425"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-426",
    "display" : "Posta de Salud Rural Chanco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129426"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-447",
    "display" : "Posta de Salud Rural Manzanar ( Curacautín )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129447"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-453",
    "display" : "Posta de Salud Rural Pedregoso (Lonquimay)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129453"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-703",
    "display" : "Centro Comunitario de Salud Familiar El Retiro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-718",
    "display" : "Centro Comunitario de Salud Familiar Cons. Victoria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129718"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "02-705",
    "display" : "Centro Comunitario de Salud Familiar El Boro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-805",
    "display" : "SAPU-Pedro Pulgar Melgarejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-807",
    "display" : "SAPU El Boro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "06-150",
    "display" : "Centro de Sangre y Tejidos IV y V Región",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "16-823",
    "display" : "SAPU-Oscar Bonilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116823"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "20-471",
    "display" : "Posta de Salud Rural Butalelbum",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "14-327",
    "display" : "Centro de Salud Familiar Juan Pablo II Red de Salud UC CHRISTUS",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "17-802",
    "display" : "SAPU-San Ramón de Nonato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "21-342",
    "display" : "Centro de Salud Familiar Pulmahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121342"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "10-916",
    "display" : "SAPU-Dr.Adalberto Steeger",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200134"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "12-611",
    "display" : "COSAM Provisam",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112611"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "10-904",
    "display" : "SAPU- Dr. Fernando Monckeberg",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200122"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-918",
    "display" : "SAPU- El Monte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200136"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "19-303",
    "display" : "Centro de Salud Familiar Alcalde Leocán Portus",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-305",
    "display" : "Centro de Salud Familiar Dr. Alberto Reyes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "09-320",
    "display" : "Centro de Salud Familiar Huertos Familiares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "12-319",
    "display" : "Centro de Salud Familiar Padre Alberto Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "14-328",
    "display" : "Centro de Salud Familiar Poetisa Gabriela Mistral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "13-396",
    "display" : "Centro de Salud Familiar Pueblo Lo Espejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113396"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "02-307",
    "display" : "Centro de Salud Familiar Dr. Héctor Reyno Gutiérrez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "15-324",
    "display" : "Centro de Salud Familiar N° 6 Ignacio Caroca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-800",
    "display" : "SAPU-Enrique Dintrans",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-805",
    "display" : "SAPU-Machalí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "17-472",
    "display" : "Posta de Salud Rural Chancal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "18-109",
    "display" : "Centro de Especialidades de Medicina Transfusional",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-301",
    "display" : "CESFAM Pinares Dra. Eloísa Díaz Insunza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118301"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-802",
    "display" : "SAPU-Boca Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-813",
    "display" : "SAPU-Yobilo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118813"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-814",
    "display" : "SAPU-Leonera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118814"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-826",
    "display" : "SAPU-Hualqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118826"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "19-709",
    "display" : "Centro Comunitario de Salud Familiar Leocán Portus Govinden",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "21-343",
    "display" : "Centro de Referencia de Salud Miraflores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121343"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-344",
    "display" : "COSAM PRAIS",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121344"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-345",
    "display" : "Centro Rehabilitador de Adicciones",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-346",
    "display" : "Centro de Salud Familiar Lautaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121346"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-784",
    "display" : "Centro Comunitario de Salud Familiar El Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121784"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-785",
    "display" : "Centro Comunitario de Salud San Antonio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121785"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "09-390",
    "display" : "Centro de Salud Familiar Cristo Vive (ONG)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109390"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "14-802",
    "display" : "SAPU-Los Castaños",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-816",
    "display" : "SAPU-Dr. Fernando Maffioletti",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114816"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-817",
    "display" : "SAPU-Santo Tomás",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114817"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-819",
    "display" : "SAPU-El Roble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114819"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "13-328",
    "display" : "Centro de Salud Familiar Padre Joan Alsina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "09-321",
    "display" : "Centro de Salud Familiar Juan Antonio Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-821",
    "display" : "SAPU-Juan Antonio Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109821"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-890",
    "display" : "SAPU-Cristo Vive",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109890"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-316",
    "display" : "Centro de Salud Familiar Pablo Neruda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-354",
    "display" : "Centro de Salud Familiar Violeta Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110354"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-754",
    "display" : "Centro Comunitario de Salud Familiar Río Claro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110754"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-758",
    "display" : "Centro Comunitario de Salud Familiar Santa Corina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110758"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "12-107",
    "display" : "Hospital Hanga Roa (Isla De Pascua)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-320",
    "display" : "Centro de Salud Familiar Juan Pablo II ( La Reina)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112320"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-321",
    "display" : "Centro de Salud Familiar Cardenal Silva Henríquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112321"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "13-829",
    "display" : "SAR Eugenia Muñoz Dalmatín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113829"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-329",
    "display" : "Centro de Salud Familiar San Alberto Hurtado Red de Salud UC CHRISTUS",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-330",
    "display" : "Centro de Salud Familiar Trinidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-809",
    "display" : "SAPU-Pablo de Rokha",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "16-340",
    "display" : "Centro de Salud Familiar Las Américas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116340"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "24-381",
    "display" : "Centro de Salud Familiar Padre Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124381"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-396",
    "display" : "Centro de Salud Familiar Quellón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133396"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "05-323",
    "display" : "Centro de Salud Familiar Dr. Sergio Aguilar Delgado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-823",
    "display" : "SAPU-Dr. Sergio Aguilar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105823"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "07-353",
    "display" : "Centro de Salud Familiar Alcalde Iván Manríquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107353"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-351",
    "display" : "Centro de Salud Familiar Juan Bautista Bravo Vega",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-352",
    "display" : "Centro de Salud Familiar Reñaca Alto Dr. Jorge Kaplan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107352"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "16-341",
    "display" : "Centro de Salud Familiar Dr. Ricardo Valdés Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116341"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-829",
    "display" : "SAPU-Armando Williams",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116829"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-832",
    "display" : "SAR Constitución",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116832"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-803",
    "display" : "SAPU-Curicó Centro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-806",
    "display" : "SAR La Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "21-348",
    "display" : "Centro de Salud Familiar Lican Ray",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121348"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-347",
    "display" : "Centro de Salud Familiar Pedro de Valdivia (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121347"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "11-379",
    "display" : "Centro de Salud Familiar Clotario Blest",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111379"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-380",
    "display" : "Centro de Salud Familiar Dr. Carlos Godoy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111380"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "19-601",
    "display" : "COSAM Hualpén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "02-012",
    "display" : "Clínica Dental Móvil Simple. Pat. RW6740 (Iquique)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "03-012",
    "display" : "Sala de Procedimientos Odontológicos Móvil (SPOM) Patente PXI 415-0",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "04-012",
    "display" : "Clínica Dental Móvil Simple. Pat. PW4068 (Copiapo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "05-012",
    "display" : "Clínica Dental Móvil Triple. Pat. PW4100 (Monte Patria)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "06-012",
    "display" : "Clínica Dental Móvil Triple. Pat. PW4101 (Valparaíso)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "07-012",
    "display" : "Clínica Dental Móvil Triple. Pat. PW4102 (Viña del Mar )",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "09-012",
    "display" : "Clínica Dental Móvil Simple. Pat. PW4082 (TilTil)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-012",
    "display" : "Clínica Dental Móvil Simple. Pat. PW4083 (Curacaví)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "15-012",
    "display" : "Clínica Dental Móvil Triple. Pat. PW4103 (Rancagua)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-012",
    "display" : "Clínica Dental Móvil (Talca)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "17-012",
    "display" : "Clínica Dental Móvil Triple. Pat. PW4105 (Chillán)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "20-012",
    "display" : "Clínica Dental Móvil Triple. Pat. UW9511 (Huepil)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "21-012",
    "display" : "Clínica Dental Móvil Doble. Pat. BBZV83 (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-012",
    "display" : "Clínica Dental Móvil Triple. Pat. BKYZ91 (Osorno)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "24-012",
    "display" : "Clínica Dental Móvil Triple. Pat. BKYS89 (Puerto Montt)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "25-012",
    "display" : "Clínica Dental Móvil Simple. Pat. PW4067 (Coihaique)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "28-012",
    "display" : "Clínica Dental Móvil Triple. Pat. VP5666 (Lebu)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "29-012",
    "display" : "Clínica Dental Móvil Triple. Pat. BBTD27 (Angol)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "03-350",
    "display" : "Centro Asistencial Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "05-701",
    "display" : "Centro Comunitario de Salud Familiar Villa Alemania",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "06-804",
    "display" : "SAPU Placilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "09-804",
    "display" : "SAPU-Valdivieso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-331",
    "display" : "Centro de Salud Familiar Lo Amor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "12-269",
    "display" : "Conin Pedro de Valdivia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112269"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-612",
    "display" : "COSAM Lo Barnechea",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112612"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "13-716",
    "display" : "Centro Comunitario de Salud Familiar Rapa Nui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113716"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-831",
    "display" : "SAPU-Edgardo Enríquez Froedden",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113831"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-822",
    "display" : "SAPU-Padre Manuel Villaseca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114822"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-325",
    "display" : "Centro de Salud Familiar de Malloa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-326",
    "display" : "Centro de Salud Familiar de Pelequen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-351",
    "display" : "Centro de Referencia de Salud La Brújula",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "17-706",
    "display" : "Centro Comunitario de Salud Familiar El Casino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117706"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-801",
    "display" : "SAPU-Violeta Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "18-311",
    "display" : "Centro de Salud Familiar Carlos Pinto Fierro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "21-786",
    "display" : "Centro Comunitario de Salud Familiar Ultraestación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121786"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-787",
    "display" : "Centro Comunitario de Salud Familiar Guacolda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121787"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-705",
    "display" : "Centro Comunitario de Salud Familiar El Encanto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "26-216",
    "display" : "Clínica Harris",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126216"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "06-729",
    "display" : "Centro Comunitario de Salud Familiar Tejas Verdes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "14-824",
    "display" : "SAPU-Santa Amalia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114824"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-825",
    "display" : "SAPU Granja Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114825"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "01-012",
    "display" : "Clínica Dental Móvil Simple. Pat. PW4076 (Arica)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "22-012",
    "display" : "Clínica Dental Móvil A Rural Triple. Pat. BKYS94 (Valdivia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "01-704",
    "display" : "Centro Comunitario de Salud Familiar Cerro La Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "13-701",
    "display" : "Centro Comunitario de Salud Familiar Yalta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-702",
    "display" : "Centro Comunitario de Salud Familia Sierra Bella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-753",
    "display" : "Centro Comunitario de Salud Familiar Reverendo Javier Peró",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113753"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-828",
    "display" : "SAPU-Padre Joan Alsina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113828"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-332",
    "display" : "Centro de Salud Familiar Laurita Vicuña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114332"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-333",
    "display" : "Centro de Salud Rural El Principal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114333"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-703",
    "display" : "Centro Comunitario de Salud Familiar Ciudad de Paju",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-150",
    "display" : "Centro Reproductivo Regional de Sangre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-265",
    "display" : "Centro La Escalera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116265"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-266",
    "display" : "Crea Chile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116266"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-267",
    "display" : "Nexos Ltda.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116267"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-761",
    "display" : "Centro Comunitario de Salud Familiar Doña Carmen de Sarmiento",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116761"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-802",
    "display" : "SAR Bombero Garrido",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-840",
    "display" : "SAR Las Américas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116840"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "18-818",
    "display" : "SAPU-Loma Colorada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118818"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "22-601",
    "display" : "COSAM Comunitario Las Animas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-602",
    "display" : "COSAM Angachilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-703",
    "display" : "Centro Comunitario de Salud Familiar Mehuín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-710",
    "display" : "Centro Comunitario de Salud Familiar Los Lagos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122710"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "23-208",
    "display" : "Hogar Protegido Varones Amore",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-211",
    "display" : "Hogar Protegido de Varones Purranque",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-801",
    "display" : "SAPU Rahue Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123801"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "26-215",
    "display" : "Clínica Sombrero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126215"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "14-104",
    "display" : "Hospital Metropolitano (Ex Militar, Santiago, Providencia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "03-601",
    "display" : "COSAM Calama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-705",
    "display" : "Centro Comunitario de Salud Familiar Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "08-707",
    "display" : "Centro Comunitario de Salud Familiar Juan Pablo Segundo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108707"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "09-715",
    "display" : "Centro Comunitario de Salud Familiar Pucara de Lasana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109715"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-808",
    "display" : "SAPU-Alberto Bachelet Martínez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "13-723",
    "display" : "Centro Comunitario de Salud Familiar Santa Barbara",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-796",
    "display" : "Centro Comunitario de Salud Familiar San Gregorio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114796"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-826",
    "display" : "SAPU-Karol Wojtyla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114826"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-600",
    "display" : "COSAM Centro 1 de Rancagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-731",
    "display" : "Centro comunitario de Salud Familiar Lo Figueroa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116731"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "18-291",
    "display" : "Vacunatorio Concepción",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118291"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-292",
    "display" : "Vacunatorio San Pedro de la Paz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118292"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "19-702",
    "display" : "Centro Comunitario de Salud Familiar 8 de Mayo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-703",
    "display" : "Centro Comunitario de Salud Familiar Cosmito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "21-349",
    "display" : "Centro de Salud Familiar Hualpín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121349"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-212",
    "display" : "Vacunatorio Sociedad Centro Médico Cochrane SA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123212"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-709",
    "display" : "Centro Comunitario de Salud Familiar Riachuelo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "33-012",
    "display" : "Clínica Dental Móvil Triple. Pat. BKYS90 (Castro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133012"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-534",
    "display" : "Posta de CONTUY",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133534"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-548",
    "display" : "Posta de Salud Rural Coinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133548"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-549",
    "display" : "Posta de Salud Rural Chadmo Central",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133549"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-550",
    "display" : "Posta de Salud Rural Auchac",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133550"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-551",
    "display" : "Posta de Salud Rural Yaldad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133551"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-553",
    "display" : "Posta de Salud Rural Natri",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133553"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-554",
    "display" : "Posta de Salud Rural Curaco de Vilupulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133554"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-555",
    "display" : "Posta de Salud Rural Nalhuitad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133555"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-556",
    "display" : "Posta de Salud Rural Cucao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133556"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-557",
    "display" : "Posta de Salud Rural Coipomo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133557"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-558",
    "display" : "Posta de Salud Rural Inio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133558"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-725",
    "display" : "Centro Comunitario de Salud Familiar Bellavista",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133725"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-740",
    "display" : "Centro Comunitario de Salud Familiar Metahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133740"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-776",
    "display" : "Centro Comunitario de Salud Familiar Kintunien",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133776"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-796",
    "display" : "Centro Comunitario de Salud Familiar Rukalaf",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133796"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "24-765",
    "display" : "Centro Comunitario de Salud Familiar Pantanosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124765"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-175",
    "display" : "Buque Cirujano Videla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133175"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "05-803",
    "display" : "SAPU-San Juan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-822",
    "display" : "SAPU-Marcos Macuada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105822"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "33-552",
    "display" : "Posta de Salud Rural Chaulinec La Villa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133552"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-745",
    "display" : "Centro Comunitario de Salud Familiar Huillinco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133745"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "06-151",
    "display" : "Centro de Referencia de Salud Odontológica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106151"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "08-312",
    "display" : "Centro de Salud Familiar Dr. Segismundo Iturra Taito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "08-709",
    "display" : "Centro Comunitario de Salud Familiar Las Cadenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "13-728",
    "display" : "Centro Comunitario de Salud Familiar Lo Herrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113728"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "22-716",
    "display" : "Centro Comunitario de Salud Familiar Manuel Miranda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122716"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "24-731",
    "display" : "Centro Comunitario de Salud Familiar de Ayacara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124731"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "28-729",
    "display" : "Centro de Salud Familiar Tubul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-730",
    "display" : "Centro Comunitario de Salud Familiar Quidico",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128730"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "33-703",
    "display" : "Centro Comunitario de Salud Familiar Carlina Paillacar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "20-701",
    "display" : "Centro Comunitario de Salud Familiar Galvarino",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "29-705",
    "display" : "Centro Comunitario de Salud Familiar Capitán Pastene",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "10-308",
    "display" : "Centro de Salud Familiar Peñaflor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110308"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "23-309",
    "display" : "Centro de Salud Familiar Practicante Pablo Araya (Ex Río Negro)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123309"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "22-315",
    "display" : "Centro de Salud Familiar Lautaro Caro Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "13-341",
    "display" : "COSAM San Joaquín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113341"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "21-351",
    "display" : "COSAM Padre las Casas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-350",
    "display" : "Centro de Salud Familiar Labranza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "26-305",
    "display" : "Centro de Salud Familiar Natales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126305"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "28-441",
    "display" : "Posta de Salud Rural Yani",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128441"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "20-472",
    "display" : "Posta de Salud Rural El Castillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120472"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-473",
    "display" : "Posta de Salud Rural Canchillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "21-585",
    "display" : "Posta de Salud Rural Liuco (Gorbea)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121585"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "24-555",
    "display" : "Posta de Salud Rural Llaguepe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124555"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "33-200",
    "display" : "Vacunatorio Rosalía Muñoz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133200"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-201",
    "display" : "Centro Médico Austral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133201"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "02-800",
    "display" : "SAPU Cirujano Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102800"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "05-324",
    "display" : "Centro de Salud Familiar Sotaquí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "07-713",
    "display" : "Centro Comunitario de Salud Familiar Ex Asentamiento El Melón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107713"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "15-479",
    "display" : "Posta de Salud Rural Pulin",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115479"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-850",
    "display" : "SAR Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115850"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "22-463",
    "display" : "Centro Comunitario de Salud Familiar Nontuela (Enrique Strange)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122463"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-464",
    "display" : "Posta de Salud Rural Lago Neltume",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122464"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "24-601",
    "display" : "COSAM Puerto Montt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "01-306",
    "display" : "Centro de Salud Ambiental de Arica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101306"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "03-602",
    "display" : "COSAM Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "04-701",
    "display" : "Centro Comunitario de Salud Familiar Orfelia Lavín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "08-811",
    "display" : "SAPU San Felipe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108811"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "12-613",
    "display" : "COSAM-Vitacura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112613"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "13-806",
    "display" : "SAPU-La Feria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113806"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-808",
    "display" : "SAPU-Clara Estrella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113808"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "15-327",
    "display" : "Centro de Salud Familiar Olivar Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "26-701",
    "display" : "Centro Comunitario de Salud Familiar Río Seco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "33-559",
    "display" : "Posta de Salud Rural Butalcura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133559"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "29-304",
    "display" : "Centro de Salud Familiar Piedra de Águila",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "16-342",
    "display" : "Centro de Salud Familiar Dr. Carlos Díaz Gidi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116342"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-569",
    "display" : "Posta de Salud Rural El Plumero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116569"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "02-020",
    "display" : "Centro de Rehabilitación Móvil (Iquique)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-224",
    "display" : "Vacunatorio Sonrisa Infantil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102224"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-802",
    "display" : "SAPU Cirujano Guzmán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "09-718",
    "display" : "Centro Comunitario de Salud Familiar Los Libertadores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109718"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-756",
    "display" : "Centro Comunitario de Salud Familiar Mar Caribe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110756"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-783",
    "display" : "Centro Comunitario de Salud Familiar Codigua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110783"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "13-333",
    "display" : "Centro de Salud Familiar Alto Jahuel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113333"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-334",
    "display" : "Centro de Salud Familiar Los Bajos de San Agustín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113334"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-642",
    "display" : "COSAM Lo Espejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113642"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-832",
    "display" : "SAPU-Juan Pablo II",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113832"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-406",
    "display" : "Posta de Salud Rural San Vicente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114406"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-410",
    "display" : "Posta de Salud Rural San Gabriel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114410"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-828",
    "display" : "SAPU-Poetisa Gabriela Mistral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114828"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-831",
    "display" : "SAPU-La Florida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114831"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-214",
    "display" : "Vacunatorio Neumann",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115214"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-328",
    "display" : "Centro de Salud Familiar Cunaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115328"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-218",
    "display" : "Vacunatorio Clínica Infantil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116218"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-219",
    "display" : "Vacunatorio Centro Médico Cordillera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116219"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-601",
    "display" : "COSAM de Linares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-762",
    "display" : "Centro Comunitario de Salud Familiar Los Cristales",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116762"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-763",
    "display" : "Centro Comunitario de Salud Familiar San Pablo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116763"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-764",
    "display" : "Centro Comunitario de Salud Familiar Loma de Las Tortillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116764"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-765",
    "display" : "Centro Comunitario de Salud Familiar Los Robles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116765"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "17-020",
    "display" : "Clínica Móvil de Rehabilitación (RR)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-473",
    "display" : "Posta de Salud Rural Capilla Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117473"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-474",
    "display" : "Posta de Salud Rural Agua Santa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-475",
    "display" : "Posta de Salud Rural Castañal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-476",
    "display" : "Posta de Salud Rural Las Hormigas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117476"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-477",
    "display" : "Posta de Salud Rural Chamizal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-611",
    "display" : "Centro Comunitario de Salud Mental",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-799",
    "display" : "Centro Comunitario de Salud Familiar Los Alpes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117799"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "21-352",
    "display" : "Centro de Salud Docente Asistencial Monseñor Sergio Valech",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121352"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "25-205",
    "display" : "Centro Clínico Militar Coyhaique",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125205"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "26-224",
    "display" : "Vacunatorio SEREMI de Salud Magallanes",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "24-715",
    "display" : "Centro Comunitario de Salud Familiar Chamiza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124715"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "20-315",
    "display" : "Centro de Salud Familiar Nuevo Horizonte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120315"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "21-355",
    "display" : "Centro de Salud Rural Pucón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121355"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "07-600",
    "display" : "COSAM y Psiquiatría Comunitaria Concón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "26-700",
    "display" : "Centro Comunitario de Salud Familiar Dr. Mateo Bencur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "15-329",
    "display" : "Centro de Salud Familiar Rengo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115329"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-601",
    "display" : "COSAM Santa Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "19-310",
    "display" : "Centro de Salud Familiar La Floresta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "16-741",
    "display" : "Centro Comunitario de Salud Familiar Rosita OHiggins",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116741"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-570",
    "display" : "Posta de Salud Rural La Mina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116570"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "15-010",
    "display" : "Act. Gest. por la Dir. del Serv. para apoyo de la Red (S.S Del Libertador Bernardo OHiggins)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115010"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "09-323",
    "display" : "Centro de Salud Familiar Dr. Salvador Allende Gossens (Huechuraba)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "21-789",
    "display" : "Centro Comunitario de Salud Familiar Dr. Maximino Beltran Mora",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121789"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "11-609",
    "display" : "COSAM Santiago",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "14-161",
    "display" : "Centro de Sangre y Tejidos Metropolitano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114161"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "10-775",
    "display" : "Centro Comunitario de Salud Familiar La Islita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110775"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "19-708",
    "display" : "Centro Comunitario de Salud Familiar El Santo Esfuerzo de Todos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119708"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "14-612",
    "display" : "COSAM Pirque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114612"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "18-319",
    "display" : "Centro de Salud Familiar San Pedro de La Costa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "17-601",
    "display" : "COSAM Chillán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-602",
    "display" : "COSAM San Carlos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "23-310",
    "display" : "Centro de Salud Familiar Quinto Centenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "14-613",
    "display" : "COSAM CEIF Puente Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114613"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "17-330",
    "display" : "Centro de Salud Familiar Sol de Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "17-331",
    "display" : "Centro de Salud Familiar Dra. Michelle Bachelet",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "29-237",
    "display" : "Vacunatorio Myrta Aravena Fuentes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129237"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "10-760",
    "display" : "Centro Comunitario de Salud Familiar Valmi Aguirre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110760"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-382",
    "display" : "Centro de Salud Familiar Presidenta Michelle Bachelet",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111382"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-383",
    "display" : "Centro de Salud Familiar Dr. Luis Ferrada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111383"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "18-810",
    "display" : "SAPU-Juan Soto Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118810"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "28-613",
    "display" : "COSAM de Arauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128613"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-609",
    "display" : "COSAM Curanilahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-611",
    "display" : "COSAM Cañete",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128611"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-610",
    "display" : "COSAM Lebu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128610"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "19-706",
    "display" : "Centro Comunitario de Salud Familiar Rene Schneider",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119706"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "05-702",
    "display" : "Centro Comunitario de Salud Familiar Lambert",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "03-013",
    "display" : "Sala de Procedimientos Odontológicos Móvil (SPOM) Patente BKG-355",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "05-600",
    "display" : "COSAM Tierras Blancas (CESAM)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "13-890",
    "display" : "SAPU Buin",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113890"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "12-322",
    "display" : "Centro de Salud Familiar Padre Gerardo Whelan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112322"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "09-324",
    "display" : "Centro de Salud Familiar Presidente Salvador Allende Gossens (Quilicura)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "18-600",
    "display" : "COSAM de Coronel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "11-782",
    "display" : "Centro Comunitario de Salud Familiar El Abrazo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111782"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-783",
    "display" : "Centro Comunitario de Salud Familiar Lo Errázuriz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111783"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "11-784",
    "display" : "Centro Comunitario de Salud Familiar Bueras",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111784"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "21-353",
    "display" : "Centro de Salud Rural Pitrufquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121353"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "05-723",
    "display" : "Centro Comunitario de Salud Familiar Limarí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105723"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "13-324",
    "display" : "Centro de Salud Familiar Dra. Haydeé López Casoou",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "28-014",
    "display" : "Clínica Dental Móvil Simple. Pat. DDKB17 (Lebu)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128014"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "10-361",
    "display" : "Centro de Salud Familiar Bicentenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110361"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "02-413",
    "display" : "Posta de Salud Rural San Marcos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "08-700",
    "display" : "Centro Comunitario de Salud Familiar Lo Calvo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "06-728",
    "display" : "Centro Comunitario de Salud Familiar Isla Negra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106728"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "14-334",
    "display" : "Centro de Salud Familiar José Alvo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114334"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "02-701",
    "display" : "Centro Comunitario de Salud Familiar Cerro Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "07-601",
    "display" : "COSAM Limache",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "16-766",
    "display" : "Centro Comunitario de Salud Familiar Nuevo Horizonte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116766"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "23-700",
    "display" : "Centro Comunitario de Salud Familiar Murrinumo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "33-797",
    "display" : "Centro Comunitario de Salud Familiar Vista Hermosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133797"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "10-381",
    "display" : "Centro de Salud Familiar Alfarera Rosa Reyes Vilches",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110381"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "07-702",
    "display" : "Centro Comunitario de Salud Familiar Achupallas Sergio Donoso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-727",
    "display" : "Centro Comunitario de Salud Familiar Las Palmas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107727"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "21-600",
    "display" : "COSAM Amanecer",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121600"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "19-705",
    "display" : "Centro Comunitario de Salud Familiar Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119705"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-710",
    "display" : "Centro Comunitario de Salud Familiar Libertad Gaete",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119710"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-711",
    "display" : "Centro Comunitario de Salud Familiar Los Lobos la Gloria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119711"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "33-560",
    "display" : "Posta de Salud Rural San José",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133560"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "03-603",
    "display" : "COSAM Central",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103603"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-105",
    "display" : "Centro Oncológico Ambulatorio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "07-434",
    "display" : "Posta de Salud Rural Loncura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107434"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "21-354",
    "display" : "Centro de Salud Familiar Los Volcanes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121354"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "18-601",
    "display" : "COSAM Comunitaria Lota",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "24-396",
    "display" : "Centro de Salud Familiar Calbuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124396"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "18-704",
    "display" : "Centro Comunitario de Salud Familiar Colcura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "21-601",
    "display" : "CECOSAM Temuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121601"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-602",
    "display" : "COSAM Padre Las Casas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "10-891",
    "display" : "SAPU-Marcela Jacques Vargas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110891"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-400",
    "display" : "Posta de Salud Rural Aliro Cárcarmo (Lonquén)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "23-312",
    "display" : "Centro de Salud Familiar Puaucho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "02-414",
    "display" : "Posta de Salud Rural La Huayca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102414"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "02-415",
    "display" : "Posta de Salud Rural Cariquima",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102415"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "13-413",
    "display" : "Posta de Salud Rural Santa Inés",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "10-455",
    "display" : "Posta de salud Rural Pabellón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "02-416",
    "display" : "Posta de Salud Rural Matilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102416"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "19-707",
    "display" : "Centro Comunitario de Salud Familiar Llafkelen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119707"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "21-587",
    "display" : "Posta de Salud Rural Epeukura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121587"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-598",
    "display" : "Posta de Salud Rural Caren-Trancura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121598"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "03-312",
    "display" : "Centro de Salud Familiar Norponiente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "23-701",
    "display" : "Centro Comunitario de Salud Familiar Manuel Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123701"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "09-824",
    "display" : "SAPU-Presidente Salvador Allende Gossens",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109824"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "12-323",
    "display" : "Centro Odontológico Macul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "15-480",
    "display" : "Posta de Salud Rural La Cabaña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115480"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-481",
    "display" : "Posta de Salud Rural Olivar Bajo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115481"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-482",
    "display" : "Posta de Salud Rural Peor Es Nada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115482"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-483",
    "display" : "Posta de Salud Rural Cocalan",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-484",
    "display" : "Posta de Salud Rural Idahue (San Vicente)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115484"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "05-325",
    "display" : "Centro de Salud Familiar Juan Pablo II",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "16-602",
    "display" : "COSAM Sin Fronteras Talca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "33-561",
    "display" : "Posta de Salud Rural Chaullín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133561"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "10-627",
    "display" : "COSAM Municipal de Pudahuel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "110627"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "20-316",
    "display" : "Consultorio General Rural Quilaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120316"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "11-781",
    "display" : "Centro Comunitario de Salud Familiar Villa Francia.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111781"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "15-331",
    "display" : "Centro de Salud Familiar La Esperanza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115331"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "24-325",
    "display" : "Centro de Salud Familiar Carelmapu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-536",
    "display" : "Posta de Salud Rural El Malito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124536"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "22-465",
    "display" : "Posta de Salud Rural Pellinada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122465"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "24-602",
    "display" : "COSAM de Reloncaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124602"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "12-407",
    "display" : "Posta de Salud Rural de Farellones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112407"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "20-702",
    "display" : "Centro Comunitario de Salud Familiar Mulchén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "error",
    "display" : "Centro Comunitario de Salud",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "20-704",
    "display" : "Centro Comunitario de Salud Familiar Lautaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120704"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-703",
    "display" : "Centro Comunitario de Salud Familiar Julio Hemmelmann",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "05-326",
    "display" : "Centro de Salud Familiar Villa San Rafael de Rozas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "01-307",
    "display" : "Centro de Salud Familiar Eugenio Petruccelli Astudillo (ex Punta Norte)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "05-509",
    "display" : "Posta de Salud Rural Gualliguaica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-510",
    "display" : "Posta de Salud Rural Recoleta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105510"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "15-330",
    "display" : "Centro de Salud Familiar Gultro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115330"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "05-511",
    "display" : "Posta de Salud Rural Los Cóndores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105511"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "07-756",
    "display" : "Centro Comunitario de Salud Familiar El Retiro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107756"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-725",
    "display" : "Centro Comunitario de Salud Familiar Villa Hermosa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107725"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-758",
    "display" : "Centro Comunitario de Salud Familiar Santa Teresita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107758"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-435",
    "display" : "Posta de Salud Rural Manuel Rodríguez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107435"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "11-310",
    "display" : "Centro de Salud Familiar Las Mercedes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111310"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "29-456",
    "display" : "Posta de Salud Rural Ranquil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129456"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "16-343",
    "display" : "Centro de Salud Familiar Faustino González",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116343"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "14-105",
    "display" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "11-101",
    "display" : "Hospital Clínico Metropolitano El Carmen Doctor Luis Valentín Ferrada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "16-571",
    "display" : "Posta de Salud Rural Santa Rita",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116571"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "13-717",
    "display" : "Centro Comunitario de Salud Familiar Santa Laura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113717"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "16-572",
    "display" : "Posta de Salud Rural Pangue Arriba",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116572"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "24-011",
    "display" : "PRAIS (S.S Del Reloncaví)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "124011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "13-910",
    "display" : "SAPU Santa Laura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200010"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-911",
    "display" : "SAPU San Joaquín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "19-311",
    "display" : "Centro de Salud Familiar Lirquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "12-937",
    "display" : "Centro Comunitario de Salud Familiar Elena Caffarena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200037"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "16-938",
    "display" : "Posta de Salud Rural Alquihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200038"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "28-011",
    "display" : "PRAIS (S.S Arauco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "15-942",
    "display" : "COSAM Centro 2 de Rancagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200042"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-943",
    "display" : "COSAM Norte Graneros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200043"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-944",
    "display" : "COSAM Sur Doñihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200044"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "33-909",
    "display" : "Centro de Salud Familiar Quillahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200009"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "16-972",
    "display" : "Centro de Salud Familiar Villa Magisterio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200072"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "15-975",
    "display" : "Centro de Salud Familiar San Vicente de Tagua Tagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200075"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "24-976",
    "display" : "Hospital de Chaitén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200076"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "18-977",
    "display" : "SAPU-Dr. Juan Cartes Arias",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200077"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "09-941",
    "display" : "SAPU-Libertadores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200041"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-711",
    "display" : "Centro Comunitario de Salud Familiar Sol de Septiembre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109711"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-713",
    "display" : "Centro Comunitario de Salud Familiar La Foresta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109713"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "24-982",
    "display" : "Posta de Salud Rural Chauchil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200082"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "12-901",
    "display" : "Centro Odontológico La Reina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200080"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "05-826",
    "display" : "SAPU Emilio Schaffhauser",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105826"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "23-985",
    "display" : "SAPU Dr. Marcelo Lopetegui Adams",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200085"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "19-986",
    "display" : "SAPU-La Floresta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200086"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "21-911",
    "display" : "Centro de Salud Familiar El Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200183"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "12-905",
    "display" : "Centro de Especialidades Odontológicas Leng",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200188"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "14-901",
    "display" : "COSAM San José de Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200200"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "21-913",
    "display" : "Centro de Salud Familiar Conun Huenu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200207"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-986",
    "display" : "COSAM Rahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200209"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "13-906",
    "display" : "Centro Comunitario de Salud Familiar Coñimo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200210"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "03-938",
    "display" : "Centro de Salud Familiar Dra. Maria Cristina Rojas Neumann",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200216"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "07-907",
    "display" : "Centro de Salud Familiar Raúl Sánchez Bañados",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200219"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "15-920",
    "display" : "Posta de Salud Rural Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200225"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "02-226",
    "display" : "Vacunatorio Vacumed",
    "property" : [{
      "code" : "deis6",
      "valueString" : "102226"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "03-279",
    "display" : "Laboratorio Sarita Nuñez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103279"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-254",
    "display" : "Soc. Diálisis Nordial Ltda.",
    "property" : [{
      "code" : "deis6",
      "valueString" : "103254"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "05-901",
    "display" : "SAPU Tierras Blancas 2",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200182"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-825",
    "display" : "SAPU Cardenal Caro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105825"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-238",
    "display" : "Vacunatorio La Serena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105238"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "08-703",
    "display" : "CECOF Los Cerrillos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108703"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "07-355",
    "display" : "Centro de Salud Familiar Dr. Johow Zapallar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "107355"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "16-272",
    "display" : "Casa Juventud Obrera Católica (Obispado de Talca) (Apoyo Hospital de Talca)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "18-713",
    "display" : "Centro Comunitario de Salud Familiar Escuadrón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118713"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-702",
    "display" : "Centro Comunitario de Salud Familiar Puerto Sur Isla Sta. María",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118702"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "28-050",
    "display" : "Hospital de Campaña (Curanilahue)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128050"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "18-726",
    "display" : "CECOF Hualqui",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118726"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "15-712",
    "display" : "Centro Comunitario de Salud Familiar Guacarhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-700",
    "display" : "Centro Comunitario de Salud Familiar San Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-274",
    "display" : "Casa de Ejercicios (Curicó) (Apoyo Hospital de Curicó)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-273",
    "display" : "Clínica Mutual de Seguridad CCHC de Curicó (Apoyo Hospital de Curicó)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-271",
    "display" : "Corporación de Nuestra Señora de La Consolación Padre Manolo (Apoyo H. Talca)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-237",
    "display" : "Vacunatorio Enfermería Integral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116237"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-236",
    "display" : "Vacunatorio Noemí Pérez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116236"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-270",
    "display" : "Casa de Reposo y Centro Integral Las Ilusiones (Apoyo Hospital de Talca)",
    "property" : [{
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "08-712",
    "display" : "Centro Comunitario de Salud Familiar Quebrada Herrera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "06-095",
    "display" : "Vacunatorio SEREMI de Salud de Valparaíso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106095"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "21-050",
    "display" : "Hospital de Campaña Cruz Roja Noruega",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121050"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-013",
    "display" : "CDM Doble. Pat. BBZV84 (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-014",
    "display" : "CDM Doble. Pat. BBZV85 (Temuco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121014"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-788",
    "display" : "Centro Comunitario de Salud Familiar Las Quilas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121788"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "20-014",
    "display" : "Clínica Dental Móvil Triple. Pat. NW6996 (Yumbel)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120014"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "28-013",
    "display" : "CDM Simple. Pat. VP5664 (Lebu)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "128013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "20-013",
    "display" : "CDM Triple. Pat. NW6995 (Santa Bárbara)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "120013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "19-803",
    "display" : "SAPU Paulina Avendaño Pereda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119803"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-802",
    "display" : "SAR San Vicente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119802"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-805",
    "display" : "SAR Dr. Alberto Reyes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119805"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-809",
    "display" : "SAPU Talcahuano Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119809"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "29-013",
    "display" : "Clínica Dental Móvil Triple. Pat. BBTD28 (Angol)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-050",
    "display" : "Hospital de Campaña Estados Unidos (Angol)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129050"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-051",
    "display" : "Hospital de Campaña Nº 2 (Servicio de Salud)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129051"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-052",
    "display" : "Hospital de Campaña Nº 3 (Servicio de Salud)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "129052"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "12-095",
    "display" : "Vacunatorio Internacional Seremi de Salud Metropolitana",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112095"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "25-206",
    "display" : "Vacunatorio Dra. Elizabeth Otazo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "125206"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "26-228",
    "display" : "Laboratorio Clínico Corporación Municipal Punta Arenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "126228"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "12-717",
    "display" : "Centro Comunitario de Salud Familiar Dragones de La Reina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112717"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-799",
    "display" : "Centro Comunitario de Salud Familiar Bicentenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112799"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "23-030",
    "display" : "Departamento de Atención Integral Funcionarios",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123030"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "22-723",
    "display" : "Centro Comunitario de Salud Familiar Dr. Silva de La Paz (San Francisco)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122723"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-709",
    "display" : "Centro Comunitario de Salud Familiar Neltume",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122709"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-013",
    "display" : "Clínica Dental Móvil B Urbana Triple. Pat. BKYS92 (Valdivia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122013"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-720",
    "display" : "Centro Comunitario de Salud Familiar Pablo Neruda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122720"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "01-090",
    "display" : "Oficina Sanitaria Chacalluta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101090"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "08-090",
    "display" : "Oficina Sanitaria Los Libertadores",
    "property" : [{
      "code" : "deis6",
      "valueString" : "108090"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "23-987",
    "display" : "CRD Adultos Mayores Kumelen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200248"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "03-908",
    "display" : "Centro Comunitario de Salud Familiar Oasis",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200241"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "20-904",
    "display" : "Centro Comunitario de Salud Familiar Cabrero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200243"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "25-903",
    "display" : "COSAM Coyhaique",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200256"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "29-902",
    "display" : "Centro Comunitario de Salud Familiar Santa Mónica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200270"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "11-903",
    "display" : "SAR Enfermera Sofía Pincheira",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200189"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "22-950",
    "display" : "Centro Comunitario de Salud Familiar Máfil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200250"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "14-902",
    "display" : "Centro de Referencia de Salud Hospital Provincia Cordillera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200282"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "16-973",
    "display" : "Centro Comunitario de Salud Familiar Buenos Aires",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200266"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "21-915",
    "display" : "Centro Comunitario de Salud Familiar El Alto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200290"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "24-978",
    "display" : "Centro Comunitario de Salud Familiar Puerta Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200292"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "07-910",
    "display" : "Centro Comunitario de Salud Familiar Ruta Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200293"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "22-905",
    "display" : "Centro Comunitario de Salud Familiar Dr. Alberto Daiber",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200299"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "19-901",
    "display" : "Centro Comunitario de Salud Familiar Parque Central",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200283"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-902",
    "display" : "Centro Comunitario de Salud Familiar Villa Centinela",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200284"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-903",
    "display" : "Centro Comunitario de Salud Familiar Rios de Chile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200285"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-904",
    "display" : "Centro Comunitario de Salud Familiar Punta de Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200287"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "15-947",
    "display" : "Centro Comunitario de Salud Familiar Paniahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200288"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "03-909",
    "display" : "COSAM Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200289"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "05-902",
    "display" : "Centro Comunitario de Salud Familiar Los Copihues",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200258"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-903",
    "display" : "Centro Comunitario de Salud Familiar Punta Mira",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200273"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "07-908",
    "display" : "COSAM La Calera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200271"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "20-907",
    "display" : "Centro de Salud Familiar Entre Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200312"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "17-011",
    "display" : "PRAIS (S.S Ñuble)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "117011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "26-902",
    "display" : "Centro Comunitario de Salud Familiar Dr. Juan Damianovic",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200311"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "06-905",
    "display" : "COSAM Domingo Asún Salazar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200341"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "09-943",
    "display" : "Centro Comunitario de Salud Familiar Alberto Bachelet",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200347"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "03-910",
    "display" : "SAR Alemania",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200348"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "16-905",
    "display" : "Centro Comunitario de Salud Familiar Villa Longaví",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200349"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-906",
    "display" : "Posta de Salud Rural Quinamávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200350"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-907",
    "display" : "Centro Comunitario de Salud Familiar Yerbas Buenas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200351"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-908",
    "display" : "Centro Comunitario de Salud Familiar Carlos Trupp",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200352"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "07-914",
    "display" : "Centro Comunitario de Salud Familiar El Polígono",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200355"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "19-905",
    "display" : "Centro Diurno para Personas con Demencia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200356"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "01-901",
    "display" : "SAPU-Iris Véliz Hume",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200095"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "05-905",
    "display" : "Centro Comunitario de Salud Familiar Colonia Limarí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200367"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-904",
    "display" : "Centro de Salud Familiar Urbano de Illapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200366"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "13-912",
    "display" : "Centro Comunitario de Salud Familiar Las Hortensias",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200377"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "24-904",
    "display" : "Hospital de Día Infanto Adolescente Rayen Milla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200336"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "05-907",
    "display" : "Centro Comunitario de Salud Familiar Arcos de Pinamar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200402"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "08-902",
    "display" : "COSAM San Felipe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200362"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "06-020",
    "display" : "Unidad Oftalmológica Móvil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200374"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "23-903",
    "display" : "COSAM Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "09-942",
    "display" : "Centro Comunitario de Salud Familiar Beato Padre Hurtado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "18-700",
    "display" : "Centro Comunitario de Salud Familiar Copiulemu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118700"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "25-905",
    "display" : "Centro de Salud Familiar Puerto Aysen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200380"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "03-912",
    "display" : "Centro de Salud Familiar Valdivieso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200450"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "23-904",
    "display" : "Centro Comunitario de Salud Familiar Barrio Estación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200455"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "08-903",
    "display" : "COSAM Los Andes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "14-907",
    "display" : "Centro Comunitario de Salud Familiar Las Lomas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200475"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "12-907",
    "display" : "Centro Comunitario de Salud Familiar Villa Olímpica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200236"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-908",
    "display" : "Centro Comunitario de Salud Familiar Andacollo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200265"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "12-923",
    "display" : "Centro Comunitario de Salud Familiar Amapolas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200389"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "18-011",
    "display" : "PRAIS (S.S Concepción)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "118011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-952",
    "display" : "Centro Comunitario de Salud Familiar Chaimávida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200052"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-902",
    "display" : "SAR Víctor Manuel Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200150"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-904",
    "display" : "Centro de Referencia de Salud Municipal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200339"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "18-905",
    "display" : "Centro Comunitario de Salud Familiar Boca Sur Viejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200369"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "21-923",
    "display" : "Centro Comunitario de Salud Familiar Ñancul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200478"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-906",
    "display" : "Posta de Salud Rural Chamilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200490"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "05-910",
    "display" : "Centro de Salud Familiar El Sauce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200494"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "14-906",
    "display" : "COSAM CEIF Puente Alto Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200468"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "14-905",
    "display" : "Centro Especialidades Primarias San Lazaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200375"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "15-910",
    "display" : "Centro Comunitario de Salud Familiar Angostura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200491"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "16-931",
    "display" : "Centro de Salud Familiar Constitución",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200496"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-781",
    "display" : "Centro Comunitario de Salud Familiar San Máximo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200232"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-701",
    "display" : "Centro Comunitario de Salud Familiar Villa Francia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200233"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-904",
    "display" : "Centro Comunitario de Salud Familiar Chacarillas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200340"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-932",
    "display" : "SAR Villa Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200522"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "21-917",
    "display" : "Centro Comunitario de Salud Familiar El Bosque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200381"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-918",
    "display" : "Centro Comunitario de Salud Familiar Carahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200382"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-919",
    "display" : "Centro Comunitario de Salud Familiar Las Villas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200383"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-925",
    "display" : "Centro Comunitario de Salud Familiar Pucón Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "23-907",
    "display" : "Centro Referencia Diagnóstico Médico Osorno",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200539"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "02-912",
    "display" : "Centro de Salud Familiar Dr. Yandry Añazco Montero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200557"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "09-900",
    "display" : "Centro Comunitario de Salud Familiar Las Enredaderas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200554"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "24-907",
    "display" : "Centro Comunitario de Salud Familiar Alerce Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200440"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "02-905",
    "display" : "Centro Comunitario de Salud Familiar La Tortuga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200335"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "13-907",
    "display" : "Centro Comunitario de Salud Familiar Martín Henríquez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200337"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "08-901",
    "display" : "Centro Comunitario de Salud Familiar Estación Las Coimas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200345"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "11-906",
    "display" : "Centro Comunitario de salud Familiar Buzeta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200346"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "22-906",
    "display" : "Centro Comunitario de Salud Familiar Folilco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "25-904",
    "display" : "Centro Comunitario de Salud Familiar Alejandro Gutierrez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200359"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "13-904",
    "display" : "Centro Comunitario de Salud Familiar Eduardo Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200360"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-908",
    "display" : "Centro Comunitario de Salud Familiar Atacama",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200361"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "10-926",
    "display" : "Centro Comunitario de Salud Familiar Villa Los Presidentes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200365"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "15-906",
    "display" : "Centro Comunitario de Salud Familiar Tuncahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200379"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "10-927",
    "display" : "Centro Comunitario de Salud Familiar San Vicente de Naltagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200385"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "20-908",
    "display" : "Centro Comunitario de Salud Familiar Villa La Granja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200413"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "33-906",
    "display" : "Centro Comunitario de Salud familiar Gamboa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200442"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "21-920",
    "display" : "SAR Lautaro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200459"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "07-930",
    "display" : "Centro Comunitario de Salud Familiar El Trigal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200471"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "10-929",
    "display" : "SAR Oriente María Eugenia Torres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200479"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-928",
    "display" : "Centro Comunitario de Salud Familiar Lo Chacón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200454"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "22-908",
    "display" : "SAR Barrios Bajos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200458"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "19-906",
    "display" : "Centro Comunitario de Salud Familiar Cerro Estanque",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200470"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "02-909",
    "display" : "Posta de Salud Rural Pachica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200474"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "15-909",
    "display" : "Centro Comunitario de Salud Familiar Chumaquito",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200485"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "33-910",
    "display" : "Centro Comunitario de Salud Familiar Villa Aytue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200493"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "20-909",
    "display" : "SAR Entre Ríos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200495"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "29-907",
    "display" : "Centro Comunitario de Salud Familiar Caupolicán",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200535"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "24-909",
    "display" : "Centro de Especialidades Odontológicas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200536"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "05-915",
    "display" : "Centro de Salud Familiar San Isidro Calingasta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200538"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "17-904",
    "display" : "COSAM Ñuble",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200558"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "15-925",
    "display" : "SAR Dr. Rienzi Valencia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200562"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "33-011",
    "display" : "PRAIS (S.S Chiloé)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "133011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "05-912",
    "display" : "Centro de Salud Familiar Rural Pan de Azúcar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200499"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "03-917",
    "display" : "Centro Oncológico del Norte (CON)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200508"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "05-918",
    "display" : "Centro de Salud Familiar Fray Jorge",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200569"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "06-011",
    "display" : "PRAIS (S.S Valparaíso San Antonio)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "16-011",
    "display" : "PRAIS (S.S Del Maule)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "116011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "06-900",
    "display" : "SAPU Barrancas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200106"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-901",
    "display" : "SAPU Diputado Manuel Bustos Huerta",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200107"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-902",
    "display" : "SAPU Marcelo Mena",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200108"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-903",
    "display" : "SAPU Reina Isabel II",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200109"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-904",
    "display" : "SAR Plan de Valparaíso",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200268"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "05-924",
    "display" : "Centro de Salud Familiar Lila Cortés Godoy",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200607"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "06-909",
    "display" : "SAPU El Tabo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200611"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-337",
    "display" : "Centro de Salud Familiar Fernando Rodriguez Vicuña",
    "property" : [{
      "code" : "deis6",
      "valueString" : "106337"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "03-925",
    "display" : "Centro Comunitario de Salud Familiar Coviefi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200621"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "03-926",
    "display" : "SAR Coviefi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200622"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "15-928",
    "display" : "Centro de Salud Familiar Rengo Urbano Oriente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200632"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "11-303",
    "display" : "Centro de Salud Familiar Lo Valledor Norte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111303"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "21-932",
    "display" : "Complejo Asistencial Padre las Casas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200717"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "19-908",
    "display" : "COSAM Los Cerros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200624"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "09-914",
    "display" : "SAPU Esmeralda",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200955"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-915",
    "display" : "Centro de Salud Familiar Dr. Victor Castro Wiren",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200961"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "10-938",
    "display" : "Centro de Salud Familiar Florencia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200965"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "09-909",
    "display" : "SUR Batuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200743"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "09-911",
    "display" : "SUR Huertos Familiares",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200744"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "200987",
    "display" : "Centro de Salud Familiar Bicentenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200987"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-900",
    "display" : "SAPU Valentín Letelier",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200148"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "17-900",
    "display" : "SAPU Isabel Riquelme",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200149"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "28-900",
    "display" : "SAPU Eleuterio Ramírez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200172"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "28-901",
    "display" : "SAR Los Álamos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200173"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "17-902",
    "display" : "Centro Comunitario de Salud Familiar Doña Isabel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200261"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "33-907",
    "display" : "Centro Comunitario de Salud Familiar Puntra Degañ",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200449"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "09-902",
    "display" : "Centro Comunitario de Salud Familiar Dr. Lucas Sierra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200609"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "16-936",
    "display" : "Posta de Salud Rural Semillero",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200619"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-937",
    "display" : "COSAM Ayelén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200625"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "15-929",
    "display" : "SAR San Vicente de Tagua Tagua",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200719"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "07-962",
    "display" : "CESFAM Limache Viejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201037"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "21-011",
    "display" : "PRAIS (S.S Araucanía Sur)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "121011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "200556",
    "display" : "Hospital Digital",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200556"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "95"
    }]
  },
  {
    "code" : "29-900",
    "display" : "SAPU Huequén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200174"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "29-901",
    "display" : "SAR Victoria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200175"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "21-942",
    "display" : "SUR Chol Chol",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200945"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-945",
    "display" : "SUR Los Laureles",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200948"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-934",
    "display" : "SUR Curarrehue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200929"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-903",
    "display" : "SAPU Freire",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200155"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-949",
    "display" : "SUR QUEPE",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201005"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-944",
    "display" : "SUR Lastarria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200947"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-948",
    "display" : "SUR Pillanlelbun",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200989"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-941",
    "display" : "SUR Melipeuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200944"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-906",
    "display" : "SAPU Nueva Imperial",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200158"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-933",
    "display" : "SAR Conun Huenu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200924"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-939",
    "display" : "SUR Makewe Pelale",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200942"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "22-011",
    "display" : "PRAIS (S.S. Valdivia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "122011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-993",
    "display" : "Posta de Salud Rural Cayumapu (Valdivia)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200093"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "11-900",
    "display" : "SAPU Padre Vicente Irarrázabal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200117"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "10-900",
    "display" : "SAPU Luis Chavarría",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200118"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-901",
    "display" : "SAPU Dr. Alberto Allende Jones",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200119"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-903",
    "display" : "SAPU Dr. Avendaño",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200121"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-905",
    "display" : "SAPU Dr. Francisco Boris Soler",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200123"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-907",
    "display" : "SAR Dr. Raúl Yazigi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200125"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-909",
    "display" : "SAPU Isla de Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200127"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-910",
    "display" : "SAPU Lo Franco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200128"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-912",
    "display" : "SAPU Peñaflor",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200130"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-913",
    "display" : "SAPU Violeta Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200131"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-914",
    "display" : "SAPU María Pinto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200132"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-915",
    "display" : "SAR Bicentenario",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200133"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-919",
    "display" : "SAPU Huamachuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200137"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-920",
    "display" : "SAR La Estrella",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200138"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "11-901",
    "display" : "SAPU Dr. Iván Insunza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200141"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "12-903",
    "display" : "SAPU La Reina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200142"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "21-900",
    "display" : "SAPU Amanecer",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200152"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-901",
    "display" : "SAPU Pucón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200153"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-902",
    "display" : "SAPU Pueblo Nuevo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200154"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-904",
    "display" : "SAR Labranza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200156"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-907",
    "display" : "SAR Pedro de Valdivia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200159"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-909",
    "display" : "SAPU Villa Alegre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200161"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "22-900",
    "display" : "SAPU Belarmina Paredes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200163"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-901",
    "display" : "SAPU Ranco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200164"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-902",
    "display" : "SAPU Niebla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200165"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-903",
    "display" : "SAPU Panguipulli",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200166"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "24-901",
    "display" : "SAPU Frutillar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200168"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "24-902",
    "display" : "SAPU Los Muermos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200169"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "20-900",
    "display" : "SAPU 2 Septiembre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200177"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-901",
    "display" : "SAPU Nororiente",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200178"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-902",
    "display" : "SAPU Nuevo Horizonte",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200179"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "22-904",
    "display" : "Centro Comunitario de Salud Familiar Guacamayo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200235"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "20-905",
    "display" : "Centro Comunitario de Salud Familiar Santa Bárbara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200259"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "15-903",
    "display" : "Centro Comunitario de Salud Familiar Santa Teresa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200264"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "20-906",
    "display" : "Centro Comunitario de Salud Familiar Laja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200267"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "10-923",
    "display" : "Centro Comunitario de Salud Familiar Plaza México",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200342"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "07-936",
    "display" : "Centro de Resolución de Especialidades Ambulatorias (CREA)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200590"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "07-940",
    "display" : "Centro de Salud Familiar La Calera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200595"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "11-914",
    "display" : "Centro Comunitario de Salud Familiar Los Bosquinos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200643"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "16-943",
    "display" : "Posta de Salud Rural San Alejo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200728"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "06-912",
    "display" : "SUR Juan Fernández",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200729"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-913",
    "display" : "SUR Rocas de Santo Domingo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200730"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "16-946",
    "display" : "SUR Morza",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200759"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-947",
    "display" : "SUR Lontue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200760"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-948",
    "display" : "SUR Iloca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200761"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-949",
    "display" : "SUR Vichuquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200762"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-950",
    "display" : "SUR Rauco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200763"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-951",
    "display" : "SUR Romeral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200764"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-952",
    "display" : "SUR Sagrada Familia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200765"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-953",
    "display" : "SUR Villa Prat",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200766"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-955",
    "display" : "SUR Santa Olga",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200768"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-956",
    "display" : "SUR Putu",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200769"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-959",
    "display" : "SUR Río Claro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200772"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-960",
    "display" : "SUR Pelarco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200773"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-961",
    "display" : "SUR San Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200774"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-962",
    "display" : "SUR Pencahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200775"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-963",
    "display" : "SAPU Maule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200776"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-964",
    "display" : "SUR Empedrado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200777"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-965",
    "display" : "SUR Vara Gruesa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200778"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-966",
    "display" : "SUR Marta Estevez - Retiro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200779"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-968",
    "display" : "SUR El Aromo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200781"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-969",
    "display" : "SUR Colbun",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200782"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-970",
    "display" : "SUR Panimavida",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200783"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "16-971",
    "display" : "SUR Curanipe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200784"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "22-919",
    "display" : "SUR Mariquina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200785"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-920",
    "display" : "SUR Máfil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200786"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-921",
    "display" : "SUR Coñaripe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200787"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-922",
    "display" : "SUR Malalhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200788"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "22-923",
    "display" : "SUR Choshuenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200825"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "10-932",
    "display" : "SUR Isla de Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200876"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-933",
    "display" : "SUR San Pedro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200877"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "10-934",
    "display" : "SUR Villa Alhué",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200774"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "22-925",
    "display" : "SAPU Paillaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200882"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "18-924",
    "display" : "SAR Boca Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200920"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "06-917",
    "display" : "SUR El Quisco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200925"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "06-918",
    "display" : "SUR El Tabo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200926"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "15-959",
    "display" : "Centro Comunitario de Salud Familiar Loreto",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200931"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "11-923",
    "display" : "SAPU Ignacio Domeyko",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200933"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "200934",
    "display" : "COSAM Rayún",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200934"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "21-935",
    "display" : "SUR Teodoro Schmidt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200938"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-936",
    "display" : "SUR Hualpín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200939"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-937",
    "display" : "SUR Villarrica",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200940"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-938",
    "display" : "SUR Perquenco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200941"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "21-940",
    "display" : "SUR San Ramón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200943"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "13-918",
    "display" : "Centro Comunitario de Salud Familiar Los Sauces",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200962"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "21-946",
    "display" : "SAPU Pitrufquén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200970"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "20-916",
    "display" : "SUR Santa Fe",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200972"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-917",
    "display" : "SUR Antuco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200973"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-918",
    "display" : "SUR Monteaguila",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200974"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-919",
    "display" : "SUR Quilleco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200975"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-920",
    "display" : "SUR Negrete",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200976"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-921",
    "display" : "SUR San Rosendo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200977"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-922",
    "display" : "SUR Ralco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200978"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-923",
    "display" : "SUR Yumbel Estación",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200979"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-924",
    "display" : "SUR Canteras Villa Mercedes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200980"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "20-925",
    "display" : "SUR Quilaco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200981"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "10-939",
    "display" : "SAR Violeta Parra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201015"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "201074",
    "display" : "CESFAM LAS AMERICAS",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201074"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "23-104",
    "display" : "Hospital Futa Sruka Lawenche Kunko Mapu Mo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "123104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "201112",
    "display" : "CESFAM Las Torres",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201112"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "28-907",
    "display" : "SUR Tubul",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200824"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "01-011",
    "display" : "PRAIS (S.S Arica)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "101011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "01-912",
    "display" : "SUR Putre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200849"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "04-929",
    "display" : "SUR Alto del Carmen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200949"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-011",
    "display" : "PRAIS (S.S Atacama)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "104011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-903",
    "display" : "SAR Paipote",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200102"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-909",
    "display" : "SAPU El Palomar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-930",
    "display" : "SUR Diego de Almagro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200950"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-931",
    "display" : "SUR Freirina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200951"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-932",
    "display" : "SUR Tierra Amarilla",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200952"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-900",
    "display" : "SAPU Baquedano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200099"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "04-902",
    "display" : "SAPU Joan Crawford Astudillo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200101"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "33-915",
    "display" : "SUR Chacao",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200736"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-900",
    "display" : "SAR Castro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200176"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-912",
    "display" : "SUR Chonchi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200733"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-916",
    "display" : "SUR Curaco de Vélez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200983"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-913",
    "display" : "SUR Dalcahue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200734"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-914",
    "display" : "SUR Puqueldón",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200735"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "33-911",
    "display" : "SUR Quemchi",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200732"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "05-940",
    "display" : "SAPU Lila Cortés",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200848"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-942",
    "display" : "SAPU El Sauce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200928"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-936",
    "display" : "SUR La Higuera",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200740"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-011",
    "display" : "PRAIS (S.S Coquimbo)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "105011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-900",
    "display" : "SAPU Juan Pablo II",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200105"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-927",
    "display" : "SAR Monte Patria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200720"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-928",
    "display" : "SAPU Fray Jorge",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200721"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-937",
    "display" : "SUR Tamaya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200741"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-938",
    "display" : "SUR Sotaquí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200742"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-933",
    "display" : "SUR Paihuano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200737"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "05-935",
    "display" : "SUR Pichasca",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200739"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "15-011",
    "display" : "PRAIS (S.S Del Libertador Bernardo OHiggins)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "115011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "15-926",
    "display" : "SAR Santa Cruz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200623"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "26-900",
    "display" : "SAPU 18 de Septiembre",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200171"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "26-911",
    "display" : "Complejo Miraflores (Salud Mental)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200710"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "09-011",
    "display" : "PRAIS (SS Metropolitano Norte)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "13-919",
    "display" : "SUR Alto Jahuel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200966"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-921",
    "display" : "SUR Maipo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200968"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-920",
    "display" : "SUR Los Bajos de San Agustín",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200967"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-922",
    "display" : "SUR Dr. Raúl Moya",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200969"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "13-011",
    "display" : "PRAIS (S.S Metropolitano Sur)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "14-011",
    "display" : "PRAIS (S.S Metropolitano Sur Oriente)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "19-804",
    "display" : "SAR Penco",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119804"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-011",
    "display" : "PRAIS (S.S Talcahuano)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "119011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-912",
    "display" : "SAR Los Cerros",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201018"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-900",
    "display" : "SAPU Bellavista",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200151"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "19-911",
    "display" : "SUR Dichato",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200957"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "201143",
    "display" : "CESFAM N° 8 Dr. Nicolás Díaz Sánchez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201143"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "201091",
    "display" : "CESFAM Marta Ugarte Román",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201091"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "201072",
    "display" : "CESFAM OCOA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201072"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "201132",
    "display" : "Centro de Apoyo Comunitario para personas con Demencia KIMÜNCHE",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201132"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "201139",
    "display" : "Centro de Apoyo Comunitario para personas con Demencia ?ARREBOL?",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201139"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "19-909",
    "display" : "Buque Talcahuano",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201139"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "201067",
    "display" : "SAR ANCUD",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201067"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "201233",
    "display" : "CESFAM Dr. Virginio Gomez G. Valle La Piedra",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201233"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "14-104_",
    "display" : "Hospital Metropolitano (Ex Militar)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "114104"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "01-913",
    "display" : "Centro de Salud Familiar Matrona Rosa Vascopé Zarzola",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200866"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "201260",
    "display" : "Centro Comunitario de Salud Mental LITORAL",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201260"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "16-954",
    "display" : "SUR Mercedes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200767"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "201287",
    "display" : "Centro de Salud Familiar de Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201287"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "201277",
    "display" : "CECOSF CIEN AGUILAS",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201277"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "201323",
    "display" : "CESAM Centro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201323"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "201324",
    "display" : "CESAM San Juan Punta Mira",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201324"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "201325",
    "display" : "CESAM Limarí",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201325"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "201326",
    "display" : "COSAM Las Compañías",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201326"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "201327",
    "display" : "CESAM Illapel",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201327"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "18-913",
    "display" : "SAR San Pedro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200581"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "201063",
    "display" : "SAPU Dr. Agustín Cruz Melo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201063"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "201212",
    "display" : "Centro de Salud Familiar Juan Pablo II de Lampa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201212"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "23-905",
    "display" : "Unidad de Memoria AYEKAN",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200477"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-988",
    "display" : "Comunidad Terapéutica Peulla Ambulatoria",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201055"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-989",
    "display" : "Comunidad Terapéutica Peulla Residencial",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201056"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "201016",
    "display" : "Policlínico Rosita Benveniste",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201016"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "12-011",
    "display" : "PRAIS (S.S Metropolitano Oriente)",
    "property" : [{
      "code" : "deis6",
      "valueString" : "112011"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201291",
    "display" : "Centro de Especialidades Odontológicas Municipal",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201291"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "201379",
    "display" : "Clínica Odontológica Municipal de Peñalolén",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201379"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201095",
    "display" : "COSAM Raíces de Maule",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201095"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "201319",
    "display" : "Hospital de Alto Hospicio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201319"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "201462",
    "display" : "CESFAM La Reina de Colina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201462"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "201126",
    "display" : "Centro Comunitario de Salud Familiar Rafael",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201126"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "15-948",
    "display" : "SUR Navidad",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200856"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "201304",
    "display" : "Posta de Salud Rural Quillalhue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201304"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "201483",
    "display" : "CECOSF Las Cascadas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201483"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "09-200",
    "display" : "Hospital Clínico Universidad de Chile",
    "property" : [{
      "code" : "deis6",
      "valueString" : "109200"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "201509",
    "display" : "CESFAM QUINTERO",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201509"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "201298",
    "display" : "Clínica de Salud Movil",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201298"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "201674",
    "display" : "CESFAM El Abrazo Dr. Salvador Allende Gossens",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201674"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "201667",
    "display" : "PSR Chan Chan Río Negro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201667"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "202080",
    "display" : "COSAM Lo Errázuriz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202080"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "201666",
    "display" : "SAPU VITACURA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201666"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201307",
    "display" : "APS 2",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "202204",
    "display" : "CESCO IRMA ABARCA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202204"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "202205",
    "display" : "CESFAM Cerro Colorado",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202205"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "13-307",
    "display" : "Centro de Salud Familiar Padre Esteban Gumucio Vives",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113307"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "13-807",
    "display" : "SAPU Padre Esteban Gumucio",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113807"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "202221",
    "display" : "SAR Dr. Gustavo Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202221"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "202236",
    "display" : "COSAM Rinconada",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202236"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "202237",
    "display" : "COSAM San Esteban",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202237"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "202233",
    "display" : "CESFAM Erasmo Escala",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202233"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "202231",
    "display" : "Centro Comunitario de Salud Mental Alerce",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202231"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "201353",
    "display" : "Centro Comunitario de Salud Familiar Unión y Esfuerzo Rural",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201353"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "201438",
    "display" : "Servicio de Urgencia Rural SUR Irene Frei Montalva",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201438"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "201712",
    "display" : "SAR ELSA ROMO ARAVENA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201712"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "202212",
    "display" : "Centro de Salud Mental Comunitaria de Cauquenes",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202212"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "202213",
    "display" : "Centro Comunitario de Salud Familiar CECOSF ORIENTE de Molina",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202213"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "201444",
    "display" : "COSAM Concepción",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201444"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "201445",
    "display" : "COSAM San Pedro de la Paz",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201445"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "202081",
    "display" : "COSAM Puerto Aysen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202081"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "202201",
    "display" : "Centro de Salud Mental Comunitario Frutillar",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202201"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "202235",
    "display" : "Dr. Mario Vidal Climent",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202235"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "202230",
    "display" : "Centro de Apoyo Comunitario para personas con Demencia Puerto Montt",
    "property" : [{
      "code" : "deis6",
      "valueString" : "202230"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "23-910",
    "display" : "SAPU Entre Lagos",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200747"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-913",
    "display" : "SUR Puaucho",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200750"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-912",
    "display" : "SUR Bahía Mansa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200749"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "23-911",
    "display" : "SUR San Pablo",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200748"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "111400",
    "display" : "Centro Comunitario de Salud Familiar Rinconada Maipú",
    "property" : [{
      "code" : "deis6",
      "valueString" : "111400"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "201129",
    "display" : "Centro Comunitario de Salud Familiar Lumen",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201129"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "201506",
    "display" : "Centro Odontológico Parque Almagro",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201506"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "201396",
    "display" : "Consultorio General Rural del Laja",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201396"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "201678",
    "display" : "Centro Kintun",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201678"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201794",
    "display" : "Centro de Salud Mental Copiapó",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201794"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "201663",
    "display" : "Centro de Especialidades en Salud de Ñuñoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201663"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "02-900",
    "display" : "SAPU Huara",
    "property" : [{
      "code" : "deis6",
      "valueString" : "200096"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "201147",
    "display" : "SAPU Dr. Héctor Reyno Gutiérrez",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201147"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "201848",
    "display" : "SAR LA REINA",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201848"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201853",
    "display" : "SAR Centro de Urgencia Ñuñoa",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201853"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "201956",
    "display" : "Centro Comunitario de Apoyo a Personas con Demencia",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201956"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "201855",
    "display" : "SAPU CORTO Matrona Rosa Vascope Zarzola",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201855"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "201841",
    "display" : "CECOSF Selva Oscura",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201841"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "201844",
    "display" : "CECOSF Tijeral",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201844"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "201488",
    "display" : "Posta de Salud Rural HUALLEN MAPU",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201488"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "201696",
    "display" : "Centro Comunitario de Salud Familiar DECHER",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201696"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "202042",
    "display" : "Centro de Especialidades Médicas y Odontológicas",
    "property" : [{
      "code" : "deis6",
      "valueString" : "113181"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "201810",
    "display" : "Centro de Salud Mental Comunitaria Belloto Sur",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201844"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "202043",
    "display" : "Posta Pucatrihue",
    "property" : [{
      "code" : "deis6",
      "valueString" : "201844"
    },
    {
      "code" : "servicioSalud",
      "valueString" : "23"
    }]
  }]
}

```
