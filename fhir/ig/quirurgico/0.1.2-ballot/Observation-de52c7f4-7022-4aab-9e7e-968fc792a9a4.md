# Observation Resultado Examen - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation Resultado Examen**

## Example Observation: Observation Resultado Examen

Profile: [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md)

**status**: Registered

**category**: Laboratory

**code**: Examen de glucosa en sangre

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**encounter**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)

**effective**: 2024-11-30 10:00:00-0400

**performer**: [Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

**value**: 120 mg/dL(Details: UCUM codemg/dL = 'mg/dL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "de52c7f4-7022-4aab-9e7e-968fc792a9a4",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ObservationResultadoExamen"
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
        "code" : "2345-7"
      }
    ],
    "text" : "Examen de glucosa en sangre"
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
  "valueQuantity" : {
    "value" : 120,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  }
}

```
