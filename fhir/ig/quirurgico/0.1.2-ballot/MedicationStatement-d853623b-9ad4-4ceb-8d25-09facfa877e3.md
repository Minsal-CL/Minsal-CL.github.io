# MedicationStatement LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationStatement LE**

## Example MedicationStatement: MedicationStatement LE

Profile: [MedicationStatement LE](StructureDefinition-MedicationStatementLE.md)

**status**: Active

**medication**: amoxicilina (sustancia)

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**context**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "d853623b-9ad4-4ceb-8d25-09facfa877e3",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/MedicationStatementLE"
    ]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "372687004"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "context" : {
    "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
  }
}

```
