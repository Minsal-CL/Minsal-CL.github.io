# Observación Medico Legal Examen Toxicológico - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Medico Legal Examen Toxicológico**

## Example Observation: Observación Medico Legal Examen Toxicológico

Profile: [Observación Medico Legal Examen Toxicológico](StructureDefinition-ObservacionMedLegalExamenToxico.md)

**status**: Registered

**code**: Médico Legal Exámen Toxicológico

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

**performer**: [Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

**value**: 2024-10-25 14:14:00-0400



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "535e0438-315b-4291-b5cc-4469cef1ffb6",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalExamenToxico"
    ]
  },
  "status" : "registered",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "29587-3"
      }
    ],
    "text" : "Médico Legal Exámen Toxicológico"
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
      "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
    }
  ],
  "valueDateTime" : "2024-10-25T14:14:00-04:00"
}

```
