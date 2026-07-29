# Encounter Entrevista LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter Entrevista LE**

## Example Encounter: Encounter Entrevista LE

Profile: [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md)

**En Condicion Cirugia**: true

**Extension Resultado Evaluación Pre-Qx**: El Paciente requiere intervención quirúrgica.

**identifier**: 1234567890

**status**: Finished

**class**: [Modalidad Atencion Codigo: 1](CodeSystem-CSModalidadAtencionCodigo.md#CSModalidadAtencionCodigo-1) (Presencial)

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**basedOn**: [ServiceRequest estructura del pulmón](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [PractitionerRole Entrevistador](PractitionerRole-0e5c9353-5f8e-4801-b7fc-59395f14344c.md) |

**appointment**: [Appointment: extension = Llamada,; identifier = CITA-20241027-001; status = booked; serviceType = Entrevista Pre Quirúrgica; start = 2024-10-27 10:00:00-0400; end = 2024-10-27 10:30:00-0400; created = 2024-10-25 14:00:00-0400](Appointment-76adaeb4-4885-4aa6-96c1-13b9df9a61d7.md)

**period**: 2024-12-02 10:00:00-0400 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "6c7dae68-552d-44cb-b414-e5024ae8e0a0",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterEntrevistaLE"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EnCondicionCirugia",
      "valueBoolean" : true
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionResultadoEvaluacionPreQx",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSResultadoEvaluacionPreQuirurgica",
            "code" : "1",
            "display" : "El Paciente requiere intervención quirúrgica."
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "1234567890"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo",
    "code" : "1",
    "display" : "Presencial"
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/38a17703-0731-4c3f-88fd-1202dc99d7ce"
    }
  ],
  "participant" : [
    {
      "individual" : {
        "reference" : "PractitionerRole/0e5c9353-5f8e-4801-b7fc-59395f14344c"
      }
    }
  ],
  "appointment" : [
    {
      "reference" : "Appointment/76adaeb4-4885-4aa6-96c1-13b9df9a61d7"
    }
  ],
  "period" : {
    "start" : "2024-12-02T10:00:00-04:00"
  }
}

```
