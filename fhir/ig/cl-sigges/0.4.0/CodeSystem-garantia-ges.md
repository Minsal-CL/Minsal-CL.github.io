# Garantías GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Garantías GES**

## CodeSystem: Garantías GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSGarantiaGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Garantías GES por rama de problema de salud (hoja GARANTIAS). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Garantías GES](ValueSet-vs-garantia-ges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "garantia-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
  "version" : "0.4.0",
  "name" : "CSGarantiaGES",
  "title" : "Garantías GES",
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
  "description" : "Garantías GES por rama de problema de salud (hoja GARANTIAS).",
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
  "count" : 707,
  "property" : [{
    "code" : "rama",
    "description" : "Rama (CSRamaProblemaSaludGES)",
    "type" : "string"
  },
  {
    "code" : "problemaSalud",
    "description" : "Problema de salud (CSProblemaSaludGES)",
    "type" : "string"
  },
  {
    "code" : "documentoInicio",
    "description" : "Documento SIGGES que inicia el plazo (cuando el catálogo lo informa)",
    "type" : "string"
  },
  {
    "code" : "documentoTermino",
    "description" : "Documento SIGGES que cumple la garantía (cuando el catálogo lo informa)",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "33",
    "display" : "Garantía Diagnóstico con Glicemia (SIC-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "50"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "SIC"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "34",
    "display" : "Garantía Tratamiento Medidas Específicas Inmediatas (IPD-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "50"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "IPD"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "35",
    "display" : "Garantía Tratamiento Hospitalizado (OA-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "50"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "OA"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "36",
    "display" : "Garantía Atención por Especialista x Sospecha (SIC-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "51"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "SIC"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "37",
    "display" : "Garantía Tratamiento en 24 horas (IPD-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "51"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "IPD"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "39",
    "display" : "Diagnóstico - Electrocardiograma",
    "property" : [{
      "code" : "rama",
      "valueString" : "16"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "40",
    "display" : "Tratamiento - Medidas Generales Inmediatas",
    "property" : [{
      "code" : "rama",
      "valueString" : "16"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "41",
    "display" : "Tratamiento - Trombolisis",
    "property" : [{
      "code" : "rama",
      "valueString" : "16"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "42",
    "display" : "Tratamiento - Hospitalización",
    "property" : [{
      "code" : "rama",
      "valueString" : "16"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "43",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "16"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "44",
    "display" : "Garantía Prevención Secundaria IAM (IPD-PO)",
    "property" : [{
      "code" : "rama",
      "valueString" : "52"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "documentoInicio",
      "valueString" : "IPD"
    },
    {
      "code" : "documentoTermino",
      "valueString" : "PO"
    }]
  },
  {
    "code" : "162",
    "display" : "Diagnóstico - Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "61"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "163",
    "display" : "Diagnóstico - Confirmación",
    "property" : [{
      "code" : "rama",
      "valueString" : "61"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "164",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "61"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "165",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "61"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "166",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "62"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "170",
    "display" : "Terapia Reperfusión Coronaria Farmacológica Vía Periférica",
    "property" : [{
      "code" : "rama",
      "valueString" : "64"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "171",
    "display" : "Consulta Integral de Especialidades",
    "property" : [{
      "code" : "rama",
      "valueString" : "65"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "173",
    "display" : "Tratamiento - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "67"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "174",
    "display" : "Tratamiento - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "67"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "175",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "67"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "176",
    "display" : "Tratamiento - Quimioterapia Post-Quirúrgica",
    "property" : [{
      "code" : "rama",
      "valueString" : "67"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "177",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "68"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "178",
    "display" : "Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "68"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "180",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "70"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "200",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "105"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "201",
    "display" : "Intervención Quirúrgica",
    "property" : [{
      "code" : "rama",
      "valueString" : "105"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "26"
    }]
  },
  {
    "code" : "700",
    "display" : "Consulta Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "701",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "702",
    "display" : "Intervención Quirúrgica",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "703",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "704",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "30"
    }]
  },
  {
    "code" : "705",
    "display" : "Tratamiento Médico",
    "property" : [{
      "code" : "rama",
      "valueString" : "107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "30"
    }]
  },
  {
    "code" : "706",
    "display" : "Tratamiento Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "30"
    }]
  },
  {
    "code" : "707",
    "display" : "Control Médico desde el alta médica",
    "property" : [{
      "code" : "rama",
      "valueString" : "107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "30"
    }]
  },
  {
    "code" : "708",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "709",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "710",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "32"
    }]
  },
  {
    "code" : "711",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "32"
    }]
  },
  {
    "code" : "712",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "713",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "33"
    }]
  },
  {
    "code" : "714",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "39"
    }]
  },
  {
    "code" : "715",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "39"
    }]
  },
  {
    "code" : "716",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "116"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "39"
    }]
  },
  {
    "code" : "717",
    "display" : "Entrega de Bastón, Colchón Antiescaras, Cojín Antiescaras",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "718",
    "display" : "Entrega de Silla de Ruedas, Andador, Andador de Paseo",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "719",
    "display" : "Tratamiento Farmacológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "122"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "720",
    "display" : "Tratamiento - Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "124"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "721",
    "display" : "Tratamiento - Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "124"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "722",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "127"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "900",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "35"
    }]
  },
  {
    "code" : "901",
    "display" : "Tratamiento Depresión",
    "property" : [{
      "code" : "rama",
      "valueString" : "112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "34"
    }]
  },
  {
    "code" : "902",
    "display" : "Consulta con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "34"
    }]
  },
  {
    "code" : "903",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "904",
    "display" : "Hospitalización",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "905",
    "display" : "Seguimiento Atención Especialista Post Alta",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "906",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "38"
    }]
  },
  {
    "code" : "907",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "38"
    }]
  },
  {
    "code" : "908",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "114"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "38"
    }]
  },
  {
    "code" : "909",
    "display" : "Inicio de Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "115"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "40"
    }]
  },
  {
    "code" : "910",
    "display" : "Ingreso a Prestador con Capacidad de Resolución Integral",
    "property" : [{
      "code" : "rama",
      "valueString" : "115"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "40"
    }]
  },
  {
    "code" : "911",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "117"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "912",
    "display" : "Entrega de Lentes Presbicia",
    "property" : [{
      "code" : "rama",
      "valueString" : "118"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "913",
    "display" : "Entrega de Lentes Miopía, Astigmatismo o Hipermetropía",
    "property" : [{
      "code" : "rama",
      "valueString" : "119"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "29"
    }]
  },
  {
    "code" : "914",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "915",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "916",
    "display" : "Diagnóstico en 48 Horas",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "917",
    "display" : "Tratamiento Farmacológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "918",
    "display" : "Tratamiento - Peritoneodiálisis Menores de 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "919",
    "display" : "Tratamiento - Hemodiálisis en Menores de 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "920",
    "display" : "Tratamiento - Hemodiálisis en Personas de 15 años y más",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "921",
    "display" : "Estudio Pre-Transplante",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "922",
    "display" : "Tratamiento Inmunosupresor",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "923",
    "display" : "Tratamiento Paliativo",
    "property" : [{
      "code" : "rama",
      "valueString" : "126"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "924",
    "display" : "Diagnóstico APS",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "925",
    "display" : "Tratamiento en 24 Horas",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "926",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "128"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "927",
    "display" : "Diagnóstico APS",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "928",
    "display" : "Tratamiento en 24 Horas",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "929",
    "display" : "Atención por Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "931",
    "display" : "Tratamiento Quirúrgico Endoprótesis Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "130"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "932",
    "display" : "Control Seguimiento Traumatólogo Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "130"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "933",
    "display" : "Tratamiento Kinesiólogo Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "130"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "934",
    "display" : "Tratamiento Quirúrgico Endoprótesis Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "935",
    "display" : "Control Seguimiento Traumatólogo Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "936",
    "display" : "Tratamiento Kinesiólogo Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1200",
    "display" : "Diagnóstico - Atención con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1201",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1202",
    "display" : "Tratamiento Cáncer Pre-Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1203",
    "display" : "Seguimiento Pre-Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1204",
    "display" : "Tratamiento Cáncer Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1205",
    "display" : "Seguimiento Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1206",
    "display" : "Atención Especialista Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1207",
    "display" : "Confirmación Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1208",
    "display" : "Tratamiento Primario Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1209",
    "display" : "Control Seguimiento Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1210",
    "display" : "Atención Especialista Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1211",
    "display" : "Confirmación Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1212",
    "display" : "Tratamiento Primario Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1213",
    "display" : "Control Seguimiento Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1214",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "147"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1215",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "147"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1216",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "147"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1217",
    "display" : "Diagnóstico - Electrocardiograma",
    "property" : [{
      "code" : "rama",
      "valueString" : "149"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "1218",
    "display" : "Tratamiento - Trombolisis",
    "property" : [{
      "code" : "rama",
      "valueString" : "149"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "1219",
    "display" : "Prevención Secundaria IAM",
    "property" : [{
      "code" : "rama",
      "valueString" : "149"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "1220",
    "display" : "Prevención Secundaria Bypass",
    "property" : [{
      "code" : "rama",
      "valueString" : "150"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "5"
    }]
  },
  {
    "code" : "1221",
    "display" : "Confirmación-Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "139"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1222",
    "display" : "Tratamiento Quirúrgico Bilateral - 1er Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1223",
    "display" : "Tratamiento Quirúrgico Bilateral - 2do Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1224",
    "display" : "Tratamiento Quirúrgico Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "140"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1225",
    "display" : "Tratamiento Quirúrgico Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "141"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1230",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "143"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1231",
    "display" : "Tratamiento Quirurgico Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1232",
    "display" : "Seguimiento Bilateral Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1233",
    "display" : "Tratamiento Quirúrgico Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1234",
    "display" : "Seguimiento Unilateral Derecha - Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1235",
    "display" : "Tratamiento Quirúrgico Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1236",
    "display" : "Seguimiento Unilateral Izquierda - Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1237",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "151"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1238",
    "display" : "Tratamiento - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "151"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1239",
    "display" : "Tratamiento - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "151"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1240",
    "display" : "Control Especialista Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "151"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1241",
    "display" : "Confirmación Prenatal Cardiopatía Congénita",
    "property" : [{
      "code" : "rama",
      "valueString" : "152"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1242",
    "display" : "Confirmación Diagnóstico Post-Natal entre 0 y 7 días",
    "property" : [{
      "code" : "rama",
      "valueString" : "152"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1243",
    "display" : "Confirmación Diagnóstico Post-Natal entre 8 días y 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "152"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1245",
    "display" : "CCO Otras. Tratamiento Quirúrgico tiempo Variable",
    "property" : [{
      "code" : "rama",
      "valueString" : "154"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1246",
    "display" : "CCO Otras. Control desde alta por Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "154"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1247",
    "display" : "CCO Grave. Hospitalización",
    "property" : [{
      "code" : "rama",
      "valueString" : "153"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1248",
    "display" : "CCO Grave. Tratamiento Quirúrgico Cardiopatía Grave",
    "property" : [{
      "code" : "rama",
      "valueString" : "153"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1249",
    "display" : "CCO Grave. Control desde el alta por Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "153"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1250",
    "display" : "Diagnóstico con Glicemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "155"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "1251",
    "display" : "Consulta con Médico Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "156"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "1252",
    "display" : "Consulta con Médico Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "155"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "1253",
    "display" : "Tratamiento en 24 horas",
    "property" : [{
      "code" : "rama",
      "valueString" : "156"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "6"
    }]
  },
  {
    "code" : "1254",
    "display" : "Diagnóstico Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1255",
    "display" : "Cirugía Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1256",
    "display" : "Válvula Derivativa Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1257",
    "display" : "Control con Neurocirujano Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1258",
    "display" : "Consulta con Neurocirujano Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "158"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1259",
    "display" : "Cirugía Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "158"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1260",
    "display" : "Control con Neurocirujano Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "158"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1261",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "165"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1262",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "165"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1263",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "165"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1264",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "166"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "1270",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1271",
    "display" : "Tratamiento - Ortopedia Prequirúrgica",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1272",
    "display" : "Cirugía Primaria-Primera Intervención",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1273",
    "display" : "Cirugía Primaria-Segunda Intervención",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1274",
    "display" : "Diagnóstico con Etapificación Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "161"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1275",
    "display" : "Tratamiento Quimioterapia Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "161"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1276",
    "display" : "Tratamiento de Transplante Médula Ósea Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "161"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1277",
    "display" : "Control Especialista Seguimiento Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "161"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1278",
    "display" : "Tratamiento - Quimioterapia Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "163"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1279",
    "display" : "Tratamiento - Radioterapia Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "163"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1280",
    "display" : "Tratamiento de Transplante Médula Ósea Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "163"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1281",
    "display" : "Control Especialista Seguimiento Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "163"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1282",
    "display" : "Tratamiento - Quimioterapia Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "164"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1283",
    "display" : "Tratamiento - Radioterapia Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "164"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1284",
    "display" : "Control Especialista Seguimiento Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "164"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1285",
    "display" : "Diagnóstico Linfoma y Tumores Sólidos",
    "property" : [{
      "code" : "rama",
      "valueString" : "162"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1290",
    "display" : "Factores de Riesgo",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1291",
    "display" : "Diagnóstico Signos y Síntomas",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1292",
    "display" : "Tratamiento Prevención Parto Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1293",
    "display" : "Diagnóstico Retinopatía del Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "168"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1294",
    "display" : "Tratamiento Retinopatía del Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "168"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1295",
    "display" : "Seguimiento con Cirugía o Láser",
    "property" : [{
      "code" : "rama",
      "valueString" : "168"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1296",
    "display" : "Seguimiento Sin Cirugía o Láser",
    "property" : [{
      "code" : "rama",
      "valueString" : "168"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1297",
    "display" : "Tratamiento Displasia Broncopulmonar",
    "property" : [{
      "code" : "rama",
      "valueString" : "169"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1298",
    "display" : "Seguimiento Displasia Broncopulmonar",
    "property" : [{
      "code" : "rama",
      "valueString" : "169"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1299",
    "display" : "Diagnóstico Hipoacusia",
    "property" : [{
      "code" : "rama",
      "valueString" : "170"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1300",
    "display" : "Tratamiento - Audífonos",
    "property" : [{
      "code" : "rama",
      "valueString" : "170"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1301",
    "display" : "Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "170"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1302",
    "display" : "Seguimiento - Hipoacusia",
    "property" : [{
      "code" : "rama",
      "valueString" : "170"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1305",
    "display" : "Tratamiento Paliativo",
    "property" : [{
      "code" : "rama",
      "valueString" : "4"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "4"
    }]
  },
  {
    "code" : "1306",
    "display" : "Tratamiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "42"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "1307",
    "display" : "Diagnóstico APS.",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "1308",
    "display" : "Atención Especialista.",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "1309",
    "display" : "Tratamiento en 24 Horas.",
    "property" : [{
      "code" : "rama",
      "valueString" : "41"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "21"
    }]
  },
  {
    "code" : "1310",
    "display" : "Diagnóstico APS.",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "1311",
    "display" : "Atención por Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "1312",
    "display" : "Tratamiento en 24 Horas.",
    "property" : [{
      "code" : "rama",
      "valueString" : "25"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "1313",
    "display" : "Diagnóstico.",
    "property" : [{
      "code" : "rama",
      "valueString" : "49"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1314",
    "display" : "Tratamiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "49"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1315",
    "display" : "Seguimiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "49"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "1316",
    "display" : "Tratamiento - Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "13"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "1317",
    "display" : "Tratamiento - Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "13"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "10"
    }]
  },
  {
    "code" : "1318",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "14"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1319",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "14"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1320",
    "display" : "Confirmación Diagnóstica.",
    "property" : [{
      "code" : "rama",
      "valueString" : "14"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "15"
    }]
  },
  {
    "code" : "1321",
    "display" : "Diagnóstico en 48 horas.",
    "property" : [{
      "code" : "rama",
      "valueString" : "40"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "1322",
    "display" : "Tratamiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "40"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "1323",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "39"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "1324",
    "display" : "Seguimiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "39"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "1325",
    "display" : "Tratamiento - Peritoneodiálisis Menores de 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "17"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1326",
    "display" : "Tratamiento - Hemodiálisis en Mayores de 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "17"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1327",
    "display" : "Tratamiento - Hemodiálisis en Menores 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "17"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1328",
    "display" : "Estudio Pre-Transplante",
    "property" : [{
      "code" : "rama",
      "valueString" : "17"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1329",
    "display" : "Tratamiento Inmunosupresor",
    "property" : [{
      "code" : "rama",
      "valueString" : "17"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1330",
    "display" : "Diagnóstico Consulta Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "18"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1331",
    "display" : "Tratamiento - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "18"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1332",
    "display" : "Tratamiento - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "18"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1333",
    "display" : "Control Especialista Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "18"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "1335",
    "display" : "Tratamiento.",
    "property" : [{
      "code" : "rama",
      "valueString" : "43"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "23"
    }]
  },
  {
    "code" : "1336",
    "display" : "Diagnóstico Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "26"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1337",
    "display" : "Cirugía Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "26"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1338",
    "display" : "Válvula Derivativa Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "26"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1339",
    "display" : "Control con Neurocirujano Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "26"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1340",
    "display" : "Seguimiento Control Otros Especialistas Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "26"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1341",
    "display" : "Consulta con Neurocirujano Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "27"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1342",
    "display" : "Exámen RMN y Rx Columna",
    "property" : [{
      "code" : "rama",
      "valueString" : "27"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1343",
    "display" : "Cirugía Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "27"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1344",
    "display" : "Control con Neurocirujano Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "27"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1345",
    "display" : "Seguimiento Control Otros Especialistas Disrafia Cerrada",
    "property" : [{
      "code" : "rama",
      "valueString" : "27"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "1346",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "28"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1347",
    "display" : "Tratamiento Quirúrgico Bilateral - 1er Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "3"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1348",
    "display" : "Tratamiento Quirúrgico Bilateral - 2do Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "3"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1349",
    "display" : "Tratamiento Quirúrgico Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "2"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1350",
    "display" : "Tratamiento Quirúrgico Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "29"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "1351",
    "display" : "Atención Especialista Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "54"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1352",
    "display" : "Confirmación con Etapificación Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "54"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1353",
    "display" : "Tratamiento Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "54"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1354",
    "display" : "Control Seguimiento Mama Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "54"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1355",
    "display" : "Atención Especialista Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "55"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1356",
    "display" : "Confirmación con Etapificación Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "55"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1357",
    "display" : "Tratamiento Mama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "55"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1358",
    "display" : "Control Seguimiento Rama Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "55"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "1359",
    "display" : "Atención Especialista Sospecha Cáncer PreInvasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "23"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1360",
    "display" : "Confirmación Diagnóstico Cáncer PreInvasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "23"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1361",
    "display" : "Tratamiento Cáncer Pre-Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "23"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1362",
    "display" : "Seguimiento Pre-Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "23"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1363",
    "display" : "Atención Especialista Sospecha Cáncer invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "24"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1364",
    "display" : "Confirmación Diagnóstico Cáncer invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "24"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1365",
    "display" : "Etapificación Cáncer Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "24"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1366",
    "display" : "Tratamiento Cáncer Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "24"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1367",
    "display" : "Seguimiento Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "24"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "1374",
    "display" : "Tratamiento Quirúrgico Endoprótesis Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "30"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1375",
    "display" : "Control Seguimiento Traumatólogo Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "30"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1376",
    "display" : "Tratamiento Kinesiólogo Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "30"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1377",
    "display" : "Tratamiento Quirúrgico Endoprótesis Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "31"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1378",
    "display" : "Control Seguimiento Traumatólogo Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "31"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1379",
    "display" : "Tratamiento Kinesiólogo Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "31"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "1380",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "15"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1381",
    "display" : "Tratamiento - Ortopedia Prequirúrgica Fisura Labial",
    "property" : [{
      "code" : "rama",
      "valueString" : "32"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1382",
    "display" : "Tratamiento Cierre Labial - Fisura Labial",
    "property" : [{
      "code" : "rama",
      "valueString" : "32"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1383",
    "display" : "Control Especialista Post-Cirugía Fisura Labial",
    "property" : [{
      "code" : "rama",
      "valueString" : "32"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1384",
    "display" : "Tratamiento Quirúrgico Fisura Labial con Malformación Craneofacial",
    "property" : [{
      "code" : "rama",
      "valueString" : "32"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1385",
    "display" : "Ortopedia Pre-Quirúrgica Fisura Palatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "33"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1386",
    "display" : "Tratamiento Quirúrgico Cierre Paladar Blando Fisura Palatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "33"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1387",
    "display" : "Tratamiento Quirúrgico Cierre Paladar Duro Fisura Palatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "33"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1388",
    "display" : "Control Especialista Post-Cirugía Fisura Palatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "33"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1389",
    "display" : "Tratamiento Quirurgico Fisura Palatina con Malformación Craneofacial",
    "property" : [{
      "code" : "rama",
      "valueString" : "33"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1390",
    "display" : "Ortopedia Pre-Quirúrgica Fisura LabioPalatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "34"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1391",
    "display" : "Tratamiento Quirúrgico Cierre Labial y Paladar Blando Fisura LabioPalatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "34"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1392",
    "display" : "Tratamiento Quirúrgico Cierre Paladar Duro Fisura LabioPalatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "34"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1393",
    "display" : "Control Especialistas Post-Cirugía Fisura LabioPalatina",
    "property" : [{
      "code" : "rama",
      "valueString" : "34"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1394",
    "display" : "Tratamiento Quirúrgico Fisura LabioPalatina con Malformación Craneofacial",
    "property" : [{
      "code" : "rama",
      "valueString" : "34"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "1395",
    "display" : "Diagnóstico con Etapificación Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "1"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1396",
    "display" : "Tratamiento Quimioterapia Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "1"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1397",
    "display" : "Tratamiento de Transplante Médula Osea Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "1"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1398",
    "display" : "Control Especialista Seguimiento Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "1"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1399",
    "display" : "Diagnóstico Linfoma y Tumores Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "37"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1400",
    "display" : "Tratamiento - Quimioterapia Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "59"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1401",
    "display" : "Tratamiento - Radioterapia Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "59"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1402",
    "display" : "Tratamiento Radioterapia Problema Cicatrización Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "59"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1403",
    "display" : "Tratamiento de Transplante Médula Osea Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "59"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1404",
    "display" : "Control Especialista Seguimiento Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "59"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1405",
    "display" : "Tratamiento - Quimioterapia Tumor Solido",
    "property" : [{
      "code" : "rama",
      "valueString" : "60"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1406",
    "display" : "Tratamiento - Radioterapia Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "60"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1407",
    "display" : "Tratamiento Radioterapia Problema Cicatrización Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "60"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1408",
    "display" : "Tratamiento de Transplante Médula Osea Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "60"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1409",
    "display" : "Control Especialista Seguimiento Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "60"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "1410",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "8"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1411",
    "display" : "Tratamiento Bilateral - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "58"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1412",
    "display" : "Tratamiento Bilateral - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "58"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1413",
    "display" : "Tratamiento Bilateral - Quimioterapia Problema de Cicatrización",
    "property" : [{
      "code" : "rama",
      "valueString" : "58"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1414",
    "display" : "Tratamiento Bilateral - Hormonoterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "58"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1415",
    "display" : "Seguimiento Bilateral - Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "58"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1416",
    "display" : "Tratamiento Unilateral Derecha - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "56"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1417",
    "display" : "Tratamiento Unilateral Derecha - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "56"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1418",
    "display" : "Tratamiento Unilateral Derecha - Quimioterapia Problema por Cicatrización",
    "property" : [{
      "code" : "rama",
      "valueString" : "56"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1419",
    "display" : "Seguimiento Unilateral Derecha - Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "56"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1420",
    "display" : "Tratamiento Unilateral Izquierda - Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "57"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1421",
    "display" : "Tratamiento Unilateral IZquierda - Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "57"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1422",
    "display" : "Tratamiento Unilateral Izquierda - Quimioterapia Problema por Cicatrización",
    "property" : [{
      "code" : "rama",
      "valueString" : "57"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1423",
    "display" : "Seguimiento Unilateral Izquierda - Control Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "57"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "1424",
    "display" : "Confirmación Prenatal Cardiopatía Congénita",
    "property" : [{
      "code" : "rama",
      "valueString" : "9"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1425",
    "display" : "Confirmación Diagnóstico Post-Natal entre 0 y 7 días",
    "property" : [{
      "code" : "rama",
      "valueString" : "9"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1426",
    "display" : "Confirmación Diagnóstico 8 a 28 días",
    "property" : [{
      "code" : "rama",
      "valueString" : "9"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1427",
    "display" : "Confirmación Diagnóstico Recién Nacido 28 días a 2 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "9"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1428",
    "display" : "Confirmación Diagnóstico 2 años a 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "9"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1429",
    "display" : "CCO Otras. Tratamiento Quirúrgico tiempo Variable",
    "property" : [{
      "code" : "rama",
      "valueString" : "21"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1430",
    "display" : "CCO Otras. Control desde alta por Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "21"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1431",
    "display" : "CCO Grave. hospitalización",
    "property" : [{
      "code" : "rama",
      "valueString" : "22"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1432",
    "display" : "CCO Grave. Tratamiento Quirúrgico Cardiopatía Grave",
    "property" : [{
      "code" : "rama",
      "valueString" : "22"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1433",
    "display" : "CCO Grave. Control desde el alta por cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "22"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "1434",
    "display" : "Diagnóstico - Factores de Riesgo.",
    "property" : [{
      "code" : "rama",
      "valueString" : "45"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1435",
    "display" : "Evaluación por Profesional",
    "property" : [{
      "code" : "rama",
      "valueString" : "45"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1436",
    "display" : "Tratamiento Prevención Parto Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "45"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1437",
    "display" : "Diagnóstico Retinopatía del Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "46"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1438",
    "display" : "Tratamiento Retinopatía del Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "46"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1439",
    "display" : "Tratamiento - Lentes.",
    "property" : [{
      "code" : "rama",
      "valueString" : "46"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1440",
    "display" : "Seguimiento con Cirugía o Láser",
    "property" : [{
      "code" : "rama",
      "valueString" : "46"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1441",
    "display" : "Seguimiento Sin Cirugía o Láser",
    "property" : [{
      "code" : "rama",
      "valueString" : "46"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1442",
    "display" : "Tratamiento Displasia Broncopulmonar",
    "property" : [{
      "code" : "rama",
      "valueString" : "47"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1443",
    "display" : "Seguimiento Displasia Broncopulmonar",
    "property" : [{
      "code" : "rama",
      "valueString" : "47"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1444",
    "display" : "Diagnóstico Hipoacusia",
    "property" : [{
      "code" : "rama",
      "valueString" : "48"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1445",
    "display" : "Tratamiento - Audífonos.",
    "property" : [{
      "code" : "rama",
      "valueString" : "48"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1446",
    "display" : "Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "48"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1447",
    "display" : "Seguimiento - Hipoacusia",
    "property" : [{
      "code" : "rama",
      "valueString" : "48"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "1500",
    "display" : "Tratamiento Artrosis de Cadera Leve o Moderada",
    "property" : [{
      "code" : "rama",
      "valueString" : "200"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "41"
    }]
  },
  {
    "code" : "1501",
    "display" : "Atención por Especialista Artrosis de Cadera Leve o Moderada",
    "property" : [{
      "code" : "rama",
      "valueString" : "200"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "41"
    }]
  },
  {
    "code" : "1502",
    "display" : "Tratamiento Artrosis de Rodilla Leve o Moderada",
    "property" : [{
      "code" : "rama",
      "valueString" : "201"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "41"
    }]
  },
  {
    "code" : "1503",
    "display" : "Atención por Especialista Artrosis de Rodilla Leve o Moderada",
    "property" : [{
      "code" : "rama",
      "valueString" : "201"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "41"
    }]
  },
  {
    "code" : "1510",
    "display" : "Confirmación Diagnóstica de Hemorragia Subaracnoidea Aneurisma Roto",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "1511",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "1512",
    "display" : "Seguimiento Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "1520",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "1521",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "1522",
    "display" : "Control con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "1530",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "204"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "44"
    }]
  },
  {
    "code" : "1531",
    "display" : "Seguimiento - Control con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "204"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "44"
    }]
  },
  {
    "code" : "1540",
    "display" : "Confirmación Diagnóstica Leucemia Aguda",
    "property" : [{
      "code" : "rama",
      "valueString" : "205"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1541",
    "display" : "Tratamiento de Soporte Leucemia Aguda",
    "property" : [{
      "code" : "rama",
      "valueString" : "205"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1542",
    "display" : "Quimioterapia Leucemia Aguda",
    "property" : [{
      "code" : "rama",
      "valueString" : "205"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1543",
    "display" : "Seguimiento - Primer Control - Leucemia Aguda",
    "property" : [{
      "code" : "rama",
      "valueString" : "205"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1544",
    "display" : "Confirmación Diagnóstica Leucemia Crónica",
    "property" : [{
      "code" : "rama",
      "valueString" : "206"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1545",
    "display" : "Tratamiento de Soporte Leucemia Crónica",
    "property" : [{
      "code" : "rama",
      "valueString" : "206"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1546",
    "display" : "Quimioterapia Leucemia Crónica",
    "property" : [{
      "code" : "rama",
      "valueString" : "206"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1547",
    "display" : "Seguimiento - Primer Control - Leucemia Crónica",
    "property" : [{
      "code" : "rama",
      "valueString" : "206"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "45"
    }]
  },
  {
    "code" : "1550",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "207"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "47"
    }]
  },
  {
    "code" : "1560",
    "display" : "Tratamiento Politraumatismo Sin Lesión Medular",
    "property" : [{
      "code" : "rama",
      "valueString" : "208"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "48"
    }]
  },
  {
    "code" : "1561",
    "display" : "Tratamiento Politraumatismo Con Lesión Medular",
    "property" : [{
      "code" : "rama",
      "valueString" : "209"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "48"
    }]
  },
  {
    "code" : "1570",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "210"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "49"
    }]
  },
  {
    "code" : "1571",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "210"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "49"
    }]
  },
  {
    "code" : "1580",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "211"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "50"
    }]
  },
  {
    "code" : "1581",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "211"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "50"
    }]
  },
  {
    "code" : "1590",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "212"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "51"
    }]
  },
  {
    "code" : "1600",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "213"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "52"
    }]
  },
  {
    "code" : "1610",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "214"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "53"
    }]
  },
  {
    "code" : "1620",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "215"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "54"
    }]
  },
  {
    "code" : "1630",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "1631",
    "display" : "Seguimiento - Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "1640",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "56"
    }]
  },
  {
    "code" : "1730",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "343"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "60"
    }]
  },
  {
    "code" : "1740",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1750",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1760",
    "display" : "Atención con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "344"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1770",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "345"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "1780",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "346"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "1790",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "347"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "64"
    }]
  },
  {
    "code" : "1795",
    "display" : "Tratamiento - Peritoneodiálisis de 15 años y más",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "1830",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11100"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "60"
    }]
  },
  {
    "code" : "1840",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1850",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1860",
    "display" : "Atención con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "11101"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "61"
    }]
  },
  {
    "code" : "1870",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "1880",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11103"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "1890",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11104"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "64"
    }]
  },
  {
    "code" : "1895",
    "display" : "Atención Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "11104"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "64"
    }]
  },
  {
    "code" : "1900",
    "display" : "Screning de Radiografía de Caderas",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "65"
    }]
  },
  {
    "code" : "1910",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "65"
    }]
  },
  {
    "code" : "1920",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11105"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "65"
    }]
  },
  {
    "code" : "1930",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "66"
    }]
  },
  {
    "code" : "1940",
    "display" : "Alta integral",
    "property" : [{
      "code" : "rama",
      "valueString" : "11106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "66"
    }]
  },
  {
    "code" : "1950",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "1960",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "1970",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "68"
    }]
  },
  {
    "code" : "1980",
    "display" : "Evaluación Pre-Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "68"
    }]
  },
  {
    "code" : "1990",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "68"
    }]
  },
  {
    "code" : "2000",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "69"
    }]
  },
  {
    "code" : "2010",
    "display" : "Evaluación Pre-Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "69"
    }]
  },
  {
    "code" : "2020",
    "display" : "Tratamiento farmacológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "69"
    }]
  },
  {
    "code" : "2030",
    "display" : "Sospecha Primer Screening",
    "property" : [{
      "code" : "rama",
      "valueString" : "11110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "57"
    }]
  },
  {
    "code" : "2040",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "57"
    }]
  },
  {
    "code" : "2050",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "57"
    }]
  },
  {
    "code" : "2060",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11110"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "57"
    }]
  },
  {
    "code" : "2070",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "58"
    }]
  },
  {
    "code" : "2080",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "58"
    }]
  },
  {
    "code" : "2090",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "2100",
    "display" : "Tratamiento Audífonos",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "2110",
    "display" : "Tratamiento Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "2120",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "2130",
    "display" : "Tratamiento AV Igual o Inferior a 0,1 Bilateral.",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2131",
    "display" : "Tratamiento AV Igual o Inferior a 0,3 Bilateral.",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2132",
    "display" : "Tratamiento AV Igual o Inferior a 0,1 Unilateral Derecha.",
    "property" : [{
      "code" : "rama",
      "valueString" : "140"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2133",
    "display" : "Tratamiento AV Igual o Inferior a 0,1 Unilateral Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "141"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2134",
    "display" : "Tratamiento AV Igual o Inferior a 0,3 Unilateral Derecha.",
    "property" : [{
      "code" : "rama",
      "valueString" : "140"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2135",
    "display" : "Tratamiento AV Igual o Inferior a 0,3 Unilateral Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "141"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "2200",
    "display" : "Acceso Vascular para Hemodiálisis en Personas de 15 años y más",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "2201",
    "display" : "Cirugía Secundaria",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "2202",
    "display" : "Acceso Vascular para Hemodiálisis en Menores de 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "3200",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "3201",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "151"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "17"
    }]
  },
  {
    "code" : "3202",
    "display" : "Tamizaje",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "3203",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "3204",
    "display" : "Tratamientos Adyuvantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "3205",
    "display" : "Etapificación Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3206",
    "display" : "Tratamientos Adyuvantes Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3207",
    "display" : "Etapificación Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3208",
    "display" : "Tratamientos Adyuvantes Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3209",
    "display" : "Etapificación Unilateral Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3210",
    "display" : "Tratamientos Adyuvantes Unilateral Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "3211",
    "display" : "Diagnóstico-Etapificación Mama Derecha.",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "3212",
    "display" : "Tratamientos Adyuvantes Mama Derecha.",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "3213",
    "display" : "Diagnóstico-Etapificación Mama Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "3214",
    "display" : "Tratamientos Adyuvantes Mama Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "3215",
    "display" : "Recambio de Prótesis de Cadera Derecha.",
    "property" : [{
      "code" : "rama",
      "valueString" : "130"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "3216",
    "display" : "Recambio de Prótesis de Cadera Izquierda.",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "3217",
    "display" : "Tratamiento Retención Urinaria Aguda Repetida.",
    "property" : [{
      "code" : "rama",
      "valueString" : "111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "35"
    }]
  },
  {
    "code" : "3218",
    "display" : "Tratamiento Retención Urinaria Crónica.",
    "property" : [{
      "code" : "rama",
      "valueString" : "111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "35"
    }]
  },
  {
    "code" : "4001",
    "display" : "Tratamiento Inicio o Cambio PRECOZ",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4002",
    "display" : "Tratamiento Inicio o Cambio No PRECOZ",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4003",
    "display" : "Tratamiento en Embarazadas VIH",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4004",
    "display" : "Tratamiento Parto",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4005",
    "display" : "Tratamiento en Recién Nacido",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4006",
    "display" : "Cambio de esquema en embarazada",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4007",
    "display" : "Tratamiento Lupus",
    "property" : [{
      "code" : "rama",
      "valueString" : "11255"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "78"
    }]
  },
  {
    "code" : "4008",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11253"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "76"
    }]
  },
  {
    "code" : "4009",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11257"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "80"
    }]
  },
  {
    "code" : "4010",
    "display" : "Atención con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "11257"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "80"
    }]
  },
  {
    "code" : "4011",
    "display" : "Tratamiento Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11251"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "74"
    }]
  },
  {
    "code" : "4012",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11251"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "74"
    }]
  },
  {
    "code" : "4013",
    "display" : "Tratamiento Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11256"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "79"
    }]
  },
  {
    "code" : "4014",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11256"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "79"
    }]
  },
  {
    "code" : "4015",
    "display" : "Tratamiento Inicio",
    "property" : [{
      "code" : "rama",
      "valueString" : "11252"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "75"
    }]
  },
  {
    "code" : "4016",
    "display" : "Hospitalización",
    "property" : [{
      "code" : "rama",
      "valueString" : "11252"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "75"
    }]
  },
  {
    "code" : "4017",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4018",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4019",
    "display" : "Seguimiento Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4020",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4021",
    "display" : "Tratamiento Primario Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4022",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4023",
    "display" : "Seguimiento Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4024",
    "display" : "Confirmación Diagnóstica y Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4025",
    "display" : "Tratamiento Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4026",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4027",
    "display" : "Seguimiento Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4028",
    "display" : "Cirugía Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11248"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "71"
    }]
  },
  {
    "code" : "4029",
    "display" : "Confirmación Diagnóstica y Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11248"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "71"
    }]
  },
  {
    "code" : "4030",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11248"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "71"
    }]
  },
  {
    "code" : "4031",
    "display" : "Seguimiento Primer Control",
    "property" : [{
      "code" : "rama",
      "valueString" : "11248"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "71"
    }]
  },
  {
    "code" : "4032",
    "display" : "Tratamiento Audífonos",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4033",
    "display" : "Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4034",
    "display" : "Seguimiento Primer Control Audífono/Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4035",
    "display" : "Acceso Vascular para Hemodiálisis",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "4036",
    "display" : "Tratamiento Peritoneodiálisis",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "4037",
    "display" : "Tratamiento Hemodiálisis",
    "property" : [{
      "code" : "rama",
      "valueString" : "125"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "1"
    }]
  },
  {
    "code" : "4038",
    "display" : "Diagnóstico",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4039",
    "display" : "Tratamiento Kinesiológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "122"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "19"
    }]
  },
  {
    "code" : "4040",
    "display" : "Tratamiento Kinesiológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "123"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "20"
    }]
  },
  {
    "code" : "4041",
    "display" : "Cirugía Primaria",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "4042",
    "display" : "Evaluación por Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "127"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "22"
    }]
  },
  {
    "code" : "4043",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4044",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4091",
    "display" : "Confirmación Diagnóstica Post-Natal entre 8 días y menor a 2 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "152"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "4092",
    "display" : "Confirmación Diagnóstica Post-Natal entre mayor o igual a 2 años y menor a 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "152"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "2"
    }]
  },
  {
    "code" : "4093",
    "display" : "Tamizaje Retinopatía Diabética",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4094",
    "display" : "Primer Tamizaje",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4242",
    "display" : "Tratamiento Médico",
    "property" : [{
      "code" : "rama",
      "valueString" : "111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "35"
    }]
  },
  {
    "code" : "4244",
    "display" : "Tratamiento Politraumatismo Con/Sin Lesión Medular",
    "property" : [{
      "code" : "rama",
      "valueString" : "209"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "48"
    }]
  },
  {
    "code" : "4245",
    "display" : "Atención con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4246",
    "display" : "Evaluación por Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "11100"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "60"
    }]
  },
  {
    "code" : "4247",
    "display" : "Rehabilitación Disrafia Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4248",
    "display" : "Tratamiento Primario o Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4249",
    "display" : "Tratamiento-Cambio Procesador",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "4250",
    "display" : "Cambio de Procesador en Implante Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4251",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "4252",
    "display" : "Confirmación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4253",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "4254",
    "display" : "Cambio Accesorios del Procesador Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4255",
    "display" : "Seguimiento Disrafia Espinal Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4256",
    "display" : "Entrega de Bastones, Cojines y Colchón",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4257",
    "display" : "Entrega de Andadores y Sillas de Ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4258",
    "display" : "Entrega de Bastones, Cojines y Colchón",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4259",
    "display" : "Entrega Silla de Ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4260",
    "display" : "Entrega de Bastones, Cojines y Colchón",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4261",
    "display" : "Entrega Silla de Ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4262",
    "display" : "Entrega de Bastones, Cojines y Colchón",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4263",
    "display" : "Entrega de Andador y Silla de Ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4264",
    "display" : "Cambio Accesorios del Procesador Coclear",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "4271",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4272",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4273",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4274",
    "display" : "Tratamientos Adyuvantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4275",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4281",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4282",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4283",
    "display" : "Tratamientos Adyuvantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4300",
    "display" : "Confirmación-Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "85"
    }]
  },
  {
    "code" : "4301",
    "display" : "Confirmación-Diagnóstica Diferenciada",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "85"
    }]
  },
  {
    "code" : "4302",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11550"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "85"
    }]
  },
  {
    "code" : "4303",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4304",
    "display" : "Tratamiento Primario",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4305",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4306",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4401",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4402",
    "display" : "Tratamiento Quirúrgico Alto Riesgo",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4403",
    "display" : "Tratamiento Quirúrgico Riesgo Intermedio",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4404",
    "display" : "Tratamiento Quirúrgico Bajo Riesgo",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4405",
    "display" : "Tratamiento Adyuvante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4406",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4420",
    "display" : "Consulta Médica",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4421",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4425",
    "display" : "Terapia para prevención vertical puerperio",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "4430",
    "display" : "Rehabilitación - Bastón de apoyo o de mano",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4431",
    "display" : "Rehabilitación - Bastón codera móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4432",
    "display" : "Rehabilitación - Colchón anti-escaras celdas de aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4433",
    "display" : "Rehabilitación - Colchón anti-escaras visco-elástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4434",
    "display" : "Rehabilitación - Cojín anti-escaras visco-elástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4435",
    "display" : "Rehabilitación - Cojín anti-escaras celdas de aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4436",
    "display" : "Rehabilitación - Silla de ruedas estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4437",
    "display" : "Rehabilitación - Silla de ruedas neurológica",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4438",
    "display" : "Rehabilitación - Andador sin ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4439",
    "display" : "Rehabilitación - Andador con dos ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4440",
    "display" : "Rehabilitación - Andador con cuatro ruedas y canasta",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4450",
    "display" : "Rehabilitación - Bastón de Apoyo o de Mano",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4451",
    "display" : "Rehabilitación - Cojín Anti escaras Celdas de Aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4452",
    "display" : "Rehabilitación - Cojín Anti escaras Viscoelástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4453",
    "display" : "Rehabilitación - Colchón Anti escaras Celdas de Aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4454",
    "display" : "Rehabilitación - Órtesis Antiequino",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4455",
    "display" : "Rehabilitación - Silla de Rueda Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4456",
    "display" : "Rehabilitación - Andador con dos Ruedas y Asiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4457",
    "display" : "Rehabilitación - Andador con cuatro Ruedas y Canasta",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4458",
    "display" : "Rehabilitación - Andador Sin Ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "11102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "62"
    }]
  },
  {
    "code" : "4460",
    "display" : "Rehabilitación - Bastón Codera Móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4461",
    "display" : "Rehabilitación - Cojín anti-escara visco elástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4462",
    "display" : "Rehabilitación - Colchón Anti-escaras Celdas de Aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4463",
    "display" : "Rehabilitación - Silla de Ruedas Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4464",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4471",
    "display" : "Atención con Kinesiólogo",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4472",
    "display" : "Atención con Fonoaudiólogo",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4473",
    "display" : "Atención con Terapeuta Ocupacional",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4481",
    "display" : "Rehabilitación - Bastones Codera Móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4482",
    "display" : "Rehabilitación - Silla de Ruedas Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4483",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4484",
    "display" : "Rehabilitación - Cojín Antiescaras viscoelástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4485",
    "display" : "Rehabilitación - Colchón Antiescaras Celdas de aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4491",
    "display" : "Rehabilitación - Bastones Codera Fija",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4492",
    "display" : "Rehabilitación - Bastones Codera Móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4493",
    "display" : "Rehabilitación - Silla de Ruedas Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4494",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4495",
    "display" : "Rehabilitación - Andador con Apoyo Antebraquial",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4496",
    "display" : "Rehabilitación - Andador con dos ruedas",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4497",
    "display" : "Rehabilitación - Cojín Antiescaras viscoelástico",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4498",
    "display" : "Rehabilitación - Cojín Antiescaras celdas de aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4499",
    "display" : "Rehabilitación - Colchón Antiescaras Celdas de aire",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4500",
    "display" : "Seguimiento Disrafia Espinal Abierta",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4501",
    "display" : "Tratamiento Quirúrgico con AV <= 0,1",
    "property" : [{
      "code" : "rama",
      "valueString" : "140"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4502",
    "display" : "Tratamiento Quirúrgico con AV <= 0,1",
    "property" : [{
      "code" : "rama",
      "valueString" : "141"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4503",
    "display" : "Tratamiento Quirúrgico con AV <= 0,1",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4504",
    "display" : "Tratamiento Quirúrgico con AV <= 0,3",
    "property" : [{
      "code" : "rama",
      "valueString" : "140"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4505",
    "display" : "Tratamiento Quirúrgico con AV <= 0,3",
    "property" : [{
      "code" : "rama",
      "valueString" : "141"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4506",
    "display" : "Tratamiento Quirúrgico con AV <= 0,3",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4507",
    "display" : "Tratamiento Quirúrgico en 2° Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "142"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "11"
    }]
  },
  {
    "code" : "4509",
    "display" : "Primera Respuesta",
    "property" : [{
      "code" : "rama",
      "valueString" : "11702"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "86"
    }]
  },
  {
    "code" : "4510",
    "display" : "Seguimiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11702"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "86"
    }]
  },
  {
    "code" : "4511",
    "display" : "Rehabilitación COVID 19",
    "property" : [{
      "code" : "rama",
      "valueString" : "12040"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "87"
    }]
  },
  {
    "code" : "4512",
    "display" : "Tratamiento Pre-Invasor Bajo Grado",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4513",
    "display" : "Tratamiento Pre-Invasor Alto Grado",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4514",
    "display" : "Seguimiento Pre-Invasor Bajo Grado",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4515",
    "display" : "Seguimiento Pre-Invasor Alto Grado",
    "property" : [{
      "code" : "rama",
      "valueString" : "135"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4516",
    "display" : "Tratamiento Invasor",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4517",
    "display" : "Tratamiento Adyuvante Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4518",
    "display" : "Tratamiento Adyuvante Radioterapia y Braquiterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4521",
    "display" : "Tratamiento Primario-Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4522",
    "display" : "Tratamiento Primario-Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4523",
    "display" : "Tratamiento Primario-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4524",
    "display" : "Tratamiento Adyuvante-Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4525",
    "display" : "Tratamiento Adyuvante-Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4526",
    "display" : "Tratamiento Adyuvante-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11500"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "81"
    }]
  },
  {
    "code" : "4528",
    "display" : "Orquiectomía",
    "property" : [{
      "code" : "rama",
      "valueString" : "143"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4529",
    "display" : "Tratamiento Radioterapia Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4530",
    "display" : "Tratamiento Quimioterapia Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4531",
    "display" : "Tratamiento Hormonoterapia Bilateral",
    "property" : [{
      "code" : "rama",
      "valueString" : "146"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4532",
    "display" : "Tratamiento Radioterapia Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4533",
    "display" : "Tratamiento Quimioterapia Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4534",
    "display" : "Tratamiento Hormonoterapia Unilateral Derecha",
    "property" : [{
      "code" : "rama",
      "valueString" : "144"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4535",
    "display" : "Tratamiento Radioterapia Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4536",
    "display" : "Tratamiento Quimioterapia Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4537",
    "display" : "Tratamiento Hormonoterapia Unilateral Izquierda",
    "property" : [{
      "code" : "rama",
      "valueString" : "145"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "16"
    }]
  },
  {
    "code" : "4541",
    "display" : "Tratamiento Adyuvante-Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "4542",
    "display" : "Tratamiento Adyuvante-Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "4543",
    "display" : "Tratamiento Adyuvante-Radioterapia y Braquiterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "4544",
    "display" : "Tratamiento Adyuvante-Hormonoterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "106"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "28"
    }]
  },
  {
    "code" : "4551",
    "display" : "Tratamiento Neoadyuvante Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4552",
    "display" : "Tratamiento Neoadyuvante Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4553",
    "display" : "Tratamiento Adyuvante Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4554",
    "display" : "Tratamiento Adyuvante Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4555",
    "display" : "Reconstitución de Tránsito",
    "property" : [{
      "code" : "rama",
      "valueString" : "11247"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "70"
    }]
  },
  {
    "code" : "4561",
    "display" : "Tratamiento Primario-Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4562",
    "display" : "Tratamiento Primario-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4563",
    "display" : "Tratamiento Primario-Sistémico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4564",
    "display" : "Tratamiento Adyuvante-Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4565",
    "display" : "Tratamiento Adyuvante-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4566",
    "display" : "Tratamiento Adyuvante-Sistémico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11600"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "83"
    }]
  },
  {
    "code" : "4571",
    "display" : "Tratamiento Primario-Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4572",
    "display" : "Tratamiento Primario-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4573",
    "display" : "Tratamiento Adyuvante-Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4574",
    "display" : "Tratamiento Adyuvante-Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11551"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "84"
    }]
  },
  {
    "code" : "4581",
    "display" : "Etapificación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4582",
    "display" : "Tratamiento Adyuvante Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4583",
    "display" : "Tratamiento Adyuvante Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4584",
    "display" : "Tratamiento Adyuvante Prevención de Recurrencia",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4585",
    "display" : "Tratamiento Concomitante",
    "property" : [{
      "code" : "rama",
      "valueString" : "11249"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "72"
    }]
  },
  {
    "code" : "4591",
    "display" : "Tratamiento Quirúrgico Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "164"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "4592",
    "display" : "Catéter Venoso Leucemia",
    "property" : [{
      "code" : "rama",
      "valueString" : "161"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "4593",
    "display" : "Catéter Venoso Linfoma",
    "property" : [{
      "code" : "rama",
      "valueString" : "163"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "4594",
    "display" : "Catéter Venoso Tumor Sólido",
    "property" : [{
      "code" : "rama",
      "valueString" : "164"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "14"
    }]
  },
  {
    "code" : "4601",
    "display" : "Cambio de generador y/o electrodo",
    "property" : [{
      "code" : "rama",
      "valueString" : "147"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "4602",
    "display" : "Recambio Marcapaso",
    "property" : [{
      "code" : "rama",
      "valueString" : "147"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "25"
    }]
  },
  {
    "code" : "4603",
    "display" : "Tratamiento Adyuvante Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "4604",
    "display" : "Tratamiento Adyuvante Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "108"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "27"
    }]
  },
  {
    "code" : "4611",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4612",
    "display" : "Rehabilitación - Silla de Rueda Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4613",
    "display" : "Rehabilitación - Bastón Canadiense Codera móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4614",
    "display" : "Rehabilitación - Andador sin Ruedas Articulado",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4615",
    "display" : "Rehabilitación - Andador con dos Ruedas y Asiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4616",
    "display" : "Entrega de Vendaje",
    "property" : [{
      "code" : "rama",
      "valueString" : "11250"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "73"
    }]
  },
  {
    "code" : "4617",
    "display" : "Etapificación de Cáncer de Tiroides",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4618",
    "display" : "Etapificación Cáncer Anaplásico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4619",
    "display" : "Tratamiento Quirúrgico Anaplásico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4620",
    "display" : "Tratamiento Sistémico",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4621",
    "display" : "Re-estadificación de Riesgo",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4622",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11700"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "82"
    }]
  },
  {
    "code" : "4631",
    "display" : "Tratamiento Secundario",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "4632",
    "display" : "Tratamientos Adyuvantes Mama Derecha Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4633",
    "display" : "Tratamientos Adyuvantes Mama Derecha Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4634",
    "display" : "Tratamientos Adyuvantes Mama Derecha Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4635",
    "display" : "Tratamientos Adyuvantes Mama Derecha Hormonoterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "137"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4636",
    "display" : "Tratamientos Adyuvantes Mama Izquierda Quimioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4637",
    "display" : "Tratamientos Adyuvantes Mama Izquierda Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4638",
    "display" : "Tratamientos Adyuvantes Mama Izquierda Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4639",
    "display" : "Tratamientos Adyuvantes Mama Izquierda Hormonoterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "138"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "8"
    }]
  },
  {
    "code" : "4641",
    "display" : "Tratamiento inicial mayores a 15 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "4642",
    "display" : "Rehabilitación Hospitalizado",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "4643",
    "display" : "Rehabilitación Ambulatorio",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "4644",
    "display" : "Entrega de Ayudas Técnicas",
    "property" : [{
      "code" : "rama",
      "valueString" : "216"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "55"
    }]
  },
  {
    "code" : "4645",
    "display" : "Atención por Especialista Oftalmología",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4646",
    "display" : "Atención por Especialista Endocrinología",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4647",
    "display" : "Atención por Especialista Diabetes",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4648",
    "display" : "Fondo de Ojo",
    "property" : [{
      "code" : "rama",
      "valueString" : "129"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "7"
    }]
  },
  {
    "code" : "4651",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Inclina",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4652",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Basculantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "121"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "36"
    }]
  },
  {
    "code" : "4653",
    "display" : "Tratamiento de Rescate",
    "property" : [{
      "code" : "rama",
      "valueString" : "11109"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "69"
    }]
  },
  {
    "code" : "4654",
    "display" : "Rehabilitación - Hospitalizado",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4655",
    "display" : "Rehabilitación - Ambulatorio",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4656",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Inclina",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4661",
    "display" : "Tratamiento Fotocoagulación - no proliferativa",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "4662",
    "display" : "Tratamiento Fotocoagulación - proliferativa",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "4663",
    "display" : "Tratamiento Vitrectomía - no proliferativa",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "4664",
    "display" : "Tratamiento Vitrectomía - proliferativa",
    "property" : [{
      "code" : "rama",
      "valueString" : "120"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "31"
    }]
  },
  {
    "code" : "4667",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Basculantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "113"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "37"
    }]
  },
  {
    "code" : "4671",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "213"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "52"
    }]
  },
  {
    "code" : "4672",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "213"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "52"
    }]
  },
  {
    "code" : "4673",
    "display" : "Recambio de Audífono",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "56"
    }]
  },
  {
    "code" : "4674",
    "display" : "Audiometría",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "56"
    }]
  },
  {
    "code" : "4675",
    "display" : "Atención por Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "56"
    }]
  },
  {
    "code" : "4676",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "217"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "56"
    }]
  },
  {
    "code" : "4681",
    "display" : "Confirmación Diagnóstica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4682",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11254"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "77"
    }]
  },
  {
    "code" : "4691",
    "display" : "Rehabilitación Politraumatizado Grave Con Lesión Medular",
    "property" : [{
      "code" : "rama",
      "valueString" : "209"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "48"
    }]
  },
  {
    "code" : "4701",
    "display" : "Rehabilitación EMRR",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4702",
    "display" : "Rehabilitación Integral en Brote EMRR",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4703",
    "display" : "Rehabilitación Bastón Codera Móvil",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4704",
    "display" : "Rehabilitación Silla de Ruedas Estándar",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4705",
    "display" : "Rehabilitación Andador con Cuatro Ruedas y Canasto",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4706",
    "display" : "Rehabilitación Ortesis Tobillo-Pie",
    "property" : [{
      "code" : "rama",
      "valueString" : "11107"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "67"
    }]
  },
  {
    "code" : "4721",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11103"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "4722",
    "display" : "Rehabilitación Férula Cock-up",
    "property" : [{
      "code" : "rama",
      "valueString" : "11103"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "4723",
    "display" : "Rehabilitación Palmeta Reposo",
    "property" : [{
      "code" : "rama",
      "valueString" : "11103"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "4724",
    "display" : "Rehabilitación Órtesis Tobillo-Pie",
    "property" : [{
      "code" : "rama",
      "valueString" : "11103"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "63"
    }]
  },
  {
    "code" : "4731",
    "display" : "Rehabilitación - Ortesis Pelvipedio",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4732",
    "display" : "Rehabilitación - Corset",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4733",
    "display" : "Rehabilitación - Ortesis Tobillo",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4734",
    "display" : "Rehabilitación - Sitting",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4735",
    "display" : "Rehabilitación - Canaletas",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4741",
    "display" : "Rehabilitación - Disrafia Abierta de 0 a <19 meses",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4742",
    "display" : "Rehabilitación - Disrafia Abierta de >=19 a <3 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4743",
    "display" : "Rehabilitación - Disrafia Abierta de >=3 años a <5 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4744",
    "display" : "Rehabilitación - Disrafia Abierta de >=5 a <16 años",
    "property" : [{
      "code" : "rama",
      "valueString" : "157"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "9"
    }]
  },
  {
    "code" : "4751",
    "display" : "Rehabilitación - Tratamiento Hospitalizado",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4752",
    "display" : "Rehabilitación - Ambulatorio",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4753",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Inclina",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4754",
    "display" : "Rehabilitación - Silla de Ruedas Neurológica Basculantes",
    "property" : [{
      "code" : "rama",
      "valueString" : "202"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "42"
    }]
  },
  {
    "code" : "4755",
    "display" : "Tratamiento Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "111"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "35"
    }]
  },
  {
    "code" : "4761",
    "display" : "Cirugía Ortognática",
    "property" : [{
      "code" : "rama",
      "valueString" : "159"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "13"
    }]
  },
  {
    "code" : "4762",
    "display" : "Tratamiento Quirúrgico Endoprótesis",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "4763",
    "display" : "Primer Control Seguimiento Traumatólogo",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "4764",
    "display" : "Recambio de Prótesis de Cadera",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "4765",
    "display" : "Rehabilitación Precoz Hospitalaria",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "4766",
    "display" : "Rehabilitación Ambulatoria",
    "property" : [{
      "code" : "rama",
      "valueString" : "131"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "12"
    }]
  },
  {
    "code" : "4771",
    "display" : "Confirmación Diagnóstica de Nefropatía Lúpica",
    "property" : [{
      "code" : "rama",
      "valueString" : "11255"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "78"
    }]
  },
  {
    "code" : "4781",
    "display" : "Rehabilitación",
    "property" : [{
      "code" : "rama",
      "valueString" : "11112"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "59"
    }]
  },
  {
    "code" : "4791",
    "display" : "Tratamiento Adyuvante Cirugía",
    "property" : [{
      "code" : "rama",
      "valueString" : "134"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  },
  {
    "code" : "4801",
    "display" : "Tratamiento Secundario Quirúrgico",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "4802",
    "display" : "Tratamiento Secundario Radioterapia",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "4803",
    "display" : "Tratamiento Secundario Medicamentoso",
    "property" : [{
      "code" : "rama",
      "valueString" : "203"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "43"
    }]
  },
  {
    "code" : "4900",
    "display" : "Tratamiento",
    "property" : [{
      "code" : "rama",
      "valueString" : "13100"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "88"
    }]
  },
  {
    "code" : "4901",
    "display" : "Diagnóstico Factores de Riesgo",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "4902",
    "display" : "Diagnóstico Síntomas de Parto Prematuro",
    "property" : [{
      "code" : "rama",
      "valueString" : "167"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "24"
    }]
  },
  {
    "code" : "5000",
    "display" : "Tratamiento Farmacológico",
    "property" : [{
      "code" : "rama",
      "valueString" : "13102"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "90"
    }]
  },
  {
    "code" : "5001",
    "display" : "Tratamiento Inmediato",
    "property" : [{
      "code" : "rama",
      "valueString" : "13101"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "89"
    }]
  },
  {
    "code" : "5002",
    "display" : "Consulta con Especialista",
    "property" : [{
      "code" : "rama",
      "valueString" : "13101"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "89"
    }]
  },
  {
    "code" : "5003",
    "display" : "Tratamiento persona Gestante VIH (+)",
    "property" : [{
      "code" : "rama",
      "valueString" : "19"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "18"
    }]
  },
  {
    "code" : "5004",
    "display" : "Tamizaje PAP",
    "property" : [{
      "code" : "rama",
      "valueString" : "133"
    },
    {
      "code" : "problemaSalud",
      "valueString" : "3"
    }]
  }]
}

```
