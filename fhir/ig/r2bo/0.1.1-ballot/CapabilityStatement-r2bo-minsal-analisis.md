# CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud**

## CapabilityStatement: CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-analisis | *Version*:0.1.1-ballot | |
| Active as of 2025-03-05 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:R2BOMinsalAnalistaCapabilityStatement |

 
CapabilityStatement para definir las caracteristicas mínimas del "Cliente Analista" que realiza analisis secundario de informes de anatomía patológica y sus resultados, para tomar decisiones de salud pública. 

 [Raw OpenAPI-Swagger Definition file](r2bo-minsal-analisis.openapi.json) | [Download](r2bo-minsal-analisis.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "r2bo-minsal-analisis",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-analisis",
  "version" : "0.1.1-ballot",
  "name" : "R2BOMinsalAnalistaCapabilityStatement",
  "title" : "CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-03-05T15:30:00-03:00",
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
  "description" : "CapabilityStatement para definir las caracteristicas mínimas del \"Cliente Analista\" que realiza analisis secundario de informes de anatomía patológica y sus resultados, para tomar decisiones de salud pública.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml", "application/fhir+json", "application/fhir+xml"],
  "implementationGuide" : [
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore|1.9.4",
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
    "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
  ],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "El Cliente Analiste del Repositorio de Biopsia del Ministerio de Salud permite extraer los datos de los informes de anatomía patológica y sus resultados para realizar análisis secundario y tomar decisiones de salud pública.",
      "security" : {
        "service" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
                "code" : "OAuth"
              }
            ]
          }
        ],
        "description" : "OAuth2 usando el APIG del Ministerio de Salud para generar Tokens para enviar y acceder al respositorio"
      },
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "BodyStructure",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Composition",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/DocumentoCl",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "DiagnosticReport",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Observation",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm",
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-categoria-tnm",
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "PractitionerRole",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "ServiceRequest",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Specimen",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
          ]
        }
      ],
      "operation" : [
        {
          "name" : "export",
          "definition" : "http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export",
          "documentation" : "Operación para exportar los datos del repositorio de informes de anatomia en formato FHIR Bulk Data, para analisis secundario"
        }
      ]
    }
  ]
}

```
