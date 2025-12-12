# Ejemplo de una Solicitud de Biopsia - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de una Solicitud de Biopsia**

## Example ServiceRequest: Ejemplo de una Solicitud de Biopsia

version: 2

Profile: [Perfil de Solicitud de Informe de Anatomía Patológica](StructureDefinition-r2bo-solicitud-informe-apa.md)

**identifier**: 111111101

**status**: Completed

**intent**: Order

**priority**: Routine

**code**: Informe de Biopsia

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**requester**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-ProfesionalHospital.md)

**performer**: [Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)](Organization-hospital-collector.md)

**locationCode**: hospital laboratory

**reasonCode**: Neoplasm of uncertain behaviour of breast

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "r2bo-solicitud-informe-apa-ej",
  "meta" : {
    "versionId" : "2",
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
    ]
  },
  "identifier" : [
    {
      "value" : "111111101"
    }
  ],
  "status" : "completed",
  "intent" : "order",
  "priority" : "routine",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "116784002"
      }
    ],
    "text" : "Informe de Biopsia"
  },
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "requester" : {
    "reference" : "PractitionerRole/ProfesionalHospital"
  },
  "performer" : [
    {
      "reference" : "Organization/hospital-collector"
    }
  ],
  "locationCode" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "HLAB",
          "display" : "hospital laboratory"
        }
      ]
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "269497004"
        },
        {
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "version" : "2019-covid-expanded",
          "code" : "D48.6"
        }
      ]
    }
  ],
  "specimen" : [
    {
      "reference" : "Specimen/r2bo-specimen-example"
    }
  ]
}

```
