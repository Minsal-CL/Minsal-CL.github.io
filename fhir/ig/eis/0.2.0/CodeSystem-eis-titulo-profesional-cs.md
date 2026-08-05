# Título Profesional - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Título Profesional**

## CodeSystem: Título Profesional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-titulo-profesional-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:TituloProfesionalCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.41 | |

 
El título profesional corresponde al documento oficial que acredita que una persona ha completado un programa formal de estudios y ha aprobado las evaluaciones, pruebas o exámenes requeridos para el ejercicio de una determinada profesión, certificando las competencias generales, científicas y técnicas necesarias para su adecuado desempeño profesional. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TituloProfesionalVS](ValueSet-eis-titulo-profesional-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-titulo-profesional-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-titulo-profesional-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.41"
  }],
  "version" : "0.2.0",
  "name" : "TituloProfesionalCS",
  "title" : "Título Profesional",
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
  "description" : "El título profesional corresponde al documento oficial que acredita que una persona ha completado un programa formal de estudios y ha aprobado las evaluaciones, pruebas o exámenes requeridos para el ejercicio de una determinada profesión, certificando las competencias generales, científicas y técnicas necesarias para su adecuado desempeño profesional.",
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
  "count" : 25,
  "concept" : [{
    "code" : "1",
    "display" : "Médico/as Cirujano/as",
    "definition" : "Médico/as Cirujano/as"
  },
  {
    "code" : "2",
    "display" : "Cirujano/as Dentistas",
    "definition" : "Cirujano/as Dentistas"
  },
  {
    "code" : "3",
    "display" : "Enfermeros/as",
    "definition" : "Enfermeros/as"
  },
  {
    "code" : "4",
    "display" : "Enfermeros/as Matrones/Matronas",
    "definition" : "Enfermeros/as Matrones/Matronas"
  },
  {
    "code" : "5",
    "display" : "Matrones/as",
    "definition" : "Matrones/as"
  },
  {
    "code" : "6",
    "display" : "Tecnólogos/as Médicos/as",
    "definition" : "Tecnólogos/as Médicos/as"
  },
  {
    "code" : "7",
    "display" : "Psicólogos/as",
    "definition" : "Psicólogos/as"
  },
  {
    "code" : "8",
    "display" : "Kinesiólogos/as",
    "definition" : "Kinesiólogos/as"
  },
  {
    "code" : "9",
    "display" : "Farmacéuticos/as y Químico Farmacéuticos/as",
    "definition" : "Farmacéuticos/as y Químico Farmacéuticos/as"
  },
  {
    "code" : "10",
    "display" : "Bioquímicos/as",
    "definition" : "Bioquímicos/as"
  },
  {
    "code" : "11",
    "display" : "Nutricionistas",
    "definition" : "Nutricionistas"
  },
  {
    "code" : "12",
    "display" : "Fonoaudiólogos/as",
    "definition" : "Fonoaudiólogos/as"
  },
  {
    "code" : "13",
    "display" : "Terapeutas Ocupacionales",
    "definition" : "Terapeutas Ocupacionales"
  },
  {
    "code" : "14",
    "display" : "Técnicos/as y Auxiliares Paramédicos/as en Alimentación y Nutrición",
    "definition" : "Técnicos/as y Auxiliares Paramédicos/as en Alimentación y Nutrición"
  },
  {
    "code" : "15",
    "display" : "Técnicos/as y Auxiliares Paramédicos/as en Diagnóstico y Servicios Médicos (Radiología, Radioterapia, Laboratorio Clínico y Banco de Sangre)",
    "definition" : "Técnicos/as y Auxiliares Paramédicos/as en Diagnóstico y Servicios Médicos (Radiología, Radioterapia, Laboratorio Clínico y Banco de Sangre)"
  },
  {
    "code" : "16",
    "display" : "Técnicos/as y Auxiliares Paramédicos/as en Odontología y Salud Oral",
    "definition" : "Técnicos/as y Auxiliares Paramédicos/as en Odontología y Salud Oral"
  },
  {
    "code" : "17",
    "display" : "Técnicos/as y Auxiliares Paramédicos/as en Farmacia",
    "definition" : "Técnicos/as y Auxiliares Paramédicos/as en Farmacia"
  },
  {
    "code" : "18",
    "display" : "Técnicos/as en Enfermería, Ginecobstetricia y Pabellones Quirúrgicos",
    "definition" : "Técnicos/as en Enfermería, Ginecobstetricia y Pabellones Quirúrgicos"
  },
  {
    "code" : "19",
    "display" : "Técnicos/as en Salud de Prevención y Rehabilitación",
    "definition" : "Técnicos/as en Salud de Prevención y Rehabilitación"
  },
  {
    "code" : "20",
    "display" : "Naturópatas y Técnicos/as en Naturopatía",
    "definition" : "Naturópatas y Técnicos/as en Naturopatía"
  },
  {
    "code" : "21",
    "display" : "Podólogos/as y Técnicos/as en Podología Clínica",
    "definition" : "Podólogos/as y Técnicos/as en Podología Clínica"
  },
  {
    "code" : "22",
    "display" : "Cosmetólogos/as y Técnicos/as en Cosmetología",
    "definition" : "Cosmetólogos/as y Técnicos/as en Cosmetología"
  },
  {
    "code" : "23",
    "display" : "Contactólogos/as y Técnicos/as en Contactología",
    "definition" : "Contactólogos/as y Técnicos/as en Contactología"
  },
  {
    "code" : "24",
    "display" : "Ópticos/as y Técnicos/as en Óptica",
    "definition" : "Ópticos/as y Técnicos/as en Óptica"
  },
  {
    "code" : "25",
    "display" : "Acunpunturistas, Homeópatas y Naturópatas",
    "definition" : "Acunpunturistas, Homeópatas y Naturópatas"
  }]
}

```
