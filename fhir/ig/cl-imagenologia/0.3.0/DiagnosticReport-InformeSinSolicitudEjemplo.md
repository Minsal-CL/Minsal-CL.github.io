# Informe radiológico sin solicitud previa - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informe radiológico sin solicitud previa**

## Example DiagnosticReport: Informe radiológico sin solicitud previa

Profile: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md)

## RM CEREBRO (Radiology) 

| | |
| :--- | :--- |
| Subject | María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, )) |
| Relevant Time | 2026-09-02 16:05:00-0400 --> 2026-09-02 16:45:00-0400 |
| Reported | 2026-09-02 18:10:00-0400 |
| Performer | [Organization Servicio de Imagenología, Hospital de Talca](Organization-ServicioImagenologiaEjemplo.md) |
| Identifier | Accession ID/20260902000199 |
| Presented Form | application/pdf: JVBERi0xLjQKMSAwIG9iajw8L1R5cGUv... |

**Report Details**



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "InformeSinSolicitudEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "http://example.org/hospital-talca/accession-number",
    "value" : "20260902000199"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "RAD",
      "display" : "Radiology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia",
      "code" : "RM01",
      "display" : "RM CEREBRO"
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0405001",
      "display" : "Resonancia magnética cráneo encefálica"
    }],
    "text" : "RM CEREBRO"
  },
  "subject" : {
    "reference" : "Patient/PacienteImagenologiaEjemplo"
  },
  "effectivePeriod" : {
    "start" : "2026-09-02T16:05:00-04:00",
    "end" : "2026-09-02T16:45:00-04:00"
  },
  "issued" : "2026-09-02T18:10:00-04:00",
  "performer" : [{
    "reference" : "Organization/ServicioImagenologiaEjemplo"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/MedicoRadiologoEjemplo"
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "data" : "JVBERi0xLjQKMSAwIG9iajw8L1R5cGUvQ2F0YWxvZy9QYWdlcyAyIDAgUj4+ZW5kb2JqCjIgMCBvYmo8PC9UeXBlL1BhZ2VzL0tpZHNbMyAwIFJdL0NvdW50IDE+PmVuZG9iagozIDAgb2JqPDwvVHlwZS9QYWdlL1BhcmVudCAyIDAgUi9NZWRpYUJveFswIDAgMjAwIDEwMF0vQ29udGVudHMgNCAwIFIvUmVzb3VyY2VzPDwvRm9udDw8L0YxIDUgMCBSPj4+Pj4+ZW5kb2JqCjQgMCBvYmo8PC9MZW5ndGggNjg+PnN0cmVhbQpCVCAvRjEgMTAgVGYgMTAgNTAgVGQgKEluZm9ybWUgcmFkaW9sb2dpY28gZGUgZWplbXBsbykgVGogRVQKZW5kc3RyZWFtCmVuZG9iago1IDAgb2JqPDwvVHlwZS9Gb250L1N1YnR5cGUvVHlwZTEvQmFzZUZvbnQvSGVsdmV0aWNhPj5lbmRvYmoKdHJhaWxlcjw8L1Jvb3QgMSAwIFI+PgolJUVPRg==",
    "title" : "Informe RM cerebro",
    "creation" : "2026-09-02T17:50:00-04:00"
  }]
}

```
