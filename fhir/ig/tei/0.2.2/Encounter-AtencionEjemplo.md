# Ejemplo de un Encuentro - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de un Encuentro**

## Example Encounter: Ejemplo de un Encuentro

Profile: [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md)

**ExtBool Pertinencia Atencion Box**: true

**identifier**: 123

**status**: Finished

**class**: [Modalidad Atencion Codigo: 1](CodeSystem-CSModalidadAtencionCodigo.md#CSModalidadAtencionCodigo-1) (Presencial)

**type**: Nueva

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**basedOn**: [ServiceRequest derivación del paciente a un especialista](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [PractitionerRole Atendedor](PractitionerRole-PractitionerRoleAtendedor.md) |

**period**: 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Severe adrenal insufficiency](Condition-ConditionAtencionejemplo.md) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "AtencionEjemplo",
  "meta" : {
<<<<<<< HEAD
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaAtencionBox",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "value" : "123"
  }],
=======
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaAtencionBox",
      "valueBoolean" : true
    }
  ],
  "identifier" : [
    {
      "value" : "123"
    }
  ],
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  "status" : "finished",
  "class" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
    "code" : "1",
    "display" : "Presencial"
  },
<<<<<<< HEAD
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoConsulta",
      "code" : "1",
      "display" : "Nueva"
    }]
  }],
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
  }],
  "participant" : [{
    "individual" : {
      "reference" : "PractitionerRole/PractitionerRoleAtendedor"
    }
  }],
=======
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoConsulta",
          "code" : "1",
          "display" : "Nueva"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
    }
  ],
  "participant" : [
    {
      "individual" : {
        "reference" : "PractitionerRole/PractitionerRoleAtendedor"
      }
    }
  ],
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  "period" : {
    "start" : "2024-02-22T08:00:00-03:00",
    "end" : "2024-02-22T08:30:00-03:00"
  },
<<<<<<< HEAD
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/ConditionAtencionejemplo"
    }
  }]
=======
  "diagnosis" : [
    {
      "condition" : {
        "reference" : "Condition/ConditionAtencionejemplo"
      }
    }
  ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
}

```
