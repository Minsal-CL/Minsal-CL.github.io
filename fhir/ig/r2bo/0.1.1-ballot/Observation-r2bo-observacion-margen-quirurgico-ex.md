# Observacion de Ejemplo: Margen Quirúrgico - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observacion de Ejemplo: Margen Quirúrgico**

## Example Observation: Observacion de Ejemplo: Margen Quirúrgico

Profile: [Perfil de Observación Margen Quirúrgico](StructureDefinition-r2bo-observacion-margen-quirurgico.md)

**basedOn**: [ServiceRequest Pathologist report](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)

**status**: Final

**category**: Laboratory

**code**: Surgical margin observable (observable entity)

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**effective**: 2021-06-01 12:00:00-0400

**performer**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)

> **component****code**:Surgical margin site involved by tumour**value**:Positive

> **component****code**:Distance of tumor from closest margin**value**: 1.5 Millimeter(Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "r2bo-observacion-margen-quirurgico-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-margen-quirurgico"
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
        "system" : "http://snomed.info/sct",
        "code" : "396631001"
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
            "system" : "http://snomed.info/sct",
            "code" : "396324006"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "10828004"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33737-8"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.5,
        "unit" : "Millimeter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      }
    }
  ]
}

```
