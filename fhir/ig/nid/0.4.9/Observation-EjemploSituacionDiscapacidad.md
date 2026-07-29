# Situacion Discapacidad de un Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Situacion Discapacidad de un Paciente**

## Example Observation: Situacion Discapacidad de un Paciente

Profile: [MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md)

**status**: Final

**category**: Social History

**code**: Situacion Discapacidad

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official, ))](Patient-MinsalPacienteEjemplo.md)

**effective**: 2018-07-15 --> (ongoing)

**value**: true

> **component****code**:Origen de la discapacidad**value**:Origen sensorial visual

> **component****code**:Evaluación Valoración de Desempeño en Comunidad (IVADEC-DIF)**value**:Discapacidad leve



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EjemploSituacionDiscapacidad",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad"
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
        "code" : "03",
        "display" : "Situacion Discapacidad"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "effectivePeriod" : {
    "start" : "2018-07-15"
  },
  "valueBoolean" : true,
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad",
            "code" : "01",
            "display" : "Origen de la discapacidad"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOrigenDiscapacidad",
            "code" : "2",
            "display" : "Origen sensorial visual"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad",
            "code" : "02",
            "display" : "Evaluación Valoración de Desempeño en Comunidad (IVADEC-DIF)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSValoracionDesempeno",
            "code" : "2",
            "display" : "Discapacidad leve"
          }
        ]
      }
    }
  ]
}

```
