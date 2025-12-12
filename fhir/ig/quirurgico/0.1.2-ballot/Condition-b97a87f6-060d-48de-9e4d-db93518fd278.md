# Ejemplo de Condition Diagnostico LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de Condition Diagnostico LE**

## Example Condition: Ejemplo de Condition Diagnostico LE

Profile: [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Hernia ventral sin obstrucción ni gangrena

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**encounter**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "b97a87f6-060d-48de-9e4d-db93518fd278",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/sid/icd-10",
        "code" : "K43.9"
      }
    ],
    "text" : "Hernia ventral sin obstrucción ni gangrena"
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "encounter" : {
    "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
  }
}

```
