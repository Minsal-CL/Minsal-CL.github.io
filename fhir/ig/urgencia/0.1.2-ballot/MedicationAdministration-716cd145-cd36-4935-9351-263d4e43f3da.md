# Medicación Administrada en Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medicación Administrada en Urgencia**

## Example MedicationAdministration: Medicación Administrada en Urgencia

Profile: [MedicationAdministration Urgencia](StructureDefinition-MedicationAdministrationUrg.md)

**status**: Completed

**medication**: Paracetamol 500mg tablet

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**context**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Juan Carlos Perez Gonzalez(official)](Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.md) |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "716cd145-cd36-4935-9351-263d4e43f3da",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedicationAdministrationUrg"
    ]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387517004"
      }
    ],
    "text" : "Paracetamol 500mg tablet"
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "context" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  },
  "effectiveDateTime" : "2024-10-25T14:18:00-04:00",
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/d04739d3-ba47-4f0f-920f-bcd66b474963"
      }
    }
  ]
}

```
