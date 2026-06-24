# Informe de Anatomía Patológica de Biopsia de Mama - Repositorio de Reportes de Biopsias Oncológicas v0.2.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informe de Anatomía Patológica de Biopsia de Mama**

## Example DiagnosticReport: Informe de Anatomía Patológica de Biopsia de Mama

Profile: [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)

## Informe de Biopsia de Mama (Pathology (gross & histopath, not surgical)) 

| | |
| :--- | :--- |
| Subject | Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, )) |
| Reported | 2021-08-01 10:00:00-0400 |
| Performer | [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md) |
| Identifier | r2bo-2020-0001 |

**Report Details**

* **Code**: [Pathology report microscopic observation in Specimen](Observation-r2bo-observacion-microscopica-ex.md)
  * **Value**: Se observa tejido mamario con células epiteliales y estromales, con signos de malignidad con metastasis en ganglios linfáticos
  * **Flags**: Final
  * **When For**: 2021-06-01 12:00:00-0400
* **Code**: [Macroscopic observation [Interpretation] in Specimen Narrative](Observation-r2bo-observacion-macroscopica-ex.md)
  * **Value**: Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista
  * **Flags**: Final
  * **When For**: 2021-06-01 12:00:00-0400
* **Code**: [Pathologic TNM stage grouping](Observation-r2bo-estadificacion-tnm-ex.md)
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2021-06-01 12:00:00-0400

Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral

**Coded Conclusions:**

* Carcinoma ductal infiltrante
* Mama



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "r2bo-informe-biopsia-ex",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-referencia-composition",
    "valueReference" : {
      "reference" : "Composition/r2bo-documento-biopsia-ex"
    }
  }],
  "identifier" : [{
    "value" : "r2bo-2020-0001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "PAT",
      "display" : "Pathology (gross & histopath, not surgical)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "66110-8"
    }],
    "text" : "Informe de Biopsia de Mama"
  },
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "issued" : "2021-08-01T10:00:00-04:00",
  "performer" : [{
    "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
  }],
  "specimen" : [{
    "reference" : "Specimen/r2bo-specimen-example"
  }],
  "result" : [{
    "reference" : "Observation/r2bo-observacion-microscopica-ex"
  },
  {
    "reference" : "Observation/r2bo-observacion-macroscopica-ex"
  },
  {
    "reference" : "Observation/r2bo-estadificacion-tnm-ex"
  }],
  "conclusion" : "Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral",
  "conclusionCode" : [{
    "id" : "Morfologico",
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "82711006"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "8500/3"
    }],
    "text" : "Carcinoma ductal infiltrante"
  },
  {
    "id" : "Topografico",
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76752008"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C50.9"
    }],
    "text" : "Mama"
  }]
}

```
