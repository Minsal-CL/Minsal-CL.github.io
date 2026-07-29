# Ejemplo Encuentro Urgencia Egreso por Derivación - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Encuentro Urgencia Egreso por Derivación**

## Example Encounter: Ejemplo Encuentro Urgencia Egreso por Derivación

Profile: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)

**Acompañante**: false

**identifier**: 126402-0025

**status**: Finished

> **statusHistory****status**: Arrived**period**: 2024-10-25 13:18:00-0400 --> (ongoing)

> **statusHistory****status**: Triaged**period**: 2024-10-25 13:30:00-0400 --> (ongoing)

> **statusHistory****status**: In Progress**period**: 2024-10-25 14:12:00-0400 --> (ongoing)

> **statusHistory****status**: Finished**period**: 2024-10-25 14:53:00-0400 --> (ongoing)

**class**: [ActCode: EMER](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER) (emergency)

**priority**: Atención Prioritaria

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

> **participant****type**:admitter**period**: 2024-10-25 13:18:00-0400 --> (ongoing)**individual**:[Practitioner Mario Donoso](Practitioner-b9f6967f-51b5-49f4-8576-ce9f588523c2.md)

> **participant****type**:Emergency**individual**:[RelatedPerson Jose Luis Perez](RelatedPerson-bb7f34f7-8f4e-42c8-aa84-1f64bf584a05.md)

> **participant****type**:Categorizador**period**: 2024-10-25 13:30:00-0400 --> (ongoing)**individual**:[Practitioner Juan Carlos Perez Gonzalez(official)](Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.md)

> **participant****type**:attender**period**: 2024-10-25 14:12:00-0400 --> (ongoing)**individual**:[Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

> **participant****type**:consultant**period**: 2024-10-25 14:29:00-0400 --> (ongoing)**individual**:[Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

> **participant****type**:discharger**period**: 2024-10-25 14:53:00-0400 --> (ongoing)**individual**:[Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

**period**: 2024-10-25 13:18:00-0400 --> 2024-10-25 14:53:00-0400

**reasonCode**: Dolor abdominal de 24 horas de evolución

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Condition** | **Use** | **Rank** |
| * | [Condition Acute appendicitis](Condition-e27704ff-fa1a-4750-9d23-36ce567f35b0.md) | Admission diagnosis | 1 |

> **hospitalization****Medio de Llegada**:Vehículo particular**Consulta por Accidente**: false**admitSource**:Domicilio**dischargeDisposition**:Derivación o traslado a otro centro

**serviceProvider**: [Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "fbce23ed-b195-47a2-81a2-be4aaf11b038",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante",
      "valueBoolean" : false
    }
  ],
  "identifier" : [
    {
      "value" : "126402-0025"
    }
  ],
  "status" : "finished",
  "statusHistory" : [
    {
      "status" : "arrived",
      "period" : {
        "start" : "2024-10-25T13:18:00-04:00"
      }
    },
    {
      "status" : "triaged",
      "period" : {
        "start" : "2024-10-25T13:30:00-04:00"
      }
    },
    {
      "status" : "in-progress",
      "period" : {
        "start" : "2024-10-25T14:12:00-04:00"
      }
    },
    {
      "status" : "finished",
      "period" : {
        "start" : "2024-10-25T14:53:00-04:00"
      }
    }
  ],
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER"
  },
  "priority" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-ugo",
        "code" : "C3",
        "display" : "Atención Prioritaria"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ADM"
            }
          ]
        }
      ],
      "period" : {
        "start" : "2024-10-25T13:18:00-04:00"
      },
      "individual" : {
        "reference" : "Practitioner/b9f6967f-51b5-49f4-8576-ce9f588523c2"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/participant-type",
              "version" : "4.0.1",
              "code" : "emergency"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "RelatedPerson/bb7f34f7-8f4e-42c8-aa84-1f64bf584a05"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia",
              "code" : "triage"
            }
          ]
        }
      ],
      "period" : {
        "start" : "2024-10-25T13:30:00-04:00"
      },
      "individual" : {
        "reference" : "Practitioner/d04739d3-ba47-4f0f-920f-bcd66b474963"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ATND"
            }
          ]
        }
      ],
      "period" : {
        "start" : "2024-10-25T14:12:00-04:00"
      },
      "individual" : {
        "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "CON"
            }
          ]
        }
      ],
      "period" : {
        "start" : "2024-10-25T14:29:00-04:00"
      },
      "individual" : {
        "reference" : "Practitioner/fbb0e12c-95ec-43f7-bff1-73009b307cb5"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "DIS"
            }
          ]
        }
      ],
      "period" : {
        "start" : "2024-10-25T14:53:00-04:00"
      },
      "individual" : {
        "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
      }
    }
  ],
  "period" : {
    "start" : "2024-10-25T13:18:00-04:00",
    "end" : "2024-10-25T14:53:00-04:00"
  },
  "reasonCode" : [
    {
      "text" : "Dolor abdominal de 24 horas de evolución"
    }
  ],
  "diagnosis" : [
    {
      "condition" : {
        "reference" : "Condition/e27704ff-fa1a-4750-9d23-36ce567f35b0"
      },
      "use" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "AD"
          }
        ]
      },
      "rank" : 1
    }
  ],
  "hospitalization" : {
    "extension" : [
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/MedioDeLlegada",
              "code" : "5",
              "display" : "Vehículo particular"
            }
          ]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente",
        "valueBoolean" : false
      }
    ],
    "admitSource" : {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/Procedencia",
          "code" : "9",
          "display" : "Domicilio"
        }
      ]
    },
    "dischargeDisposition" : {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "Indicacion",
              "valueCoding" : {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/indicacion-traslado-otro-centro",
                "code" : "1",
                "display" : "Traslado a otro centro asistencial o establecimiento sanitario (Perteneciente al SNSS)"
              }
            },
            {
              "url" : "FechaIndicacion",
              "valueDateTime" : "2024-10-25T14:53:00-04:00"
            }
          ],
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionDerivacion"
        }
      ],
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/tipo-egreso",
          "code" : "4",
          "display" : "Derivación o traslado a otro centro"
        }
      ]
    }
  },
  "serviceProvider" : {
    "reference" : "Organization/5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  }
}

```
