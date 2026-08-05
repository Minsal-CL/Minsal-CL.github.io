# Especialidades y Subespecialidades Odontológicas - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades y Subespecialidades Odontológicas**

## CodeSystem: Especialidades y Subespecialidades Odontológicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-odontologicas-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:EspecialidadesOdontologicasCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.21 | |

 
La certificación de especialidades y subespecialidades odontológicas corresponde al proceso mediante el cual se reconoce oficialmente que un prestador individual del área odontológica posee los conocimientos, competencias y experiencias específicas requeridas para el ejercicio profesional en un ámbito determinado de la atención odontológica. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EspecialidadesOdontologicasVS](ValueSet-eis-especialidades-odontologicas-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-especialidades-odontologicas-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-especialidades-odontologicas-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.21"
  }],
  "version" : "0.2.0",
  "name" : "EspecialidadesOdontologicasCS",
  "title" : "Especialidades y Subespecialidades Odontológicas",
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
  "description" : "La certificación de especialidades y subespecialidades odontológicas corresponde al proceso mediante el cual se reconoce oficialmente que un prestador individual del área odontológica posee los conocimientos, competencias y experiencias específicas requeridas para el ejercicio profesional en un ámbito determinado de la atención odontológica.",
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
  "count" : 15,
  "concept" : [{
    "code" : "1",
    "display" : "Cirugía y Traumatología Buco Maxilofacial",
    "definition" : "Cirugía y Traumatología Buco Maxilofacial"
  },
  {
    "code" : "3",
    "display" : "Endodoncia",
    "definition" : "Endodoncia"
  },
  {
    "code" : "4",
    "display" : "Imagenología Oral y Maxilofacial",
    "definition" : "Imagenología Oral y Maxilofacial"
  },
  {
    "code" : "5",
    "display" : "Implantología Buco Maxilofacial",
    "definition" : "Implantología Buco Maxilofacial"
  },
  {
    "code" : "6",
    "display" : "Odontología Legal",
    "definition" : "Odontología Legal"
  },
  {
    "code" : "7",
    "display" : "Odontopediatría",
    "definition" : "Odontopediatría"
  },
  {
    "code" : "8",
    "display" : "Ortodoncia y Ortopedia Dento Maxilofacial",
    "definition" : "Ortodoncia y Ortopedia Dento Maxilofacial"
  },
  {
    "code" : "9",
    "display" : "Patología Oral Maxilofacial",
    "definition" : "Patología Oral Maxilofacial"
  },
  {
    "code" : "10",
    "display" : "Periodoncia",
    "definition" : "Periodoncia"
  },
  {
    "code" : "11",
    "display" : "Rehabilitación Oral Removible",
    "definition" : "Rehabilitación Oral Removible"
  },
  {
    "code" : "12",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  },
  {
    "code" : "13",
    "display" : "Somato-Prótesis",
    "definition" : "Somato-Prótesis"
  },
  {
    "code" : "14",
    "display" : "Trastornos Temporomandibulares y Dolor Orofacial",
    "definition" : "Trastornos Temporomandibulares y Dolor Orofacial"
  },
  {
    "code" : "15",
    "display" : "Odontogeriatría",
    "definition" : "Odontogeriatría"
  },
  {
    "code" : "16",
    "display" : "Rehabilitación Oral Fija",
    "definition" : "Rehabilitación Oral Fija"
  }]
}

```
