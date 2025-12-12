# Morfología y topografía del Tumor - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Morfología y topografía del Tumor**

## Example BodyStructure: Morfología y topografía del Tumor

Profile: [Perfil de la Morfología y Topología del Tumor](StructureDefinition-r2bo-tumor.md)

**morphology**: Carcinoma ductal infiltrante

**location**: Mama

**patient**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "r2bo-tumor-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"
    ]
  },
  "morphology" : {
    "id" : "Morfologico",
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "82711006"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "8500/3"
      }
    ],
    "text" : "Carcinoma ductal infiltrante"
  },
  "location" : {
    "id" : "Topografico",
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "76752008"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "C50.9"
      }
    ],
    "text" : "Mama"
  },
  "patient" : {
    "reference" : "Patient/paciente-requiere-examen"
  }
}

```
