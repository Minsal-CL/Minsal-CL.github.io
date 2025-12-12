# Observación Resultado Examen - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Resultado Examen**

## Example Observation: Observación Resultado Examen

Profile: [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md)

**status**: Registered

**category**: Laboratory

**code**: Glucosa en sangre

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

**performer**: [Practitioner Juan Carlos Perez Gonzalez(official)](Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.md)

**value**: 120 mg/dL(Details: UCUM codemg/dL = 'mg/dL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "aeb13c46-8eb3-4b8f-9bc2-e3d57024cb86",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationResultadoExamen"
    ]
  },
  "status" : "registered",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2339-0"
      }
    ],
    "text" : "Glucosa en sangre"
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "encounter" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  },
  "effectiveDateTime" : "2024-10-25T14:18:00-04:00",
  "performer" : [
    {
      "reference" : "Practitioner/d04739d3-ba47-4f0f-920f-bcd66b474963"
    }
  ],
  "valueQuantity" : {
    "value" : 120,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  }
}

```
