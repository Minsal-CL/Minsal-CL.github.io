# Observación Signos Vitales - Pulso - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Signos Vitales - Pulso**

## Example Observation: Observación Signos Vitales - Pulso

Profile: [Observación Signos Vitales](StructureDefinition-ObservationSignosVitales.md)

**status**: Registered

**category**: Vital Signs

**code**: Pulso

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

**performer**: [Practitioner Juan Carlos Perez Gonzalez(official)](Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.md)

**value**: 80 /min(Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "d01f4e15-7f0a-49cf-b5a7-e7dd717526d2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationSignosVitales"
    ]
  },
  "status" : "registered",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "8867-4"
      }
    ],
    "text" : "Pulso"
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
    "value" : 80,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
