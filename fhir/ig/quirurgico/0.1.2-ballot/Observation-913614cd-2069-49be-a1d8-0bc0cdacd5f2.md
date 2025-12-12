# Observation Notas Clinicas - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation Notas Clinicas**

## Example Observation: Observation Notas Clinicas

Profile: [Observation Notas Clinicas LE](StructureDefinition-ObservationNotasClinicasLE.md)

**status**: Registered

**code**: Notas Clinicas

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**encounter**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)

**effective**: 2024-11-30 10:00:00-0400

**performer**: [Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

**value**: El paciente presenta dolor abdominal leve en la región epigástrica. Hernia ventral diagnosticada previamente. Se recomienda cirugía electiva con malla. Se descartan signos de obstrucción intestinal.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "913614cd-2069-49be-a1d8-0bc0cdacd5f2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ObservationNotasClinicasLE"
    ]
  },
  "status" : "registered",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "371524004"
      }
    ],
    "text" : "Notas Clinicas"
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "encounter" : {
    "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
  },
  "effectiveDateTime" : "2024-11-30T10:00:00-04:00",
  "performer" : [
    {
      "reference" : "Practitioner/fbb0e12c-95ec-43f7-bff1-73009b307cb5"
    }
  ],
  "valueString" : "El paciente presenta dolor abdominal leve en la región epigástrica. Hernia ventral diagnosticada previamente. Se recomienda cirugía electiva con malla. Se descartan signos de obstrucción intestinal."
}

```
