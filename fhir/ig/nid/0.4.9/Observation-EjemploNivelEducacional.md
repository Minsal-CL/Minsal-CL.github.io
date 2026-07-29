# Nivel Educacional de un Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Nivel Educacional de un Paciente**

## Example Observation: Nivel Educacional de un Paciente

Profile: [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)

**status**: Final

**category**: Social History

**code**: Nivel Educacional

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official, ))](Patient-MinsalPacienteEjemplo.md)

**effective**: 2021-03-08 --> (ongoing)

> **component****code**:Último curso aprobado**value**: 7

> **component****code**:Último nivel aprobado**value**:Educación Superior



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EjemploNivelEducacional",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALNivelEducacional"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoObservacion",
        "code" : "01",
        "display" : "Nivel Educacional"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "effectivePeriod" : {
    "start" : "2021-03-08"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc",
            "code" : "01",
            "display" : "Último curso aprobado"
          }
        ]
      },
      "valueInteger" : 7
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc",
            "code" : "02",
            "display" : "Último nivel aprobado"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSUNivelAprob",
            "code" : "5",
            "display" : "Educación Superior"
          }
        ]
      }
    }
  ]
}

```
