# Estados de Hoja Diaria APS - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estados de Hoja Diaria APS**

## CodeSystem: Estados de Hoja Diaria APS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-hoja-diaria-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSEstadoHojaDiariaGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Estados de la Hoja Diaria APS por rama (hoja ESTADOS HD - RAMAS). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Estados de hoja diaria](ValueSet-vs-estado-hoja-diaria-ges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "estado-hoja-diaria-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-hoja-diaria-ges",
  "version" : "0.4.0",
  "name" : "CSEstadoHojaDiariaGES",
  "title" : "Estados de Hoja Diaria APS",
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
  "description" : "Estados de la Hoja Diaria APS por rama (hoja ESTADOS HD - RAMAS).",
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
  "count" : 99,
  "property" : [{
    "code" : "rama",
    "description" : "Rama (CSRamaProblemaSaludGES)",
    "type" : "string"
  },
  {
    "code" : "verificacion",
    "description" : "Equivalencia con Condition.verificationStatus",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "1001",
    "display" : "Caso en Sospecha (rama 105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "105"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1003",
    "display" : "Caso Confirmado (rama 105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "105"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1005",
    "display" : "Descartado (rama 105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "105"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1049",
    "display" : "Caso Confirmado (rama 112)",
    "property" : [{
      "code" : "rama",
      "valueString" : "112"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1061",
    "display" : "Caso en Sospecha (rama 114)",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1062",
    "display" : "Caso Confirmado (rama 114)",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1064",
    "display" : "Descartado (rama 114)",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1078",
    "display" : "Caso en Sospecha (rama 116)",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1079",
    "display" : "Caso Confirmado (rama 116)",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1081",
    "display" : "Descartado (rama 116)",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1091",
    "display" : "Caso en Sospecha (rama 117)",
    "property" : [{
      "code" : "rama",
      "valueString" : "117"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1092",
    "display" : "Caso confirmado Otros Vicios de Refracción (rama 119)",
    "property" : [{
      "code" : "rama",
      "valueString" : "119"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1093",
    "display" : "Caso confirmado Presbicia Pura (rama 118)",
    "property" : [{
      "code" : "rama",
      "valueString" : "118"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1096",
    "display" : "Descartado (rama 117)",
    "property" : [{
      "code" : "rama",
      "valueString" : "117"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1101",
    "display" : "Caso en Sospecha (rama 120)",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1103",
    "display" : "Caso Confirmado (rama 120)",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1111",
    "display" : "Caso Confirmado (rama 121)",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1121",
    "display" : "Caso Confirmado (rama 122)",
    "property" : [{
      "code" : "rama",
      "valueString" : "122"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1123",
    "display" : "Descartado (rama 122)",
    "property" : [{
      "code" : "rama",
      "valueString" : "122"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1131",
    "display" : "Caso en Sospecha (rama 123)",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1132",
    "display" : "Caso Confirmado (rama 123)",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1134",
    "display" : "Descartado (rama 123)",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1181",
    "display" : "Caso en Sospecha (rama 128)",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1182",
    "display" : "Caso Confirmado (rama 128)",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1184",
    "display" : "Descartado (rama 128)",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1191",
    "display" : "Caso en Sospecha (rama 129)",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1192",
    "display" : "Caso Confirmado (rama 129)",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1194",
    "display" : "Descartado (rama 129)",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1476",
    "display" : "Caso en Espera de Atención (rama 166)",
    "property" : [{
      "code" : "rama",
      "valueString" : "166"
    },
    {
      "code" : "verificacion",
      "valueString" : "unconfirmed"
    }]
  },
  {
    "code" : "1551",
    "display" : "Caso en Sospecha (rama 41)",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1552",
    "display" : "Caso Confirmado (rama 41)",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1554",
    "display" : "Descartado (rama 41)",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1557",
    "display" : "Caso en Sospecha (rama 25)",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1558",
    "display" : "Caso Confirmado (rama 25)",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1560",
    "display" : "Descartado (rama 25)",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1584",
    "display" : "Caso en Sospecha (rama 40)",
    "property" : [{
      "code" : "rama",
      "valueString" : "40"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "1585",
    "display" : "Caso Confirmado (rama 40)",
    "property" : [{
      "code" : "rama",
      "valueString" : "40"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1587",
    "display" : "Descartado (rama 40)",
    "property" : [{
      "code" : "rama",
      "valueString" : "40"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1590",
    "display" : "Caso Confirmado (rama 39)",
    "property" : [{
      "code" : "rama",
      "valueString" : "39"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "1592",
    "display" : "Descartado (rama 39)",
    "property" : [{
      "code" : "rama",
      "valueString" : "39"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "1611",
    "display" : "Caso en Espera de Atención (rama 43)",
    "property" : [{
      "code" : "rama",
      "valueString" : "43"
    },
    {
      "code" : "verificacion",
      "valueString" : "unconfirmed"
    }]
  },
  {
    "code" : "2054",
    "display" : "Confirmado (rama 200)",
    "property" : [{
      "code" : "rama",
      "valueString" : "200"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "2057",
    "display" : "Confirmado (rama 201)",
    "property" : [{
      "code" : "rama",
      "valueString" : "201"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "2072",
    "display" : "Confirmado (rama 207)",
    "property" : [{
      "code" : "rama",
      "valueString" : "207"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "2093",
    "display" : "Confirmado (rama 214)",
    "property" : [{
      "code" : "rama",
      "valueString" : "214"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "3000",
    "display" : "Caso Confirmado (rama 343)",
    "property" : [{
      "code" : "rama",
      "valueString" : "343"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "3001",
    "display" : "Sospecha (rama 344)",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "3002",
    "display" : "Confirmado (rama 344)",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "3003",
    "display" : "Caso Confirmado (rama 345)",
    "property" : [{
      "code" : "rama",
      "valueString" : "345"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "3004",
    "display" : "Caso Confirmado (rama 347)",
    "property" : [{
      "code" : "rama",
      "valueString" : "347"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "3005",
    "display" : "Descartado (rama 344)",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "4000",
    "display" : "Caso Confirmado (rama 11100)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11100"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "4001",
    "display" : "Sospecha (rama 11101)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "4002",
    "display" : "Confirmado (rama 11101)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "4003",
    "display" : "Caso Confirmado (rama 11102)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "4004",
    "display" : "Caso Confirmado (rama 11104)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11104"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "4005",
    "display" : "Descartado (rama 11101)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "5000",
    "display" : "Sospecha (rama 11105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "5001",
    "display" : "Descartado (rama 11105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "5002",
    "display" : "Caso en Espera de Atención (rama 11106)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11106"
    },
    {
      "code" : "verificacion",
      "valueString" : "unconfirmed"
    }]
  },
  {
    "code" : "5003",
    "display" : "Confirmado (rama 11105)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6000",
    "display" : "Descartado (rama 133)",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6001",
    "display" : "Sospecha (rama 133)",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6002",
    "display" : "Confirmado (rama 11253)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11253"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6003",
    "display" : "Confirmado (rama 11257)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11257"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6004",
    "display" : "Sospecha (rama 11248)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11248"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6005",
    "display" : "Sospecha (rama 19)",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6006",
    "display" : "Confirmado (rama 19)",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6007",
    "display" : "Descartado (rama 19)",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6008",
    "display" : "Sospecha (rama 11112)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6009",
    "display" : "Descartado (rama 11112)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6010",
    "display" : "Sospecha (rama 115)",
    "property" : [{
      "code" : "rama",
      "valueString" : "115"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6011",
    "display" : "Confirmado (rama 127)",
    "property" : [{
      "code" : "rama",
      "valueString" : "127"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6012",
    "display" : "Sospecha (rama 143)",
    "property" : [{
      "code" : "rama",
      "valueString" : "143"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6013",
    "display" : "Sospecha (rama 11110)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11110"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6014",
    "display" : "Caso en Sospecha (rama 113)",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6015",
    "display" : "Sospecha (rama 11107)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6016",
    "display" : "Sospecha (rama 149)",
    "property" : [{
      "code" : "rama",
      "valueString" : "149"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6017",
    "display" : "Sospecha (rama 210)",
    "property" : [{
      "code" : "rama",
      "valueString" : "210"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6018",
    "display" : "Confirmado (rama 167)",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6019",
    "display" : "Sospecha (rama 155)",
    "property" : [{
      "code" : "rama",
      "valueString" : "155"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6020",
    "display" : "Confirmado (rama 155)",
    "property" : [{
      "code" : "rama",
      "valueString" : "155"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6021",
    "display" : "Descartado (rama 155)",
    "property" : [{
      "code" : "rama",
      "valueString" : "155"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6022",
    "display" : "Sospecha (rama 156)",
    "property" : [{
      "code" : "rama",
      "valueString" : "156"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6023",
    "display" : "Confirmado (rama 156)",
    "property" : [{
      "code" : "rama",
      "valueString" : "156"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6024",
    "display" : "Descartado (rama 156)",
    "property" : [{
      "code" : "rama",
      "valueString" : "156"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6100",
    "display" : "Confirmado (rama 11300)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11300"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6200",
    "display" : "Sospecha (rama 11550)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6201",
    "display" : "Confirmado (rama 11550)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6202",
    "display" : "Descartado (rama 11550)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6203",
    "display" : "Sospecha (rama 11109)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "verificacion",
      "valueString" : "provisional"
    }]
  },
  {
    "code" : "6204",
    "display" : "Confirmado (rama 11109)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6205",
    "display" : "Descartado (rama 11109)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "verificacion",
      "valueString" : "refuted"
    }]
  },
  {
    "code" : "6206",
    "display" : "Confirmado (rama 217)",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6207",
    "display" : "Confirmado (rama 11702)",
    "property" : [{
      "code" : "rama",
      "valueString" : "11702"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6208",
    "display" : "Confirmado (rama 12040)",
    "property" : [{
      "code" : "rama",
      "valueString" : "12040"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6209",
    "display" : "Confirmado (rama 13102)",
    "property" : [{
      "code" : "rama",
      "valueString" : "13102"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6210",
    "display" : "Confirmado (rama 13101)",
    "property" : [{
      "code" : "rama",
      "valueString" : "13101"
    },
    {
      "code" : "verificacion",
      "valueString" : "confirmed"
    }]
  },
  {
    "code" : "6211",
    "display" : "Tamizaje (rama 133)",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "verificacion",
      "valueString" : "unconfirmed"
    }]
  }]
}

```
