# Ejemplo de una Solicitud - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de una Solicitud**

## Example ServiceRequest: Ejemplo de una Solicitud

version: 7.0

Profile: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)

**Motivo Cierre Interconsulta**: Atención Realizada (1)

**ExtBool Requiere Examen**: true

**ExtBool Atención Preferente**: true

**ExtBool Resolutividad APS**: true

**Origen Interconsulta**: APS

**Extension String Fundamento Priorizacion**: Paciente es jefe de hogar y cuidador de adulto mayor.

**Estado Interconsulta Codigo**: Cerrada

**Especialidad Médica Destino Código**: MEDICINA INTERNA

**SubEspecialidad Médica Destino Código**: ENDOCRINOLOGÍA ADULTO

> **Pertinencia Interconsulta**
* EvaluacionPertinencia: Pertinente Incompleta

**Sospecha Patologia Ges**: false

**identifier**: 123

**status**: Draft

**intent**: Order

**category**: Presencial

**priority**: Routine

**code**: Interconsulta para atención presencial

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --> 2024-01-17 16:30:00+1000](Encounter-EncounterIniciarEjemplo.md)

**authoredOn**: 2024-12-10 09:00:00+0000

**requester**: [PractitionerRole Iniciador](PractitionerRole-PractitionerRoleIniciador.md)

**performer**: [PractitionerRole Atendedor](PractitionerRole-PractitionerRoleAtendedor.md)

**locationCode**: Nivel Secundario

**reasonCode**: Confirmación

**supportingInfo**: 

* [Condition Adrenal antibody detected](Condition-ConditionInicialEjemplo.md)
* [AllergyIntolerance castaña de cajú](AllergyIntolerance-AllergyIntoleranceExample.md)
* [Observation Estrategia de cuidado integral centrado en las personas](Observation-IndiceConmorbilidadEjemplo.md)
* [Observation Cuidador de personas con molestias relacionadas con la edad, enfermedades crónicas o fragilidad.: Paciente:Punto temporal:Tipo:Ordinal:](Observation-EjemploObservationCuidador.md)
* [Observation Disability status](Observation-EjemploObservationDiscapacidadLE.md)
* [Response to Questionnaire '->Motivo de Derivación' about '->María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))'](QuestionnaireResponse-MotivoDerivacionEjemplo.md)
* [ServiceRequest Ag específico de próstata: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:](ServiceRequest-EjemploSolicitudExamen.md)
* [Observation Ab adrenal: Suero : Punto temporal: Concentración arbitraria: Cuantitativo:](Observation-AnticuerpoAdrenal.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "EjemploSolicitudInterconsultaFinalizada",
  "meta" : {
    "versionId" : "7.0",
<<<<<<< HEAD
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionMotivoCierreInterconsulta",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta",
        "code" : "2",
        "display" : "Atención Realizada (1)"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolRequiereExamen",
    "valueBoolean" : true
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente",
    "valueBoolean" : true
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS",
    "valueBoolean" : true
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionOrigenInterconsulta",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta",
        "code" : "1",
        "display" : "APS"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionStringFundamentoPriorizacion",
    "valueString" : "Paciente es jefe de hogar y cuidador de adulto mayor."
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEstadoInterconsultaCodigoLE",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta",
        "code" : "7",
        "display" : "Cerrada"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEspecialidadMedicaDestinoCodigo",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
        "code" : "30",
        "display" : "MEDICINA INTERNA"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSubEspecialidadMedicaDestinoCodigo",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
        "code" : "14",
        "display" : "ENDOCRINOLOGÍA ADULTO"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "EvaluacionPertinencia",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta",
          "code" : "3",
          "display" : "Pertinente Incompleta"
        }]
      }
    }],
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta"
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "value" : "123"
  }],
  "status" : "draft",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
      "code" : "1",
      "display" : "Presencial"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "103696004"
    }],
=======
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionMotivoCierreInterconsulta",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta",
            "code" : "2",
            "display" : "Atención Realizada (1)"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolRequiereExamen",
      "valueBoolean" : true
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente",
      "valueBoolean" : true
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS",
      "valueBoolean" : true
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionOrigenInterconsulta",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta",
            "code" : "1",
            "display" : "APS"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionStringFundamentoPriorizacion",
      "valueString" : "Paciente es jefe de hogar y cuidador de adulto mayor."
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEstadoInterconsultaCodigoLE",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta",
            "code" : "7",
            "display" : "Cerrada"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEspecialidadMedicaDestinoCodigo",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
            "code" : "30",
            "display" : "MEDICINA INTERNA"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSubEspecialidadMedicaDestinoCodigo",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
            "code" : "14",
            "display" : "ENDOCRINOLOGÍA ADULTO"
          }
        ]
      }
    },
    {
      "extension" : [
        {
          "url" : "EvaluacionPertinencia",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta",
                "code" : "3",
                "display" : "Pertinente Incompleta"
              }
            ]
          }
        }
      ],
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta"
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes",
      "valueBoolean" : false
    }
  ],
  "identifier" : [
    {
      "value" : "123"
    }
  ],
  "status" : "draft",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
          "code" : "1",
          "display" : "Presencial"
        }
      ]
    }
  ],
  "priority" : "routine",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "103696004"
      }
    ],
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
    "text" : "Interconsulta para atención presencial"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/EncounterIniciarEjemplo"
  },
  "authoredOn" : "2024-12-10T09:00:00Z",
  "requester" : {
    "reference" : "PractitionerRole/PractitionerRoleIniciador"
  },
<<<<<<< HEAD
  "performer" : [{
    "reference" : "PractitionerRole/PractitionerRoleAtendedor"
  }],
  "locationCode" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo",
      "code" : "1",
      "display" : "Nivel Secundario"
    }]
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo",
      "code" : "1",
      "display" : "Confirmación"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "Condition/ConditionInicialEjemplo"
  },
  {
    "reference" : "AllergyIntolerance/AllergyIntoleranceExample"
  },
  {
    "reference" : "Observation/IndiceConmorbilidadEjemplo"
  },
  {
    "reference" : "Observation/EjemploObservationCuidador"
  },
  {
    "reference" : "Observation/EjemploObservationDiscapacidadLE"
  },
  {
    "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo"
  },
  {
    "reference" : "ServiceRequest/EjemploSolicitudExamen"
  },
  {
    "reference" : "Observation/AnticuerpoAdrenal"
  }]
=======
  "performer" : [
    {
      "reference" : "PractitionerRole/PractitionerRoleAtendedor"
    }
  ],
  "locationCode" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo",
          "code" : "1",
          "display" : "Nivel Secundario"
        }
      ]
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo",
          "code" : "1",
          "display" : "Confirmación"
        }
      ]
    }
  ],
  "supportingInfo" : [
    {
      "reference" : "Condition/ConditionInicialEjemplo"
    },
    {
      "reference" : "AllergyIntolerance/AllergyIntoleranceExample"
    },
    {
      "reference" : "Observation/IndiceConmorbilidadEjemplo"
    },
    {
      "reference" : "Observation/EjemploObservationCuidador"
    },
    {
      "reference" : "Observation/EjemploObservationDiscapacidadLE"
    },
    {
      "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo"
    },
    {
      "reference" : "ServiceRequest/EjemploSolicitudExamen"
    },
    {
      "reference" : "Observation/AnticuerpoAdrenal"
    }
  ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
}

```
