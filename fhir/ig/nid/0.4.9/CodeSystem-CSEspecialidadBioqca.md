# Especialidades y Subespecialidades Bioquímicas - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Especialidades y Subespecialidades Bioquímicas**

## CodeSystem: Especialidades y Subespecialidades Bioquímicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadBioqca | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadBioqca |

 
Especialidades y Subespecialidades Bioquímicas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadBioqca](ValueSet-VSEspecialidadBioqca.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadBioqca",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadBioqca",
  "version" : "0.4.9",
  "name" : "CSEspecialidadBioqca",
  "title" : "Especialidades y Subespecialidades Bioquímicas",
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
  "description" : "Especialidades y Subespecialidades Bioquímicas",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "1",
      "display" : "Laboratorio Clínico"
    },
    {
      "code" : "2",
      "display" : "Laboratorio Forense"
    },
    {
      "code" : "3",
      "display" : "Salud Pública"
    }
  ]
}

```
