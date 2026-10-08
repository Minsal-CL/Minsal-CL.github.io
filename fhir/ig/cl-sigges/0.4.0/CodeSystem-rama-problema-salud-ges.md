# Ramas de problema de salud GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ramas de problema de salud GES**

## CodeSystem: Ramas de problema de salud GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSRamaProblemaSaludGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Ramas (subdivisiones por decreto) de cada problema de salud GES. Derivado de la hoja GARANTIAS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ramas de problema de salud GES](ValueSet-vs-rama-problema-salud-ges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "rama-problema-salud-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
  "version" : "0.4.0",
  "name" : "CSRamaProblemaSaludGES",
  "title" : "Ramas de problema de salud GES",
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
  "description" : "Ramas (subdivisiones por decreto) de cada problema de salud GES. Derivado de la hoja GARANTIAS.",
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
  "count" : 175,
  "property" : [{
    "code" : "problemaSalud",
    "description" : "Código del problema de salud (CSProblemaSaludGES)",
    "type" : "string"
  },
  {
    "code" : "decreto",
    "description" : "Decreto GES que define la rama",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "50",
    "display" : "Diabetes mellitus tipo 1 – Descompensación - Diabetes Mellitus I (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "51",
    "display" : "Diabetes mellitus tipo 1 – Diabetes Mellitus I (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "16",
    "display" : "Infarto agudo del miocardio (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "52",
    "display" : "Infarto agudo del miocardio – By-pass Coronario y/o Angioplastía Coronaria Percutánea (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "61",
    "display" : "Cáncer de mama en personas de 15 años y más – Unilateral Sin Precisar (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "8"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "62",
    "display" : "Tratamiento quirúrgico de cataratas – Unilateral Sin Precisar (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "64",
    "display" : "Infarto agudo del miocardio – Rama Transitoria Régimen 2004 (Infarto Agudo del Miocardio) (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "65",
    "display" : "Cardiopatías congénitas operables – Rama Transitoria Régimen 2004 (Cardiopatía Congénita Operable) (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "67",
    "display" : "Cáncer de testículo en personas de 15 años y más – Unilateral Sin Precisar (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "68",
    "display" : "Disrafias espinales – Rama Transitoria Régimen 2004 (Disrrafias Espinales) (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "9"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "70",
    "display" : "Cáncer en personas menores de 15 años – Rama Transitoria Régimen 2004 (Cáncer en Menores de 15 años) (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "105",
    "display" : "Colecistectomía preventiva del cáncer de vesícula en personas de 35 a 49 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "26"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "108",
    "display" : "Cáncer gástrico (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "27"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "107",
    "display" : "Estrabismo en personas menores de 9 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "30"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "106",
    "display" : "Cáncer de próstata en personas de 15 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "28"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "109",
    "display" : "Desprendimiento de retina regmatógeno no traumático (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "32"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "110",
    "display" : "Hemofilia (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "33"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "116",
    "display" : "Asma bronquial moderada y grave en personas menores de 15 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "39"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "121",
    "display" : "Ayudas técnicas para personas de 65 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "36"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "122",
    "display" : "Infección respiratoria aguda (IRA) de manejo ambulatorio en personas menores de 5 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "19"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "124",
    "display" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "10"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "127",
    "display" : "Epilepsia en personas desde 1 año y menores de 15 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "22"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "111",
    "display" : "Tratamiento de la hiperplasia benigna de la próstata en personas sintomáticas (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "35"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "112",
    "display" : "Depresión en personas de 15 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "34"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "113",
    "display" : "Ataque cerebrovascular isquémico en personas de 15 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "37"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "114",
    "display" : "Enfermedad pulmonar obstructiva crónica de tratamiento ambulatorio (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "38"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "115",
    "display" : "Síndrome de dificultad respiratoria en el recién nacido (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "40"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "117",
    "display" : "Vicios de refracción en personas de 65 años y más – Sospecha Vicios de Refracción (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "29"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "118",
    "display" : "Vicios de refracción en personas de 65 años y más – Presbicia Pura (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "29"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "119",
    "display" : "Vicios de refracción en personas de 65 años y más – Otros Vicios de Refracción (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "29"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "120",
    "display" : "Retinopatía diabética (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "31"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "123",
    "display" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "20"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "125",
    "display" : "Enfermedad renal crónica etapa 4 y 5 (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "1"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "126",
    "display" : "Alivio del dolor y cuidados paliativos por cáncer (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "4"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "128",
    "display" : "Hipertensión arterial primaria o esencial en personas de 15 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "21"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "129",
    "display" : "Diabetes mellitus tipo 2 (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "7"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "130",
    "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa – Derecha (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "12"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "131",
    "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa – Izquierda (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "12"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "133",
    "display" : "Cáncer cervicouterino en personas de 15 años y más – Segmento Proceso de Diagnóstico (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "3"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "135",
    "display" : "Cáncer cervicouterino en personas de 15 años y más – Pre-Invasor (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "3"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "134",
    "display" : "Cáncer cervicouterino en personas de 15 años y más – Invasor (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "3"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "137",
    "display" : "Cáncer de mama en personas de 15 años y más – Derecha (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "8"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "138",
    "display" : "Cáncer de mama en personas de 15 años y más – Izquierda (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "8"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "147",
    "display" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "25"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "149",
    "display" : "Infarto agudo del miocardio – Infarto Agudo del Miocardio (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "150",
    "display" : "Infarto agudo del miocardio – seguimiento Bypass (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "5"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "139",
    "display" : "Tratamiento quirúrgico de cataratas – Proceso de Diagnóstico (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "142",
    "display" : "Tratamiento quirúrgico de cataratas – Rama Bilateral (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "140",
    "display" : "Tratamiento quirúrgico de cataratas – Rama Unilateral Derecha (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "141",
    "display" : "Tratamiento quirúrgico de cataratas – Rama Unilateral Izquierda (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "143",
    "display" : "Cáncer de testículo en personas de 15 años y más – Caso en Sospecha y Proceso de Diagnóstico (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "146",
    "display" : "Cáncer de testículo en personas de 15 años y más – Bilateral (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "144",
    "display" : "Cáncer de testículo en personas de 15 años y más – Derecha (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "145",
    "display" : "Cáncer de testículo en personas de 15 años y más – Izquierda (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "151",
    "display" : "Linfomas en personas de 15 años y más (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "17"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "152",
    "display" : "Cardiopatías congénitas operables – Proceso de Diagnóstico (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "154",
    "display" : "Cardiopatías congénitas operables – Otras Cardiopatías Congénitas Operables (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "153",
    "display" : "Cardiopatías congénitas operables – Cardiopatía Congénita Operable Grave (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "155",
    "display" : "Diabetes mellitus tipo 1 – Descompensación - Diabetes Mellitus I (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "156",
    "display" : "Diabetes mellitus tipo 1 – Diabetes Mellitus I (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "6"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "157",
    "display" : "Disrafias espinales – Disrrafia Abierta (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "9"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "158",
    "display" : "Disrafias espinales – Disrrafia Cerrada (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "9"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "165",
    "display" : "Esquizofrenia (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "15"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "166",
    "display" : "Salud oral integral para niños y niñas de 6 años (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "23"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "159",
    "display" : "Fisura labiopalatina (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "13"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "161",
    "display" : "Cáncer en personas menores de 15 años – Leucemia (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "163",
    "display" : "Cáncer en personas menores de 15 años – Linfoma (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "164",
    "display" : "Cáncer en personas menores de 15 años – Tumor Sólido (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "162",
    "display" : "Cáncer en personas menores de 15 años – Linfoma y/o Tumor Sólido (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "167",
    "display" : "Prevención de parto prematuro – Prevención parto prematuro (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "168",
    "display" : "Prevención de parto prematuro – Retinopatía (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "169",
    "display" : "Prevención de parto prematuro – Displasia (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "170",
    "display" : "Prevención de parto prematuro – Hipoacusia (decreto nº 228)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 228"
    }]
  },
  {
    "code" : "4",
    "display" : "Alivio del dolor y cuidados paliativos por cáncer (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "4"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "42",
    "display" : "Epilepsia en personas desde 1 año y menores de 15 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "22"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "41",
    "display" : "Hipertensión arterial primaria o esencial en personas de 15 años y más (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "21"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "25",
    "display" : "Diabetes mellitus tipo 2 (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "7"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "49",
    "display" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "25"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "13",
    "display" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "10"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "14",
    "display" : "Esquizofrenia (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "15"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "40",
    "display" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "20"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "39",
    "display" : "Infección respiratoria aguda (IRA) de manejo ambulatorio en personas menores de 5 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "19"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "17",
    "display" : "Enfermedad renal crónica etapa 4 y 5 (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "1"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "18",
    "display" : "Linfomas en personas de 15 años y más (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "17"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "43",
    "display" : "Salud oral integral para niños y niñas de 6 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "23"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "26",
    "display" : "Disrafias espinales – Abierta (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "9"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "27",
    "display" : "Disrafias espinales – Cerrada (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "9"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "28",
    "display" : "Tratamiento quirúrgico de cataratas (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "3",
    "display" : "Tratamiento quirúrgico de cataratas – Bilateral (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "2",
    "display" : "Tratamiento quirúrgico de cataratas – Unilateral Derecha (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "29",
    "display" : "Tratamiento quirúrgico de cataratas – Unilateral Izquierda (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "11"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "54",
    "display" : "Cáncer de mama en personas de 15 años y más – Derecha (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "8"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "55",
    "display" : "Cáncer de mama en personas de 15 años y más – Izquierda (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "8"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "23",
    "display" : "Cáncer cervicouterino en personas de 15 años y más – Pre Invasor (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "3"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "24",
    "display" : "Cáncer cervicouterino en personas de 15 años y más – Invasor (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "3"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "30",
    "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa – Derecha (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "12"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "31",
    "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa – Izquierda (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "12"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "15",
    "display" : "Fisura labiopalatina (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "13"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "32",
    "display" : "Fisura labiopalatina – Fisura Labial (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "13"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "33",
    "display" : "Fisura labiopalatina – Fisura Palatina (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "13"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "34",
    "display" : "Fisura labiopalatina – Fisura Labiopalatina (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "13"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "1",
    "display" : "Cáncer en personas menores de 15 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "37",
    "display" : "Cáncer en personas menores de 15 años (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "59",
    "display" : "Cáncer en personas menores de 15 años – , Linfomas (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "60",
    "display" : "Cáncer en personas menores de 15 años – , Tumor Sólido (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "14"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "8",
    "display" : "Cáncer de testículo en personas de 15 años y más (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "58",
    "display" : "Cáncer de testículo en personas de 15 años y más – Bilateral (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "56",
    "display" : "Cáncer de testículo en personas de 15 años y más – Derecho (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "57",
    "display" : "Cáncer de testículo en personas de 15 años y más – Izquierdo (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "16"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "9",
    "display" : "Cardiopatías congénitas operables (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "21",
    "display" : "Cardiopatías congénitas operables – No Graves (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "22",
    "display" : "Cardiopatías congénitas operables – Grave (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "2"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "45",
    "display" : "Prevención de parto prematuro – Prevención parto prematuro (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "46",
    "display" : "Prevención de parto prematuro – Retinopatía (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "47",
    "display" : "Prevención de parto prematuro – Displasia (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "48",
    "display" : "Prevención de parto prematuro – Hipoacusia (decreto nº 170)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "24"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 170"
    }]
  },
  {
    "code" : "200",
    "display" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada – Artrosis de Cadera Leve o Moderada (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "41"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "201",
    "display" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada – Artrosis de Rodilla Leve o Moderada (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "41"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "202",
    "display" : "Hemorragia subaracnoidea secundaria a ruptura de uno o más aneurismas cerebrales (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "42"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "203",
    "display" : "Tumores primarios del sistema nervioso central en personas de 15 años y más (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "43"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "204",
    "display" : "Tratamiento quirúrgico de hernia del núcleo pulposo lumbar (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "44"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "205",
    "display" : "Leucemia en personas de 15 años y más – Leucemia Aguda (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "45"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "206",
    "display" : "Leucemia en personas de 15 años y más – Leucemia Crónica (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "45"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "207",
    "display" : "Salud oral integral de personas de 60 años (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "47"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "208",
    "display" : "Politraumatizado grave – Politraumatismo sin Lesión Medular (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "48"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "209",
    "display" : "Politraumatizado grave – Politraumatismo con Lesión Medular (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "48"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "210",
    "display" : "Traumatismo cráneo encefálico moderado o grave (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "49"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "211",
    "display" : "Trauma ocular grave (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "50"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "212",
    "display" : "Fibrosis quística (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "51"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "213",
    "display" : "Artritis reumatoidea (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "52"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "214",
    "display" : "Consumo perjudicial o dependencia de riesgo bajo a moderado de alcohol y drogas en personas menores de 20 años (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "53"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "215",
    "display" : "Analgesia del parto (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "54"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "216",
    "display" : "Gran quemado (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "55"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "217",
    "display" : "Hipoacusia bilateral en personas de 65 años y más que requieren uso de audífono (decreto nº 44)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "56"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 44"
    }]
  },
  {
    "code" : "343",
    "display" : "Epilepsia en personas de 15 años y más (Decreto Piloto 2008)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "60"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Piloto 2008"
    }]
  },
  {
    "code" : "344",
    "display" : "Asma bronquial en personas de 15 años y más (Decreto Piloto 2008)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "61"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Piloto 2008"
    }]
  },
  {
    "code" : "345",
    "display" : "Enfermedad de Parkinson (Decreto Piloto 2008)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "62"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Piloto 2008"
    }]
  },
  {
    "code" : "346",
    "display" : "Artritis idiopática juvenil (Decreto Piloto 2008)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "63"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Piloto 2008"
    }]
  },
  {
    "code" : "347",
    "display" : "Prevención secundaria enfermedad renal crónica terminal (Decreto Piloto 2008)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "64"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Piloto 2008"
    }]
  },
  {
    "code" : "11100",
    "display" : "Epilepsia en personas de 15 años y más (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "60"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11101",
    "display" : "Asma bronquial en personas de 15 años y más (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "61"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11102",
    "display" : "Enfermedad de Parkinson (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "62"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11103",
    "display" : "Artritis idiopática juvenil (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "63"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11104",
    "display" : "Prevención secundaria enfermedad renal crónica terminal (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "64"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11105",
    "display" : "Displasia luxante de caderas (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "65"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11106",
    "display" : "Salud oral integral de la persona gestante (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "66"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11107",
    "display" : "Esclerosis múltiple remitente recurrente (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "67"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11108",
    "display" : "Hepatitis crónica por virus hepatitis B (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "68"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11109",
    "display" : "Hepatitis crónica por virus hepatitis C (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "69"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11110",
    "display" : "Retinopatía del prematuro (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "57"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11111",
    "display" : "Displasia broncopulmonar del prematuro (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "58"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "11112",
    "display" : "Hipoacusia neurosensorial bilateral del prematuro (decreto n° 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "59"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 1/2010"
    }]
  },
  {
    "code" : "19",
    "display" : "Síndrome de la inmunodeficiencia adquirida VIH/SIDA (decreto nº 1/2010)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "18"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto nº 1/2010"
    }]
  },
  {
    "code" : "11255",
    "display" : "Lupus eritematoso sistémico (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "78"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11253",
    "display" : "Hipotiroidismo en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "76"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11257",
    "display" : "Tratamiento de erradicación del Helicobacter pylori (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "80"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11251",
    "display" : "Tratamiento quirúrgico de lesiones crónicas de la válvula aórtica en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "74"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11256",
    "display" : "Tratamiento quirúrgico de lesiones crónicas de las válvulas mitral y tricúspide en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "79"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11252",
    "display" : "Trastorno bipolar en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "75"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11249",
    "display" : "Cáncer vesical en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "72"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11247",
    "display" : "Cáncer colorrectal en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "70"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11250",
    "display" : "Osteosarcoma en personas de 15 años y más (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "73"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11248",
    "display" : "Cáncer de ovario epitelial (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "71"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11254",
    "display" : "Hipoacusia moderada, severa y profunda en personas menores de 4 años (decreto n° 4/2013)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "77"
    },
    {
      "code" : "decreto",
      "valueString" : "decreto n° 4/2013"
    }]
  },
  {
    "code" : "11500",
    "display" : "Cáncer de pulmón en personas de 15 años y más (Decreto Nro 22/2019)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "81"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 22/2019"
    }]
  },
  {
    "code" : "11600",
    "display" : "Cáncer renal en personas de 15 años y más (Decreto Nro 22/2019)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "83"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 22/2019"
    }]
  },
  {
    "code" : "11550",
    "display" : "Enfermedad de Alzheimer y otras demencias (Decreto Nro 22/2019)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "85"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 22/2019"
    }]
  },
  {
    "code" : "11551",
    "display" : "Mieloma múltiple en personas de 15 años y más (Decreto Nro 22/2019)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "84"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 22/2019"
    }]
  },
  {
    "code" : "11700",
    "display" : "Cáncer de tiroides en personas de 15 años y más (Decreto Nro 22/2019)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "82"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 22/2019"
    }]
  },
  {
    "code" : "11702",
    "display" : "Atención integral de salud en agresión sexual aguda (Decreto Nro 72/2022)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "86"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 72/2022"
    }]
  },
  {
    "code" : "12040",
    "display" : "Rehabilitación SARS-CoV-2 (Decreto Nro 72/2022)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "87"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 72/2022"
    }]
  },
  {
    "code" : "13100",
    "display" : "Tratamiento farmacológico tras alta hospitalaria por cirrosis hepática (Decreto Nro 29/2025)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "88"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 29/2025"
    }]
  },
  {
    "code" : "13102",
    "display" : "Cesación del consumo de tabaco en personas de 25 años y más (Decreto Nro 29/2025)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "90"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 29/2025"
    }]
  },
  {
    "code" : "13101",
    "display" : "Tratamiento hospitalario para personas menores de 15 años con depresión grave refractaria o psicótica con riesgo suicida (Decreto Nro 29/2025)",
    "property" : [{
      "code" : "problemaSalud",
      "valueString" : "89"
    },
    {
      "code" : "decreto",
      "valueString" : "Decreto Nro 29/2025"
    }]
  },
  {
    "code" : "11300",
    "display" : "Rama 11300 (sólo presente en ESTADOS HD)"
  }]
}

```
