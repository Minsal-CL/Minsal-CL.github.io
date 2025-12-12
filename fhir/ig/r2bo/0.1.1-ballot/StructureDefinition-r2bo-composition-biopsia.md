# Perfil del Documento de Biopsía - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil del Documento de Biopsía**

## Resource Profile: Perfil del Documento de Biopsía ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:R2BOCompositionBiopsia |

 
Este recurso representa la cabecera del documento de un reporte de analisis de anatomía patológica 

**Usages:**

* Use this Profile: [Perfil de Bundle del Documento](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle para Generar Informe](StructureDefinition-r2bo-bundle-generar-informe.md)
* Refer to this Profile: [Extensión De Referencia al Composition](StructureDefinition-r2bo-extension-referencia-composition.md)
* Examples for this Profile: [Composition/r2bo-documento-biopsia-ex](Composition-r2bo-documento-biopsia-ex.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-composition-biopsia)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-composition-biopsia.csv), [Excel](StructureDefinition-r2bo-composition-biopsia.xlsx), [Schematron](StructureDefinition-r2bo-composition-biopsia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-composition-biopsia",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia",
  "version" : "0.1.1-ballot",
  "name" : "R2BOCompositionBiopsia",
  "title" : "Perfil del Documento de Biopsía",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-12T16:54:01-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Este recurso representa la cabecera del documento de un reporte de analisis de anatomía patológica",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/DocumentoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "constraint" : [
          {
            "key" : "r2bo-comp-1",
            "severity" : "error",
            "human" : "Si el reporte es de categoría patológico la sección macroscópica debe existir",
            "expression" : "(category.coding.where(code = 'PAT').exists()) implies (section.code.coding.where(code = '22634-0').exists())",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"
          }
        ]
      },
      {
        "id" : "Composition.extension",
        "path" : "Composition.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Composition.extension:ReporteBiopsia",
        "path" : "Composition.extension",
        "sliceName" : "ReporteBiopsia",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-referencia-diagnosticReport"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.identifier",
        "path" : "Composition.identifier",
        "short" : "Identificador del reporte",
        "min" : 1
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "short" : "Tipo de documento, que representa al informe de biopsía",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-reporte-biopsia-vs"
        }
      },
      {
        "id" : "Composition.category",
        "path" : "Composition.category",
        "short" : "Categoría del Documento de Anatomía Patológica",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
              "code" : "PAT",
              "display" : "Pathology (gross & histopath, not surgical)"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-categoria-reporte-biopsia-vs"
        }
      },
      {
        "id" : "Composition.date",
        "path" : "Composition.date",
        "short" : "Fecha de creación del reporte de antomía patológica"
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Autor del documento",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
            ],
            "_targetProfile" : [
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : true
                  }
                ]
              },
              null,
              null
            ]
          }
        ]
      },
      {
        "id" : "Composition.title",
        "path" : "Composition.title",
        "short" : "Nombre/título legible para humanos"
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "description" : "Diferencias entre cada sección del documento",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 5
      },
      {
        "id" : "Composition.section:solicitud",
        "path" : "Composition.section",
        "sliceName" : "solicitud",
        "short" : "Indica la solicitud por la cual se generó el documento, con su sospecha diagnóstica",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:solicitud.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22636-5"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:solicitud.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:muestra",
        "path" : "Composition.section",
        "sliceName" : "muestra",
        "short" : "Describe la muestra por la cual se realizo el informe",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:muestra.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22633-2"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:muestra.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:macroscopia",
        "path" : "Composition.section",
        "sliceName" : "macroscopia",
        "short" : "Observaciones realizadas a la muestra a simple vista",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:macroscopia.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22634-0"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:macroscopia.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-macroscopica"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:microscopia",
        "path" : "Composition.section",
        "sliceName" : "microscopia",
        "short" : "Observaciones realizadas a traves de un microscopio",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:microscopia.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22635-7"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:microscopia.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-microscopica"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:hallazgos",
        "path" : "Composition.section",
        "sliceName" : "hallazgos",
        "short" : "Resultado de observaciones que fueron realizadas a la muestra",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:hallazgos.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "33746-9"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:hallazgos.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-infiltracion-perineural",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-ganglios-linfaticos",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-infiltracion-peritumoral",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-invasion-linfatica",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-invasion-vascular",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-margen-quirurgico",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-multicentricidad",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-focalidad",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-post-tratamiento-neoadjuvancia",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-porcentaje-necrosis",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-tejido-no-tumor-adyacente",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tamano-tumor"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:conclusiones",
        "path" : "Composition.section",
        "sliceName" : "conclusiones",
        "short" : "Observaciones realizadas a traves de un microscopio",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:conclusiones.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22637-3"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:conclusiones.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "$this.resolve()"
            }
          ],
          "description" : "Diferenciación entre las conclusiones",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor",
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:conclusiones.entry:DescripcionTumor",
        "path" : "Composition.section.entry",
        "sliceName" : "DescripcionTumor",
        "short" : "Conclusión Morfológica y Topográfica del tumor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:Notas",
        "path" : "Composition.section",
        "sliceName" : "Notas",
        "short" : "Notas en texto libre",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:Notas.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "22638-1"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:Notas.text",
        "path" : "Composition.section.text",
        "short" : "Notas que se pueden dejar como texto narrativo",
        "min" : 1
      }
    ]
  }
}

```
