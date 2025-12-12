# CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud**

## CapabilityStatement: CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-cliente-informe | *Version*:0.1.1-ballot | |
| Active as of 2025-03-05 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:R2BOMinsalSourceInformeCapabilityStatement |

 
CapabilityStatement para definir las caracteristicas mínimas del cliente que realiza la creación de informes de anatomía patológica y sus resultados. 

 [Raw OpenAPI-Swagger Definition file](r2bo-minsal-cliente-informe.openapi.json) | [Download](r2bo-minsal-cliente-informe.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "r2bo-minsal-cliente-informe",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-cliente-informe",
  "version" : "0.1.1-ballot",
  "name" : "R2BOMinsalSourceInformeCapabilityStatement",
  "title" : "CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud",
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
  "description" : "CapabilityStatement para definir las caracteristicas mínimas del cliente que realiza la creación de informes de anatomía patológica y sus resultados.",
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
  "imports" : [
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.Origen",
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source"
  ],
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml", "application/fhir+json", "application/fhir+xml"],
  "implementationGuide" : [
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
    "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
  ],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Este Cliente del Repositorio de Biopsia del Ministerio de Salud permite la creación de informes de anatomía patológica y sus resultados.",
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"]
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"]
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"]
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"]
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchParam" : [
            {
              "name" : "practitioner",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner",
              "type" : "reference",
              "documentation" : "El profesional que cumple el rol"
            },
            {
              "name" : "organization",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization",
              "type" : "reference",
              "documentation" : "La identidad de la organización que representa el profesional"
            }
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identificador único de la solicitud"
            }
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
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-identifier",
              "type" : "token",
              "documentation" : "Identificador único asociado a la muestra"
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "transaction",
          "documentation" : "Iteracción para enviar solicitudes de un informe de biopsia y sus resultados"
        }
      ]
    }
  ]
}

```
