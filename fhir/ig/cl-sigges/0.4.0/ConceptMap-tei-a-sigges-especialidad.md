# Especialidad: TEI → SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidad: TEI → SIGGES**

## ConceptMap: Especialidad: TEI → SIGGES (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-especialidad | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:TEIASIGGESEspecialidad |

 
CSEspecialidadMed de TEI (códigos numéricos) a CSEspecialidadSIGGES (formato NN-NNN-N). Sólo se mapean coincidencias exactas de nombre; el resto queda pendiente de homologación. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "tei-a-sigges-especialidad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-especialidad",
  "version" : "0.4.0",
  "name" : "TEIASIGGESEspecialidad",
  "title" : "Especialidad: TEI → SIGGES",
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
  "description" : "CSEspecialidadMed de TEI (códigos numéricos) a CSEspecialidadSIGGES (formato NN-NNN-N). Sólo se mapean coincidencias exactas de nombre; el resto queda pendiente de homologación.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
    "target" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
    "element" : [{
      "code" : "1",
      "display" : "ANATOMÍA PATOLÓGICA",
      "target" : [{
        "code" : "13-04-00",
        "display" : "Anatomía Patológica",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "ANESTESIOLOGÍA",
      "target" : [{
        "code" : "07-210-0",
        "display" : "Anestesiología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "CARDIOLOGÍA",
      "target" : [{
        "code" : "07-103-0",
        "display" : "Cardiología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "CIRUGÍA GENERAL",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "5",
      "display" : "CIRUGÍA DE CABEZA, CUELLO Y MAXILOFACIAL",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "6",
      "display" : "CIRUGÍA CARDIOVASCULAR",
      "target" : [{
        "code" : "20-122",
        "display" : "Cirugía Cardiovascular",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "7",
      "display" : "CIRUGÍA DE TÓRAX",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "8",
      "display" : "CIRUGÍA PLÁSTICA Y REPARADORA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "9",
      "display" : "CIRUGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-200-1",
        "display" : "Cirugía Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10",
      "display" : "CIRUGÍA VASCULAR PERIFÉRICA",
      "target" : [{
        "code" : "07-207-2",
        "display" : "Cirugía Vascular Periférica",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "11",
      "display" : "COLOPROCTOLOGÍA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "12",
      "display" : "DERMATOLOGÍA",
      "target" : [{
        "code" : "07-111-0",
        "display" : "Dermatología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "13",
      "display" : "DIABETOLOGÍA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "14",
      "display" : "ENDOCRINOLOGÍA ADULTO",
      "target" : [{
        "code" : "07-104-2",
        "display" : "Endocrinología Adulto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "15",
      "display" : "ENDOCRINOLOGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-104-1",
        "display" : "Endocrinología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "16",
      "display" : "ENFERMEDADES RESPIRATORIAS DEL ADULTO (BRONCOPULMONAR)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "17",
      "display" : "ENFERMEDADES RESPIRATORIAS PEDIÁTRICAS (BRONCOPULMONAR PEDIATRICO)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "18",
      "display" : "GASTROENTEROLOGÍA ADULTO",
      "target" : [{
        "code" : "07-105-2",
        "display" : "Gastroenterología Adulto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "19",
      "display" : "GASTROENTEROLOGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-105-1",
        "display" : "Gastroenterología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "20",
      "display" : "GENÉTICA CLÍNICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "21",
      "display" : "GERIATRÍA",
      "target" : [{
        "code" : "07-113-2",
        "display" : "Geriatría",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "22",
      "display" : "GINECOLOGÍA PEDIÁTRICA Y DE LA ADOLESCENCIA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "23",
      "display" : "HEMATOLOGÍA",
      "target" : [{
        "code" : "07-107-0",
        "display" : "Hematología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "24",
      "display" : "IMAGENOLOGÍA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "25",
      "display" : "INFECTOLOGÍA",
      "target" : [{
        "code" : "07-118-0",
        "display" : "Infectología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "26",
      "display" : "INMUNOLOGÍA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "27",
      "display" : "LABORATORIO CLÍNICO",
      "target" : [{
        "code" : "13-02-00",
        "display" : "Laboratorio Clínico",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "28",
      "display" : "MEDICINA FAMILIAR",
      "target" : [{
        "code" : "07-900-1",
        "display" : "Medicina Familiar",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "29",
      "display" : "MEDICINA FÍSICA Y REHABILITACIÓN (FISIATRIA ADULTO)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "30",
      "display" : "MEDICINA INTERNA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "31",
      "display" : "MEDICINA INTENSIVA ADULTO",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "32",
      "display" : "MEDICINA INTENSIVA PEDIÁTRICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "33",
      "display" : "MEDICINA LEGAL",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "34",
      "display" : "MEDICINA MATERNO INFANTIL",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "35",
      "display" : "MEDICINA NUCLEAR",
      "target" : [{
        "code" : "13-06-00",
        "display" : "Medicina Nuclear",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "36",
      "display" : "MEDICINA DE URGENCIA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "37",
      "display" : "NEFROLOGÍA ADULTO",
      "target" : [{
        "code" : "07-108-2",
        "display" : "Nefrología Adulto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "38",
      "display" : "NEFROLOGÍA PEDIÁTRICO",
      "target" : [{
        "code" : "07-108-1",
        "display" : "Nefrología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "39",
      "display" : "NEONATOLOGÍA",
      "target" : [{
        "code" : "07-101-1",
        "display" : "Neonatología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "40",
      "display" : "NEUROCIRUGÍA",
      "target" : [{
        "code" : "07-208-0",
        "display" : "Neurocirugía",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "41",
      "display" : "NEUROLOGÍA ADULTO",
      "target" : [{
        "code" : "07-115-2",
        "display" : "Neurología Adulto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "42",
      "display" : "NEUROLOGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-115-1",
        "display" : "Neurología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "43",
      "display" : "OBSTETRICIA Y GINECOLOGÍA",
      "target" : [{
        "code" : "20-160",
        "display" : "Obstetricia y Ginecología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "44",
      "display" : "OFTALMOLOGÍA",
      "target" : [{
        "code" : "07-400-9",
        "display" : "Oftalmología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "45",
      "display" : "ONCOLOGÍA MÉDICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "46",
      "display" : "OTORRINOLARINGOLOGÍA",
      "target" : [{
        "code" : "07-500-9",
        "display" : "Otorrinolaringología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "47",
      "display" : "PEDIATRÍA",
      "target" : [{
        "code" : "07-100-1",
        "display" : "Pediatría",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "48",
      "display" : "PSIQUIATRÍA ADULTO",
      "target" : [{
        "code" : "07-117-2",
        "display" : "Psiquiatría Adulto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "49",
      "display" : "PSIQUIATRÍA PEDIÁTRICA Y DE LA ADOLESCENCIA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "50",
      "display" : "RADIOTERAPIA ONCOLÓGICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "51",
      "display" : "REUMATOLOGÍA",
      "target" : [{
        "code" : "07-110-2",
        "display" : "Reumatología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "52",
      "display" : "SALUD PÚBLICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "53",
      "display" : "TRAUMATOLOGÍA Y ORTOPEDIA",
      "target" : [{
        "code" : "20-130",
        "display" : "Traumatología y Ortopedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "54",
      "display" : "UROLOGÍA",
      "target" : [{
        "code" : "07-800-0",
        "display" : "Urología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "55",
      "display" : "CARDIOLOGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-103-1",
        "display" : "Cardiología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "56",
      "display" : "CIRUGÍA DIGESTIVA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "57",
      "display" : "CIRUGÍA PLASTICA Y REPARADORA PEDIÁTRICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "58",
      "display" : "GINECOLOGÍA",
      "target" : [{
        "code" : "07-301-0",
        "display" : "Ginecología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "59",
      "display" : "HEMATO-ONCOLOGÍA PEDIÁTRICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "60",
      "display" : "INFECTOLOGÍA PEDIATRICA",
      "target" : [{
        "code" : "07-118-1",
        "display" : "Infectología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "61",
      "display" : "MEDICINA FAMILIAR DEL NIÑO",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "62",
      "display" : "MEDICINA FISICA Y REHABILITACIÓN PEDIÁTRICA (FISIATRIA PEDIATRICA)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "63",
      "display" : "NUTRIÓLOGO",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "64",
      "display" : "NUTRIÓLOGO PEDIÁTRICO",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "65",
      "display" : "REUMATOLOGÍA PEDIÁTRICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "66",
      "display" : "OBSTETRICIA",
      "target" : [{
        "code" : "07-300-1",
        "display" : "Obstetricia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "67",
      "display" : "TRAUMATOLOGÍA Y ORTOPEDIA PEDIÁTRICA",
      "target" : [{
        "code" : "20-143",
        "display" : "Traumatología y Ortopedia Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "68",
      "display" : "UROLOGÍA PEDIÁTRICA",
      "target" : [{
        "code" : "07-800-1",
        "display" : "Urología Infantil",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "69",
      "display" : "GINECOLOGÍA ONCOLÓGICA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "70",
      "display" : "MASTOLOGÍA (CIRUGÍA DE LA MAMA)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "71",
      "display" : "MEDICINA PALEATIVA Y DE MANEJO DEL DOLOR",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "72",
      "display" : "MEDICINA REPRODUCTIVA E INFERTILIDAD",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "73",
      "display" : "MEDICINA DEL ADOLESCENTE",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "74",
      "display" : "MEDICINA DEL DEPORTE",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    },
    {
      "code" : "75",
      "display" : "MICROBIOLOGÍA",
      "target" : [{
        "code" : "13-02-01",
        "display" : "Microbiología",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "76",
      "display" : "NEURORRADIOLOGÍA",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Sin coincidencia por nombre en el catálogo SIGGES: requiere homologación (P-21)."
      }]
    }]
  }]
}

```
