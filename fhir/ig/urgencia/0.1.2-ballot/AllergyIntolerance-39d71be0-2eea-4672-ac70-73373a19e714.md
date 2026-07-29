# Alergia o Intolerancia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alergia o Intolerancia**

## Example AllergyIntolerance: Alergia o Intolerancia

Profile: [Alergias e Intolerancia](StructureDefinition-AlergiaIntolerancia.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**code**: Alergia a la amoxicilina

**patient**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "39d71be0-2eea-4672-ac70-73373a19e714",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AlergiaIntolerancia"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed"
      }
    ]
  },
  "type" : "allergy",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "372687004"
      }
    ],
    "text" : "Alergia a la amoxicilina"
  },
  "patient" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "encounter" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  }
}

```
