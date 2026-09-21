# Solicitud cancelada por no presentación del paciente - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud cancelada por no presentación del paciente**

## Example ServiceRequest: Solicitud cancelada por no presentación del paciente

Profile: [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)

**Request status reason**: Did not attend - no reason

**identifier**: Placer Identifier/SOL-MULTIPLE-003-HEM

**requisition**: `https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105`/SOL-MULTIPLE-003

**status**: Revoked

**intent**: Order

**category**: Laboratory

**code**: Hemograma

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: 12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**authoredOn**: 2026-09-08 08:00:00-0400

**requester**: [Practitioner María González ](Practitioner-ProfesionalSolicitanteEjemplo.md)

**performer**: [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "SolicitudCanceladaNoPresentacionEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/request-statusReason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "270426007",
        "display" : "Did not attend - no reason"
      }]
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "https://ejemplo.cl/ordenes-laboratorio",
    "value" : "SOL-MULTIPLE-003-HEM"
  }],
  "requisition" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
    "value" : "SOL-MULTIPLE-003"
  },
  "status" : "revoked",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0301045",
      "display" : "Hemograma"
    }],
    "text" : "Hemograma"
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemplo"
  },
  "authoredOn" : "2026-09-08T08:00:00-04:00",
  "requester" : {
    "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
  },
  "performer" : [{
    "reference" : "Organization/LaboratorioEjecutorEjemplo"
  }]
}

```
