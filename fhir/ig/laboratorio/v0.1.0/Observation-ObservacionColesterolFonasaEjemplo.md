# Resultado atomizado de ejemplo: Colesterol total, codificado en FONASA - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado atomizado de ejemplo: Colesterol total, codificado en FONASA**

## Example Observation: Resultado atomizado de ejemplo: Colesterol total, codificado en FONASA

Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md)

**identifier**: `https://ejemplo.cl/resultados-laboratorio`/SOL-MULTIPLE-001-COL-COL

**basedOn**: [ServiceRequest Colesterol total](ServiceRequest-PrestacionColesterolTotalEjemplo.md)

**status**: Final

**category**: Laboratory

**code**: Colesterol total

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: RunPacienteNid#12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**effective**: 2026-08-28 11:00:00-0400

**issued**: 2026-08-28 11:30:00-0400

**performer**: [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)

**value**: 195 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**specimen**: [Specimen: identifier = https://ejemplo.cl/identificadores/especimenes#ESP-MULTIPLE-001-HEM; status = available; type = Blood specimen (specimen)](Specimen-EspecimenEjemplo.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Text** |
| * | 200 mg/dL (Details: UCUM codemg/dL = 'mg/dL') | Deseable: menor a 200 mg/dL |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ObservacionColesterolFonasaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio"]
  },
  "identifier" : [{
    "system" : "https://ejemplo.cl/resultados-laboratorio",
    "value" : "SOL-MULTIPLE-001-COL-COL"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/PrestacionColesterolTotalEjemplo"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0302067",
      "display" : "Colesterol total"
    }],
    "text" : "Colesterol total"
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemplo"
  },
  "effectiveDateTime" : "2026-08-28T11:00:00-04:00",
  "issued" : "2026-08-28T11:30:00-04:00",
  "performer" : [{
    "reference" : "Organization/LaboratorioEjecutorEjemplo"
  }],
  "valueQuantity" : {
    "value" : 195,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "specimen" : {
    "reference" : "Specimen/EspecimenEjemplo"
  },
  "referenceRange" : [{
    "high" : {
      "value" : 200,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "text" : "Deseable: menor a 200 mg/dL"
  }]
}

```
