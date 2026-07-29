# Titulo Profesional - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Titulo Profesional**

## CodeSystem: Titulo Profesional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSTituloProfesional |

 
Códigos asociados a los títulos profesionales de los participantes en un encuentro de urgencia 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTituloProfesional](ValueSet-TituloProfesional.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TituloProfesional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional",
  "version" : "0.1.2-ballot",
  "name" : "CSTituloProfesional",
  "title" : "Titulo Profesional",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-10T16:35:01-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    },
    {
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Códigos asociados a los títulos profesionales de los participantes en un encuentro de urgencia",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 23,
  "concept" : [
    {
      "code" : "1",
      "display" : "MÉDICO CIRUJANO"
    },
    {
      "code" : "2",
      "display" : "CIRUJANO DENTISTA"
    },
    {
      "code" : "3",
      "display" : "ENFERMERAS(OS)"
    },
    {
      "code" : "4",
      "display" : "ENFERMERAS(OS) MATRONAS(ES)"
    },
    {
      "code" : "5",
      "display" : "MATRONAS(ES)"
    },
    {
      "code" : "6",
      "display" : "TECNÓLOGOS MÉDICOS"
    },
    {
      "code" : "7",
      "display" : "PSICÓLOGOS/AS"
    },
    {
      "code" : "8",
      "display" : "KINESIÓLOGOS/AS"
    },
    {
      "code" : "9",
      "display" : "FARMACÉUTICOS Y QUÍMICO-FARMACÉUTICOS"
    },
    {
      "code" : "10",
      "display" : "BIOQUÍMICOS"
    },
    {
      "code" : "11",
      "display" : "NUTRICIONISTAS"
    },
    {
      "code" : "12",
      "display" : "FONOAUDIÓLOGOS/AS"
    },
    {
      "code" : "13",
      "display" : "TERAPEUTAS OCUPACIONALES"
    },
    {
      "code" : "14",
      "display" : "AUXILIARES PARAMÉDICOS DE ALIMENTACIÓN"
    },
    {
      "code" : "15",
      "display" : "A.P. DE RADIOLOGÍA, RADIOTERAPIA, LAB"
    },
    {
      "code" : "16",
      "display" : "AUXILIARES PARAMÉDICOS DE ODONTOLOGÍA"
    },
    {
      "code" : "17",
      "display" : "AUXILIARES PARAMÉDICOS DE FARMACIA"
    },
    {
      "code" : "18",
      "display" : "AUXILIARES DE ENFERMERÍA"
    },
    {
      "code" : "19",
      "display" : "TÉCNICO EN NIVEL SUPERIOR EN SALUD"
    },
    {
      "code" : "20",
      "display" : "TÉCNICOS EN SALUD"
    },
    {
      "code" : "21",
      "display" : "TÉCNICOS NIVEL MEDIO EN SALUD"
    },
    {
      "code" : "30",
      "display" : "MÉDICO GENERAL"
    },
    {
      "code" : "99",
      "display" : "DESCONOCIDA"
    }
  ]
}

```
