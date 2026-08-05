# Especialidades y Subespecialidades Medicas - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades y Subespecialidades Medicas**

## CodeSystem: Especialidades y Subespecialidades Medicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EspecialidadesySubespecialidadesMedicas-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:EspecialidadesySubespecialidadesMedicasCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.3 | |

 
La certificación de especialidades y subespecialidades médicas corresponden al proceso mediante el cual se reconoce oficialmente que un prestador individual de salud posee y domina un conjunto de conocimientos, competencias y experiencias específicas, relevantes para el ejercicio profesional en un ámbito determinado de la atención de salud. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EspecialidadesySubespecialidadesMedicasVS](ValueSet-eis-EspecialidadesySubespecialidadesMedicas-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-EspecialidadesySubespecialidadesMedicas-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EspecialidadesySubespecialidadesMedicas-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.3"
  }],
  "version" : "0.2.0",
  "name" : "EspecialidadesySubespecialidadesMedicasCS",
  "title" : "Especialidades y Subespecialidades Medicas",
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
  "description" : "La certificación de especialidades y subespecialidades médicas corresponden al proceso mediante el cual se reconoce oficialmente que un prestador individual de salud posee y domina un conjunto de conocimientos, competencias y experiencias específicas, relevantes para el ejercicio profesional en un ámbito determinado de la atención de salud.",
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
  "count" : 76,
  "concept" : [{
    "code" : "1",
    "display" : "Anatomía Patológica",
    "definition" : "Anatomía Patológica"
  },
  {
    "code" : "2",
    "display" : "Anestesiología",
    "definition" : "Anestesiología"
  },
  {
    "code" : "3",
    "display" : "Cardiología",
    "definition" : "Cardiología"
  },
  {
    "code" : "4",
    "display" : "Cirugía General",
    "definition" : "Cirugía General"
  },
  {
    "code" : "5",
    "display" : "Cirugía de Cabeza, Cuello y Maxilofac ial",
    "definition" : "Cirugía de Cabeza, Cuello y Maxilofac ial"
  },
  {
    "code" : "6",
    "display" : "Cirugía Cardiovascular",
    "definition" : "Cirugía Cardiovascular"
  },
  {
    "code" : "7",
    "display" : "Cirugía de Tórax",
    "definition" : "Cirugía de Tórax"
  },
  {
    "code" : "8",
    "display" : "Cirugía Plástica y Reparadora",
    "definition" : "Cirugía Plástica y Reparadora"
  },
  {
    "code" : "9",
    "display" : "Cirugía Pediátrica",
    "definition" : "Cirugía Pediátrica"
  },
  {
    "code" : "10",
    "display" : "Cirugía Vascular Periférica",
    "definition" : "Cirugía Vascular Periférica"
  },
  {
    "code" : "11",
    "display" : "Coloproctología",
    "definition" : "Coloproctología"
  },
  {
    "code" : "12",
    "display" : "Dermatología",
    "definition" : "Dermatología"
  },
  {
    "code" : "13",
    "display" : "Diabetología",
    "definition" : "Diabetología"
  },
  {
    "code" : "14",
    "display" : "Endocrinología Adulto",
    "definition" : "Endocrinología Adulto"
  },
  {
    "code" : "15",
    "display" : "Endocrinología Pediátrica",
    "definition" : "Endocrinología Pediátrica"
  },
  {
    "code" : "16",
    "display" : "Enfermedades Respiratorias del Adulto",
    "definition" : "Enfermedades Respiratorias del Adulto"
  },
  {
    "code" : "17",
    "display" : "Enfermedades Respiratorias Pediátricas",
    "definition" : "Enfermedades Respiratorias Pediátricas"
  },
  {
    "code" : "18",
    "display" : "Gastroenterología Adulto",
    "definition" : "Gastroenterología Adulto"
  },
  {
    "code" : "19",
    "display" : "Gastroenterología Pediátrica",
    "definition" : "Gastroenterología Pediátrica"
  },
  {
    "code" : "20",
    "display" : "Genética Clínica",
    "definition" : "Genética Clínica"
  },
  {
    "code" : "21",
    "display" : "Geriatría",
    "definition" : "Geriatría"
  },
  {
    "code" : "22",
    "display" : "Ginecología Pediátrica y de la Adolescencia",
    "definition" : "Ginecología Pediátrica y de la Adolescencia"
  },
  {
    "code" : "23",
    "display" : "Hematología",
    "definition" : "Hematología"
  },
  {
    "code" : "24",
    "display" : "Imagenología",
    "definition" : "Imagenología"
  },
  {
    "code" : "25",
    "display" : "Infectología",
    "definition" : "Infectología"
  },
  {
    "code" : "26",
    "display" : "Inmunología",
    "definition" : "Inmunología"
  },
  {
    "code" : "27",
    "display" : "Laboratorio Clínico",
    "definition" : "Laboratorio Clínico"
  },
  {
    "code" : "28",
    "display" : "Medicina Familiar",
    "definition" : "Medicina Familiar"
  },
  {
    "code" : "29",
    "display" : "Medicina Física y Rehabilitación Adulto",
    "definition" : "Medicina Física y Rehabilitación Adulto"
  },
  {
    "code" : "30",
    "display" : "Medicina Interna",
    "definition" : "Medicina Interna"
  },
  {
    "code" : "31",
    "display" : "Medicina Intensiva Adulto",
    "definition" : "Medicina Intensiva Adulto"
  },
  {
    "code" : "32",
    "display" : "Medicina Intensiva Pediátrica",
    "definition" : "Medicina Intensiva Pediátrica"
  },
  {
    "code" : "33",
    "display" : "Medicina Legal",
    "definition" : "Medicina Legal"
  },
  {
    "code" : "34",
    "display" : "Medicina Materno Fetal",
    "definition" : "Medicina Materno Fetal"
  },
  {
    "code" : "35",
    "display" : "Medicina Nuclear",
    "definition" : "Medicina Nuclear"
  },
  {
    "code" : "36",
    "display" : "Medicina de Urgencia",
    "definition" : "Medicina de Urgencia"
  },
  {
    "code" : "37",
    "display" : "Nefrología Adulto",
    "definition" : "Nefrología Adulto"
  },
  {
    "code" : "38",
    "display" : "Nefrología Pediátrica",
    "definition" : "Nefrología Pediátrica"
  },
  {
    "code" : "39",
    "display" : "Neonatología",
    "definition" : "Neonatología"
  },
  {
    "code" : "40",
    "display" : "Neurocirugía",
    "definition" : "Neurocirugía"
  },
  {
    "code" : "41",
    "display" : "Neurología Adulto",
    "definition" : "Neurología Adulto"
  },
  {
    "code" : "42",
    "display" : "Neurología Pediátrica",
    "definition" : "Neurología Pediátrica"
  },
  {
    "code" : "43",
    "display" : "Obstetricia y Ginecología",
    "definition" : "Obstetricia y Ginecología"
  },
  {
    "code" : "44",
    "display" : "Oftalmología",
    "definition" : "Oftalmología"
  },
  {
    "code" : "45",
    "display" : "Oncología Médica",
    "definition" : "Oncología Médica"
  },
  {
    "code" : "46",
    "display" : "Otorrinolaringología",
    "definition" : "Otorrinolaringología"
  },
  {
    "code" : "47",
    "display" : "Pediatría",
    "definition" : "Pediatría"
  },
  {
    "code" : "48",
    "display" : "Psiquiatría Adulto",
    "definition" : "Psiquiatría Adulto"
  },
  {
    "code" : "49",
    "display" : "Psiquiatría Pediátrica y de la Adolescencia",
    "definition" : "Psiquiatría Pediátrica y de la Adolescencia"
  },
  {
    "code" : "50",
    "display" : "Radioterapia Oncológica",
    "definition" : "Radioterapia Oncológica"
  },
  {
    "code" : "51",
    "display" : "Reumatología",
    "definition" : "Reumatología"
  },
  {
    "code" : "52",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  },
  {
    "code" : "53",
    "display" : "Traumatología y Ortopedia",
    "definition" : "Traumatología y Ortopedia"
  },
  {
    "code" : "54",
    "display" : "Urología",
    "definition" : "Urología"
  },
  {
    "code" : "55",
    "display" : "Cardiología Pediátrica",
    "definition" : "Cardiología Pediátrica"
  },
  {
    "code" : "56",
    "display" : "Cirugía Digestiva",
    "definition" : "Cirugía Digestiva"
  },
  {
    "code" : "57",
    "display" : "Cirugía Plástica y Reparadora Pediátrica",
    "definition" : "Cirugía Plástica y Reparadora Pediátrica"
  },
  {
    "code" : "58",
    "display" : "Ginecología",
    "definition" : "Ginecología"
  },
  {
    "code" : "59",
    "display" : "Hemato-Oncología Pediátrica",
    "definition" : "Hemato-Oncología Pediátrica"
  },
  {
    "code" : "60",
    "display" : "Infectología Pediátrica",
    "definition" : "Infectología Pediátrica"
  },
  {
    "code" : "61",
    "display" : "Medicina Familiar del Niño",
    "definition" : "Medicina Familiar del Niño"
  },
  {
    "code" : "62",
    "display" : "Medicina Física y Rehabilitación Pediátrica",
    "definition" : "Medicina Física y Rehabilitación Pediátrica"
  },
  {
    "code" : "63",
    "display" : "Nutrición Clínica del Adulto",
    "definition" : "Nutrición Clínica del Adulto"
  },
  {
    "code" : "64",
    "display" : "Nutrición Clínica Pediátrica",
    "definition" : "Nutrición Clínica Pediátrica"
  },
  {
    "code" : "65",
    "display" : "Reumatología Pediátrica",
    "definition" : "Reumatología Pediátrica"
  },
  {
    "code" : "66",
    "display" : "Obstetricia",
    "definition" : "Obstetricia"
  },
  {
    "code" : "67",
    "display" : "Traumatología y Ortopedia Pediátrica",
    "definition" : "Traumatología y Ortopedia Pediátrica"
  },
  {
    "code" : "68",
    "display" : "Urología Pediátrica",
    "definition" : "Urología Pediátrica"
  },
  {
    "code" : "69",
    "display" : "Ginecología Oncológica",
    "definition" : "Ginecología Oncológica"
  },
  {
    "code" : "70",
    "display" : "Mastología (Cirugía de mamas)",
    "definition" : "Mastología (Cirugía de mamas)"
  },
  {
    "code" : "71",
    "display" : "Medicina Paliativa y de Manejo del Dolor",
    "definition" : "Medicina Paliativa y de Manejo del Dolor"
  },
  {
    "code" : "72",
    "display" : "Medicina Reproductiva e Infertilidad",
    "definition" : "Medicina Reproductiva e Infertilidad"
  },
  {
    "code" : "73",
    "display" : "Medicina del Adolescente",
    "definition" : "Medicina del Adolescente"
  },
  {
    "code" : "74",
    "display" : "Medicina del Deporte",
    "definition" : "Medicina del Deporte"
  },
  {
    "code" : "75",
    "display" : "Microbiología",
    "definition" : "Microbiología"
  },
  {
    "code" : "76",
    "display" : "Neurorradiología",
    "definition" : "Neurorradiología"
  }]
}

```
