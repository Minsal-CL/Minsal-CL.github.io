# Observacion de Ejemplo: Tamaño del Tumor - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observacion de Ejemplo: Tamaño del Tumor**

## Example Observation: Observacion de Ejemplo: Tamaño del Tumor

Profile: [Perfil de Tamaño del Tumor](StructureDefinition-r2bo-tamano-tumor.md)

**basedOn**: [ServiceRequest Pathologist report](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)

**status**: Final

**category**: Laboratory

**code**: Size Tumor

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**effective**: 2021-06-01 12:00:00-0400

**performer**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)

> **component****code**:Size.maximum dimension in Tumor**value**: 1.5 cm(Details: UCUM codecm = 'cm')

> **component****code**:Size additional dimension in Tumor**value**: 1.2 cm(Details: UCUM codecm = 'cm')

> **component****code**:Size additional dimension in Tumor**value**: 0.7 cm(Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "r2bo-tamano-tumor-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tamano-tumor"
    ]
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
    }
  ],
  "status" : "final",
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
        "code" : "21889-1"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
  "performer" : [
    {
      "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
    }
  ],
  "specimen" : {
    "reference" : "Specimen/r2bo-specimen-example"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33728-7"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.5,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33729-5"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.2,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33729-5"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.7,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      }
    }
  ]
}

```
