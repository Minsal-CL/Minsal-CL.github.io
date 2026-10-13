# Resultado atomizado de ejemplo: Glicemia con valor crítico - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado atomizado de ejemplo: Glicemia con valor crítico**

## Example Observation: Resultado atomizado de ejemplo: Glicemia con valor crítico

Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md)

**identifier**: `https://ejemplo.cl/resultados-laboratorio`/SOL-MULTIPLE-001-GLU-GLU

**basedOn**: [ServiceRequest Glucosa (glicemia)](ServiceRequest-PrestacionGlicemiaEjemplo.md)

**status**: Final

**category**: Laboratory

**code**: Glucosa (glicemia)

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: 12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**effective**: 2026-08-28 11:00:00-0400

**issued**: 2026-08-28 11:30:00-0400

**performer**: [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)

**value**: 320 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: Critical high

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 70 mg/dL (Details: UCUM codemg/dL = 'mg/dL') | 100 mg/dL (Details: UCUM codemg/dL = 'mg/dL') | Rango de referencia en ayunas |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ObservacionGlicemiaCriticaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio"]
  },
  "identifier" : [{
    "system" : "https://ejemplo.cl/resultados-laboratorio",
    "value" : "SOL-MULTIPLE-001-GLU-GLU"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/PrestacionGlicemiaEjemplo"
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
      "system" : "http://loinc.org",
      "code" : "2345-7",
      "display" : "Glucosa: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:"
    }],
    "text" : "Glucosa (glicemia)"
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
    "value" : 320,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "HH",
      "display" : "Critical high"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 70,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "high" : {
      "value" : 100,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "text" : "Rango de referencia en ayunas"
  }]
}

```
