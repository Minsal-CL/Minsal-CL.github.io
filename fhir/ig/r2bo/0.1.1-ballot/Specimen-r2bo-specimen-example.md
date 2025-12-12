# Muestra de Mama - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muestra de Mama**

## Example Specimen: Muestra de Mama

Profile: [Perfil de Muestra](StructureDefinition-r2bo-muestra-biopsia.md)

**identifier**: 110101101

**status**: Available

**type**: Tissue

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**receivedTime**: 2021-06-01 00:00:00+0000

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-ProfesionalHospital.md) | 2021-06-01 10:00:00+0000 | Biopsy of breast | Breast |

**note**: 

> 

Resección completa de tejido mamario, posible carcinoma




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "r2bo-specimen-example",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
    ]
  },
  "identifier" : [
    {
      "value" : "110101101"
    }
  ],
  "status" : "available",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
        "code" : "TISS",
        "display" : "Tissue"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "receivedTime" : "2021-06-01T00:00:00Z",
  "collection" : {
    "collector" : {
      "reference" : "PractitionerRole/ProfesionalHospital"
    },
    "collectedDateTime" : "2021-06-01T10:00:00Z",
    "method" : {
      "extension" : [
        {
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "8889005"
              }
            ]
          }
        }
      ],
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "122548005"
        }
      ]
    },
    "bodySite" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "7771000"
              }
            ]
          }
        }
      ],
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "76752008"
        }
      ]
    }
  },
  "note" : [
    {
      "text" : "Resección completa de tejido mamario, posible carcinoma"
    }
  ]
}

```
