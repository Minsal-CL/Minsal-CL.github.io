# Ejemplo de Alergia - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de Alergia**

## Example AllergyIntolerance: Ejemplo de Alergia

Profile: [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Alergia a la amoxicilina

**patient**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "8f627a17-27f4-4519-9ff7-4f1da6f0eef2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/AllergyIntoleranceIniciarLE"
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
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  }
}

```
