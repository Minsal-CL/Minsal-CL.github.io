# Documento del Informe de Anatomía Patológica de Biopsia de Mama - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Documento del Informe de Anatomía Patológica de Biopsia de Mama**

## Example Composition: Documento del Informe de Anatomía Patológica de Biopsia de Mama

Profile: [Perfil de la Cabecera del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md)

**Extensión De Referencia al Reporte**: [Diagnostic Report for 'Breast Pathology biopsy report' for '->Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))'](DiagnosticReport-r2bo-informe-biopsia-ex.md)

**identifier**: r2bo-2020-0001

**status**: Final

**type**: Informe de Biopsia de Mama

**category**: Pathology (gross & histopath, not surgical)

**date**: 2021-08-01 10:00:00-0400

**author**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**title**: Informe de Biopsia de Mama



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "r2bo-documento-biopsia-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-referencia-diagnosticReport",
      "valueReference" : {
        "reference" : "DiagnosticReport/r2bo-informe-biopsia-ex"
      }
    }
  ],
  "identifier" : {
    "value" : "r2bo-2020-0001"
  },
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "66110-8"
      }
    ],
    "text" : "Informe de Biopsia de Mama"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "PAT",
          "display" : "Pathology (gross & histopath, not surgical)"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "date" : "2021-08-01T10:00:00-04:00",
  "author" : [
    {
      "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
    }
  ],
  "title" : "Informe de Biopsia de Mama",
  "section" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22636-5"
          }
        ],
        "text" : "Solicitud de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Solicitud de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22633-2"
          }
        ],
        "text" : "Muestra de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Muestra de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "Specimen/r2bo-specimen-example"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22634-0"
          }
        ],
        "text" : "Macroscopia de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Macroscopia de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "Observation/r2bo-observacion-macroscopica-ex"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22635-7"
          }
        ],
        "text" : "Microscopia de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Microscopia de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "Observation/r2bo-observacion-microscopica-ex"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33746-9"
          }
        ],
        "text" : "Hallazgos de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hallazgos de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "Observation/r2bo-observacion-ganglios-linfaticos-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-infiltracion-perineural-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-infiltracion-peritumoral-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-invasion-linfatica-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-invasion-vascular-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-margen-quirurgico-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-centricidad-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-multifocalidad-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-porcentaje-necrosis-ex"
        },
        {
          "reference" : "Observation/r2bo-observacion-post-tratamiento-neoadjuvancia-ex"
        },
        {
          "reference" : "Observation/r2bo-tamano-tumor-ex"
        },
        {
          "reference" : "Observation/r2bo-estadificacion-tnm-ex"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22637-3"
          }
        ],
        "text" : "Conclusiones de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Conclusiones de Biopsia</div>"
      },
      "entry" : [
        {
          "reference" : "BodyStructure/r2bo-tumor-ex"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "22638-1"
          }
        ],
        "text" : "Notas del Informe de Biopsia"
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Notas del Informe de Biopsia:</p><p>Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral</p></div>"
      }
    }
  ]
}

```
