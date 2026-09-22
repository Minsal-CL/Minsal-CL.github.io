# Resultado atomizado de ejemplo: Hemoglobina - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado atomizado de ejemplo: Hemoglobina**

## Example Observation: Resultado atomizado de ejemplo: Hemoglobina

Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md)

**identifier**: `https://ejemplo.cl/resultados-laboratorio`/SOL-MULTIPLE-001-HEM-HGB

**basedOn**: [ServiceRequest Hemograma](ServiceRequest-PrestacionHemogramaEjemplo.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobina

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: 12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**effective**: 2026-08-28 11:00:00-0400

**issued**: 2026-08-28 11:30:00-0400

**performer**: [Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)

**value**: 13.2 g/dL (Details: UCUM codeg/dL = 'g/dL')

**specimen**: [Specimen: identifier = https://ejemplo.cl/identificadores/especimenes#ESP-MULTIPLE-001-HEM; status = available; type = Blood specimen (specimen)](Specimen-EspecimenEjemplo.md)

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 12 g/dL (Details: UCUM codeg/dL = 'g/dL') | 15.5 g/dL (Details: UCUM codeg/dL = 'g/dL') | Rango de referencia adulta (mujer) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ObservacionHemoglobinaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio"]
  },
  "identifier" : [{
    "system" : "https://ejemplo.cl/resultados-laboratorio",
    "value" : "SOL-MULTIPLE-001-HEM-HGB"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/PrestacionHemogramaEjemplo"
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
      "code" : "718-7",
      "display" : "Hemoglobina: Sangre : Punto temporal: Concentración de masa: Cuantitativo:"
    }],
    "text" : "Hemoglobina"
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
    "value" : 13.2,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  },
  "specimen" : {
    "reference" : "Specimen/EspecimenEjemplo"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 12,
      "unit" : "g/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "g/dL"
    },
    "high" : {
      "value" : 15.5,
      "unit" : "g/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "g/dL"
    },
    "text" : "Rango de referencia adulta (mujer)"
  }]
}

```
