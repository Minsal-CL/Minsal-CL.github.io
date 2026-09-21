# Informe de resultado de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informe de resultado de ejemplo**

## Example DiagnosticReport: Informe de resultado de ejemplo

Profile: [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)

## Informe de laboratorio (Laboratory) 

| | |
| :--- | :--- |
| Subject | Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: 12345678-5 (use: official, )) |
| Relevant Time | 2026-08-28 14:30:00-0400 |
| Reported | 2026-08-28 15:00:00-0400 |
| Performer | [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md) |
| Identifier | `https://ejemplo.cl/informes-laboratorio`/INF-MULTIPLE-001 |
| Presented Form | application/pdf: JVBERi0xLjQKMSAwIG9iago8PCAvVHlw... |

**Report Details**



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "ResultadoMultipleEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/ResultadoDiagnosticoLaboratorio"]
  },
  "identifier" : [{
    "system" : "https://ejemplo.cl/informes-laboratorio",
    "value" : "INF-MULTIPLE-001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/PrestacionHemogramaEjemplo"
  },
  {
    "reference" : "ServiceRequest/PrestacionGlicemiaEjemplo"
  },
  {
    "reference" : "ServiceRequest/PrestacionBilirrubinaEjemplo"
  },
  {
    "reference" : "ServiceRequest/PrestacionNitrogenoUreicoEjemplo"
  },
  {
    "reference" : "ServiceRequest/PrestacionColesterolTotalEjemplo"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Reporte de laboratorio: Paciente:Punto temporal:Tipo:Documento:"
    }],
    "text" : "Informe de laboratorio"
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemplo"
  },
  "effectiveDateTime" : "2026-08-28T14:30:00-04:00",
  "issued" : "2026-08-28T15:00:00-04:00",
  "performer" : [{
    "reference" : "Organization/LaboratorioEjecutorEjemplo"
  }],
  "specimen" : [{
    "reference" : "Specimen/EspecimenEjemplo"
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "data" : "JVBERi0xLjQKMSAwIG9iago8PCAvVHlwZSAvQ2F0YWxvZyAvUGFnZXMgMiAwIFIgPj4KZW5kb2JqCjIgMCBvYmoKPDwgL1R5cGUgL1BhZ2VzIC9LaWRzIFszIDAgUl0gL0NvdW50IDEgPj4KZW5kb2JqCjMgMCBvYmoKPDwgL1R5cGUgL1BhZ2UgL1BhcmVudCAyIDAgUiAvUmVzb3VyY2VzIDw8IC9Gb250IDw8IC9GMSA1IDAgUiA+PiA+PiAvTWVkaWFCb3ggWzAgMCA2MTIgNzkyXSAvQ29udGVudHMgNCAwIFIgPj4KZW5kb2JqCjQgMCBvYmoKPDwgL0xlbmd0aCAxNTQgPj4Kc3RyZWFtCkJUIC9GMSAxNiBUZiA3MiA3MDAgVGQgKEluZm9ybWUgZGUgTGFib3JhdG9yaW8gLSBEb2N1bWVudG8gZGUgZWplbXBsbykgVGogRVQKQlQgL0YxIDEyIFRmIDcyIDY3MCBUZCAoU29saWNpdHVkIFNPTC1NVUxUSVBMRS0wMDEgLSBIb3NwaXRhbCBkZSBUYWxjYSkgVGogRVQKZW5kc3RyZWFtCmVuZG9iago1IDAgb2JqCjw8IC9UeXBlIC9Gb250IC9TdWJ0eXBlIC9UeXBlMSAvQmFzZUZvbnQgL0hlbHZldGljYSA+PgplbmRvYmoKeHJlZgowIDYKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMDA5IDAwMDAwIG4gCjAwMDAwMDAwNTggMDAwMDAgbiAKMDAwMDAwMDExNSAwMDAwMCBuIAowMDAwMDAwMjQxIDAwMDAwIG4gCjAwMDAwMDA0NDYgMDAwMDAgbiAKdHJhaWxlcgo8PCAvU2l6ZSA2IC9Sb290IDEgMCBSID4+CnN0YXJ0eHJlZgo1MTYKJSVFT0Y=",
    "title" : "Informe de laboratorio",
    "creation" : "2026-08-28T15:00:00-04:00"
  }]
}

```
