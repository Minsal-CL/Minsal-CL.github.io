# Ocupación de un Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ocupación de un Paciente**

## Example Observation: Ocupación de un Paciente

Profile: [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)

**status**: Final

**category**: Social History

**code**: Ocupación

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official, ))](Patient-MinsalPacienteEjemplo.md)

**effective**: 2021-03-08 --> (ongoing)

**value**: Ingenieros biomédicos



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EjemploOcupacion",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOcupacion"
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
        "code" : "04",
        "display" : "Ocupación"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "effectivePeriod" : {
    "start" : "2021-03-08"
  },
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSOcupacionesDet",
        "code" : "2147",
        "display" : "Ingenieros biomédicos"
      }
    ]
  }
}

```
