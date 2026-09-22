# Prestación FONASA: Glucosa (glicemia) - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prestación FONASA: Glucosa (glicemia)**

## Example ServiceRequest: Prestación FONASA: Glucosa (glicemia)

Profile: [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)

**identifier**: Placer Identifier/SOL-MULTIPLE-001-GLU

**requisition**: [OrdenGrupoLaboratorio](NamingSystem-NSOrdenGrupoLaboratorio.md)/SOL-MULTIPLE-001

**status**: Active

**intent**: Order

**category**: Laboratory

**code**: Glucosa (glicemia)

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: RunPacienteNid#12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**authoredOn**: 2026-08-28 10:00:00-0400

**requester**: [Practitioner María González ](Practitioner-ProfesionalSolicitanteEjemplo.md)

**performer**: [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "PrestacionGlicemiaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "https://ejemplo.cl/ordenes-laboratorio",
    "value" : "SOL-MULTIPLE-001-GLU"
  }],
  "requisition" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
    "value" : "SOL-MULTIPLE-001"
  },
  "status" : "active",
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
      "code" : "0302047",
      "display" : "Glucosa (glicemia)"
    }],
    "text" : "Glucosa (glicemia)"
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemplo"
  },
  "authoredOn" : "2026-08-28T10:00:00-04:00",
  "requester" : {
    "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
  },
  "performer" : [{
    "reference" : "Organization/LaboratorioEjecutorEjemplo"
  }]
}

```
