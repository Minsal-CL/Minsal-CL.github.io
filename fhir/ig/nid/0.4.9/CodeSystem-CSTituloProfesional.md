# Título Profesional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Título Profesional**

## CodeSystem: Título Profesional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSTituloProfesional |

 
Título del Prestador Profesional 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTituloProfesional](ValueSet-VSTituloProfesional.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTituloProfesional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
  "version" : "0.4.9",
  "name" : "CSTituloProfesional",
  "title" : "Título Profesional",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
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
    }
  ],
  "description" : "Título del Prestador Profesional",
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
  "count" : 31,
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
      "code" : "22",
      "display" : "LABORATORISTAS DENTALES"
    },
    {
      "code" : "23",
      "display" : "PODÓLOGOS/AS"
    },
    {
      "code" : "24",
      "display" : "ÓPTICOS/AS"
    },
    {
      "code" : "25",
      "display" : "CONTACTÓLOGOS/AS"
    },
    {
      "code" : "26",
      "display" : "HOMEÓPATAS"
    },
    {
      "code" : "27",
      "display" : "ACUPUNTURISTAS"
    },
    {
      "code" : "28",
      "display" : "NATURÓPATAS"
    },
    {
      "code" : "29",
      "display" : "COSMETÓLOGOS/AS"
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
