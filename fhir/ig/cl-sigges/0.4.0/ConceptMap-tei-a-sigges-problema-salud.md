# Problema de salud: TEI → SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Problema de salud: TEI → SIGGES**

## ConceptMap: Problema de salud: TEI → SIGGES (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-problema-salud | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:TEIASIGGESProblemaSalud |

 
Códigos 1–90 de cs-problema-ges-tei a CSProblemaSaludGES. Son el mismo listado del catálogo FONASA. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "tei-a-sigges-problema-salud",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-problema-salud",
  "version" : "0.4.0",
  "name" : "TEIASIGGESProblemaSalud",
  "title" : "Problema de salud: TEI → SIGGES",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Códigos 1–90 de cs-problema-ges-tei a CSProblemaSaludGES. Son el mismo listado del catálogo FONASA.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/cs-problema-ges-tei",
    "target" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
    "element" : [{
      "code" : "1",
      "display" : "Enfermedad renal crónica etapa 4 y 5",
      "target" : [{
        "code" : "1",
        "display" : "Enfermedad renal crónica etapa 4 y 5",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "2",
      "display" : "Cardiopatías congénitas operables",
      "target" : [{
        "code" : "2",
        "display" : "Cardiopatías congénitas operables",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "3",
      "display" : "Cáncer cervicouterino en personas de 15 años y más",
      "target" : [{
        "code" : "3",
        "display" : "Cáncer cervicouterino en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "4",
      "display" : "Alivio del dolor y cuidados paliativos por cáncer",
      "target" : [{
        "code" : "4",
        "display" : "Alivio del dolor y cuidados paliativos por cáncer",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "5",
      "display" : "Infarto agudo del miocardio",
      "target" : [{
        "code" : "5",
        "display" : "Infarto agudo del miocardio",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "6",
      "display" : "Diabetes mellitus tipo 1",
      "target" : [{
        "code" : "6",
        "display" : "Diabetes mellitus tipo 1",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "7",
      "display" : "Diabetes mellitus tipo 2",
      "target" : [{
        "code" : "7",
        "display" : "Diabetes mellitus tipo 2",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "8",
      "display" : "Cáncer de mama en personas de 15 años y más",
      "target" : [{
        "code" : "8",
        "display" : "Cáncer de mama en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "9",
      "display" : "Disrafias espinales",
      "target" : [{
        "code" : "9",
        "display" : "Disrafias espinales",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "10",
      "display" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años",
      "target" : [{
        "code" : "10",
        "display" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "11",
      "display" : "Tratamiento quirúrgico de cataratas",
      "target" : [{
        "code" : "11",
        "display" : "Tratamiento quirúrgico de cataratas",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "12",
      "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa",
      "target" : [{
        "code" : "12",
        "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "13",
      "display" : "Fisura labiopalatina",
      "target" : [{
        "code" : "13",
        "display" : "Fisura labiopalatina",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "14",
      "display" : "Cáncer en personas menores de 15 años",
      "target" : [{
        "code" : "14",
        "display" : "Cáncer en personas menores de 15 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "15",
      "display" : "Esquizofrenia",
      "target" : [{
        "code" : "15",
        "display" : "Esquizofrenia",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "16",
      "display" : "Cáncer de testículo en personas de 15 años y más",
      "target" : [{
        "code" : "16",
        "display" : "Cáncer de testículo en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "17",
      "display" : "Linfomas en personas de 15 años y más",
      "target" : [{
        "code" : "17",
        "display" : "Linfomas en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "18",
      "display" : "Síndrome de la inmunodeficiencia adquirida vih/sida",
      "target" : [{
        "code" : "18",
        "display" : "Síndrome de la inmunodeficiencia adquirida VIH/SIDA",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "19",
      "display" : "Infección respiratoria aguda (ira) de manejo ambulatorio en personas menores de 5 años",
      "target" : [{
        "code" : "19",
        "display" : "Infección respiratoria aguda (IRA) de manejo ambulatorio en personas menores de 5 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "20",
      "display" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más",
      "target" : [{
        "code" : "20",
        "display" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "21",
      "display" : "Hipertensión arterial primaria o esencial en personas de 15 años y más",
      "target" : [{
        "code" : "21",
        "display" : "Hipertensión arterial primaria o esencial en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "22",
      "display" : "Epilepsia en personas desde 1 año y menores de 15 años",
      "target" : [{
        "code" : "22",
        "display" : "Epilepsia en personas desde 1 año y menores de 15 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "23",
      "display" : "Salud oral integral para niños y niñas de 6 años",
      "target" : [{
        "code" : "23",
        "display" : "Salud oral integral para niños y niñas de 6 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "24",
      "display" : "Prevención de parto prematuro",
      "target" : [{
        "code" : "24",
        "display" : "Prevención de parto prematuro",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "25",
      "display" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos",
      "target" : [{
        "code" : "25",
        "display" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "26",
      "display" : "Colecistectomía preventiva del cáncer de vesícula en personas de 35 a 49 años",
      "target" : [{
        "code" : "26",
        "display" : "Colecistectomía preventiva del cáncer de vesícula en personas de 35 a 49 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "27",
      "display" : "Cáncer gástrico",
      "target" : [{
        "code" : "27",
        "display" : "Cáncer gástrico",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "28",
      "display" : "Cáncer de próstata en personas de 15 años y más",
      "target" : [{
        "code" : "28",
        "display" : "Cáncer de próstata en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "29",
      "display" : "Vicios de refracción en personas de 65 años y más",
      "target" : [{
        "code" : "29",
        "display" : "Vicios de refracción en personas de 65 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "30",
      "display" : "Estrabismo en personas menores de 9 años",
      "target" : [{
        "code" : "30",
        "display" : "Estrabismo en personas menores de 9 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "31",
      "display" : "Retinopatía diabética",
      "target" : [{
        "code" : "31",
        "display" : "Retinopatía diabética",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "32",
      "display" : "Desprendimiento de retina regmatógeno no traumático",
      "target" : [{
        "code" : "32",
        "display" : "Desprendimiento de retina regmatógeno no traumático",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "33",
      "display" : "Hemofilia",
      "target" : [{
        "code" : "33",
        "display" : "Hemofilia",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "34",
      "display" : "Depresión en personas de 15 años y más",
      "target" : [{
        "code" : "34",
        "display" : "Depresión en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "35",
      "display" : "Tratamiento de la hiperplasia benigna de la próstata en personas sintomáticas",
      "target" : [{
        "code" : "35",
        "display" : "Tratamiento de la hiperplasia benigna de la próstata en personas sintomáticas",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "36",
      "display" : "Ayudas técnicas para personas de 65 años y más",
      "target" : [{
        "code" : "36",
        "display" : "Ayudas técnicas para personas de 65 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "37",
      "display" : "Ataque cerebrovascular isquémico en personas de 15 años y más",
      "target" : [{
        "code" : "37",
        "display" : "Ataque cerebrovascular isquémico en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "38",
      "display" : "Enfermedad pulmonar obstructiva crónica de tratamiento ambulatorio",
      "target" : [{
        "code" : "38",
        "display" : "Enfermedad pulmonar obstructiva crónica de tratamiento ambulatorio",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "39",
      "display" : "Asma bronquial moderada y grave en personas menores de 15 años",
      "target" : [{
        "code" : "39",
        "display" : "Asma bronquial moderada y grave en personas menores de 15 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "40",
      "display" : "Síndrome de dificultad respiratoria en el recién nacido",
      "target" : [{
        "code" : "40",
        "display" : "Síndrome de dificultad respiratoria en el recién nacido",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "41",
      "display" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada",
      "target" : [{
        "code" : "41",
        "display" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "42",
      "display" : "Hemorragia subaracnoidea secundaria a ruptura de uno o más aneurismas cerebrales",
      "target" : [{
        "code" : "42",
        "display" : "Hemorragia subaracnoidea secundaria a ruptura de uno o más aneurismas cerebrales",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "43",
      "display" : "Tumores primarios del sistema nervioso central en personas de 15 años y más",
      "target" : [{
        "code" : "43",
        "display" : "Tumores primarios del sistema nervioso central en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "44",
      "display" : "Tratamiento quirúrgico de hernia del núcleo pulposo lumbar",
      "target" : [{
        "code" : "44",
        "display" : "Tratamiento quirúrgico de hernia del núcleo pulposo lumbar",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "45",
      "display" : "Leucemia en personas de 15 años y más",
      "target" : [{
        "code" : "45",
        "display" : "Leucemia en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "46",
      "display" : "Urgencia odontológica ambulatoria",
      "target" : [{
        "code" : "46",
        "display" : "Urgencia odontológica ambulatoria",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "47",
      "display" : "Salud oral integral de personas de 60 años",
      "target" : [{
        "code" : "47",
        "display" : "Salud oral integral de personas de 60 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "48",
      "display" : "Politraumatizado grave",
      "target" : [{
        "code" : "48",
        "display" : "Politraumatizado grave",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "49",
      "display" : "Traumatismo cráneo encefálico moderado o grave",
      "target" : [{
        "code" : "49",
        "display" : "Traumatismo cráneo encefálico moderado o grave",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "50",
      "display" : "Trauma ocular grave",
      "target" : [{
        "code" : "50",
        "display" : "Trauma ocular grave",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "51",
      "display" : "Fibrosis quística",
      "target" : [{
        "code" : "51",
        "display" : "Fibrosis quística",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "52",
      "display" : "Artritis reumatoidea",
      "target" : [{
        "code" : "52",
        "display" : "Artritis reumatoidea",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "53",
      "display" : "Consumo perjudicial o dependencia de riesgo bajo a moderado de alcohol y drogas en personas menores de 20 años",
      "target" : [{
        "code" : "53",
        "display" : "Consumo perjudicial o dependencia de riesgo bajo a moderado de alcohol y drogas en personas menores de 20 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "54",
      "display" : "Analgesia del parto",
      "target" : [{
        "code" : "54",
        "display" : "Analgesia del parto",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "55",
      "display" : "Gran quemado",
      "target" : [{
        "code" : "55",
        "display" : "Gran quemado",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "56",
      "display" : "Hipoacusia bilateral en personas de 65 años y más que requieren uso de audífono",
      "target" : [{
        "code" : "56",
        "display" : "Hipoacusia bilateral en personas de 65 años y más que requieren uso de audífono",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "57",
      "display" : "Retinopatía del prematuro",
      "target" : [{
        "code" : "57",
        "display" : "Retinopatía del prematuro",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "58",
      "display" : "Displasia broncopulmonar del prematuro",
      "target" : [{
        "code" : "58",
        "display" : "Displasia broncopulmonar del prematuro",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "59",
      "display" : "Hipoacusia neurosensorial bilateral del prematuro",
      "target" : [{
        "code" : "59",
        "display" : "Hipoacusia neurosensorial bilateral del prematuro",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "60",
      "display" : "Epilepsia en personas de 15 años y más",
      "target" : [{
        "code" : "60",
        "display" : "Epilepsia en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "61",
      "display" : "Asma bronquial en personas de 15 años y más",
      "target" : [{
        "code" : "61",
        "display" : "Asma bronquial en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "62",
      "display" : "Enfermedad de parkinson",
      "target" : [{
        "code" : "62",
        "display" : "Enfermedad de Parkinson",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "63",
      "display" : "Artritis idiopática juvenil",
      "target" : [{
        "code" : "63",
        "display" : "Artritis idiopática juvenil",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "64",
      "display" : "Prevención secundaria enfermedad renal crónica terminal",
      "target" : [{
        "code" : "64",
        "display" : "Prevención secundaria enfermedad renal crónica terminal",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "65",
      "display" : "Displasia luxante de caderas",
      "target" : [{
        "code" : "65",
        "display" : "Displasia luxante de caderas",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "66",
      "display" : "Salud oral integral de la persona gestante",
      "target" : [{
        "code" : "66",
        "display" : "Salud oral integral de la persona gestante",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "67",
      "display" : "Esclerosis múltiple remitente recurrente",
      "target" : [{
        "code" : "67",
        "display" : "Esclerosis múltiple remitente recurrente",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "68",
      "display" : "Hepatitis crónica por virus hepatitis b",
      "target" : [{
        "code" : "68",
        "display" : "Hepatitis crónica por virus hepatitis B",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "69",
      "display" : "Hepatitis crónica por virus hepatitis c",
      "target" : [{
        "code" : "69",
        "display" : "Hepatitis crónica por virus hepatitis C",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "70",
      "display" : "Cáncer colorrectal en personas de 15 años y más",
      "target" : [{
        "code" : "70",
        "display" : "Cáncer colorrectal en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "71",
      "display" : "Cáncer de ovario epitelial",
      "target" : [{
        "code" : "71",
        "display" : "Cáncer de ovario epitelial",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "72",
      "display" : "Cáncer vesical en personas de 15 años y más",
      "target" : [{
        "code" : "72",
        "display" : "Cáncer vesical en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "73",
      "display" : "Osteosarcoma en personas de 15 años y más",
      "target" : [{
        "code" : "73",
        "display" : "Osteosarcoma en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "74",
      "display" : "Tratamiento quirúrgico de lesiones crónicas de la válvula aórtica en personas de 15 años y más",
      "target" : [{
        "code" : "74",
        "display" : "Tratamiento quirúrgico de lesiones crónicas de la válvula aórtica en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "75",
      "display" : "Trastorno bipolar en personas de 15 años y más",
      "target" : [{
        "code" : "75",
        "display" : "Trastorno bipolar en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "76",
      "display" : "Hipotiroidismo en personas de 15 años y más",
      "target" : [{
        "code" : "76",
        "display" : "Hipotiroidismo en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "77",
      "display" : "Hipoacusia moderada, severa y profunda en personas menores de 4 años",
      "target" : [{
        "code" : "77",
        "display" : "Hipoacusia moderada, severa y profunda en personas menores de 4 años",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "78",
      "display" : "Lupus eritematoso sistémico",
      "target" : [{
        "code" : "78",
        "display" : "Lupus eritematoso sistémico",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "79",
      "display" : "Tratamiento quirúrgico de lesiones crónicas de las válvulas mitral y tricúspide en personas de 15 años y más",
      "target" : [{
        "code" : "79",
        "display" : "Tratamiento quirúrgico de lesiones crónicas de las válvulas mitral y tricúspide en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "80",
      "display" : "Tratamiento de erradicación del helicobacter pylori",
      "target" : [{
        "code" : "80",
        "display" : "Tratamiento de erradicación del Helicobacter pylori",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "81",
      "display" : "Cáncer de pulmón en personas de 15 años y más",
      "target" : [{
        "code" : "81",
        "display" : "Cáncer de pulmón en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "82",
      "display" : "Cáncer de tiroides en personas de 15 años y más",
      "target" : [{
        "code" : "82",
        "display" : "Cáncer de tiroides en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "83",
      "display" : "Cáncer renal en personas de 15 años y más",
      "target" : [{
        "code" : "83",
        "display" : "Cáncer renal en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "84",
      "display" : "Mieloma múltiple en personas de 15 años y más",
      "target" : [{
        "code" : "84",
        "display" : "Mieloma múltiple en personas de 15 años y más",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "85",
      "display" : "Enfermedad de alzheimer y otras demencias",
      "target" : [{
        "code" : "85",
        "display" : "Enfermedad de Alzheimer y otras demencias",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "86",
      "display" : "Atención integral de salud en agresión sexual aguda",
      "target" : [{
        "code" : "86",
        "display" : "Atención integral de salud en agresión sexual aguda",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "87",
      "display" : "Rehabilitación sars cov-2",
      "target" : [{
        "code" : "87",
        "display" : "Rehabilitación SARS-CoV-2",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "88",
      "display" : "Tratamiento farmacológico tras alta hospitalaria por cirrosis hepática",
      "target" : [{
        "code" : "88",
        "display" : "Tratamiento farmacológico tras alta hospitalaria por cirrosis hepática",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "89",
      "display" : "Tratamiento hospitalario para personas menores de 15 años con depresión grave refractaria o psicótica con riesgo suicida",
      "target" : [{
        "code" : "89",
        "display" : "Tratamiento hospitalario para personas menores de 15 años con depresión grave refractaria o psicótica con riesgo suicida",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "90",
      "display" : "Cesación del consumo de tabaco en personas de 25 años y más",
      "target" : [{
        "code" : "90",
        "display" : "Cesación del consumo de tabaco en personas de 25 años y más",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
