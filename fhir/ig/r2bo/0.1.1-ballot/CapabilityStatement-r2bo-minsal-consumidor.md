# CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud**

## CapabilityStatement: CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-consumidor | *Version*:0.1.1-ballot | |
| Active as of 2025-03-05 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:R2BOMinsalConsumidorCapabilityStatement |

 
CapabilityStatement para definir las caracteristicas mínimas del para ver las interacciones posibles para buscar informes de anatomía patológica y sus resultados. 

 [Raw OpenAPI-Swagger Definition file](r2bo-minsal-consumidor.openapi.json) | [Download](r2bo-minsal-consumidor.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "r2bo-minsal-consumidor",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement/r2bo-minsal-consumidor",
  "version" : "0.1.1-ballot",
  "name" : "R2BOMinsalConsumidorCapabilityStatement",
  "title" : "CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud",
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
  "description" : "CapabilityStatement para definir las caracteristicas mínimas del  para ver las interacciones posibles para buscar informes de anatomía patológica y sus resultados.",
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
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Consumer",
    "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente"
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
      "documentation" : "Este Cliente del Repositorio de Biopsia del Ministerio de Salud permite la busqueda de informes de anatomía patológica y sus resultados.",
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
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : ["*", "BodyStructure:patient"],
          "searchRevInclude" : ["Composition:entry", "Observation:focus"],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/BodyStructure-identifier",
              "type" : "token",
              "documentation" : "Identificador de la Estructura Corporal"
            },
            {
              "name" : "morphology",
              "definition" : "http://hl7.org/fhir/SearchParameter/BodyStructure-morphology",
              "type" : "token",
              "documentation" : "Tipo de estructura"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/BodyStructure-patient",
              "type" : "reference",
              "documentation" : "Individuo al que se refiere"
            },
            {
              "name" : "location",
              "definition" : "http://hl7.org/fhir/SearchParameter/BodyStructure-location",
              "type" : "token",
              "documentation" : "Sitio del cuerpo"
            },
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico dentro del servidor de la estructura corporal"
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
          "type" : "Composition",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/DocumentoCl",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "Composition:attester",
            "Composition:author",
            "Composition:entry",
            "Composition:patient",
            "Composition:subject"
          ],
          "searchParam" : [
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "Fecha de la creación del documento"
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-subject",
              "type" : "reference",
              "documentation" : "Sobre quién o qué es el documento"
            },
            {
              "name" : "section",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-section",
              "type" : "token",
              "documentation" : "Clasificación de la sección (recomendado)"
            },
            {
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-title",
              "type" : "string",
              "documentation" : "titulo legible para humanos"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Paciente asociado al documento"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identificador del documento"
            },
            {
              "name" : "period",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-period",
              "type" : "date",
              "documentation" : "El periodo de tiempo que el documento cubre (recomendado)"
            },
            {
              "name" : "author",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-author",
              "type" : "reference",
              "documentation" : "Quien o que creo el documento"
            },
            {
              "name" : "entry",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-entry",
              "type" : "reference",
              "documentation" : "Referencia aresursos incluidos en el documento"
            },
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico dentro del servidor del documento"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-category",
              "type" : "token",
              "documentation" : "Categoría del documento"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Composition-status",
              "type" : "token",
              "documentation" : "preliminary | final | amended | entered-in-error"
            }
          ],
          "operation" : [
            {
              "name" : "document",
              "definition" : "http://hl7.org/fhir/OperationDefinition/Composition-document"
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
          "type" : "DiagnosticReport",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "DiagnosticReport:based-on",
            "DiagnosticReport:patient",
            "DiagnosticReport:performer",
            "DiagnosticReport:result",
            "DiagnosticReport:specimen",
            "DiagnosticReport:subject"
          ],
          "searchRevInclude" : ["Observation:focus"],
          "searchParam" : [
            {
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "Código de identificación del informe"
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-subject",
              "type" : "reference",
              "documentation" : "El sujeto del informe"
            },
            {
              "name" : "conclusion",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion",
              "type" : "token",
              "documentation" : "Código de conclusión (interpretación/impresión) del informe"
            },
            {
              "name" : "result",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-result",
              "type" : "reference",
              "documentation" : "Enlace de la observaciones de los resultados"
            },
            {
              "name" : "based-on",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on",
              "type" : "reference",
              "documentation" : "Solicitud del Informe de Anatomia Patológica"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Paciente asociado al informe"
            },
            {
              "name" : "specimen",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen",
              "type" : "reference",
              "documentation" : "Detalles del Especimen"
            },
            {
              "name" : "issued",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued",
              "type" : "date",
              "documentation" : "Cuando fue creado el informe"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identificador del informe"
            },
            {
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-performer",
              "type" : "reference",
              "documentation" : "Quien es el responsable del informe"
            },
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico dentro del servidor del informe"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-category",
              "type" : "token",
              "documentation" : "Cual es la categoria del informe, por defecto es PAT"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-status",
              "type" : "token",
              "documentation" : "El estado del Reporte"
            }
          ],
          "operation" : [
            {
              "name" : "graphql",
              "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-graphql",
              "documentation" : "Operación para extraer los datos del repositorio de biopsia en formato GraphQL"
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
          "type" : "Observation",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm",
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-categoria-tnm",
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "Observation:based-on",
            "Observation:derived-from",
            "Observation:device",
            "Observation:encounter",
            "Observation:focus",
            "Observation:has-member",
            "Observation:part-of",
            "Observation:patient",
            "Observation:performer",
            "Observation:specimen",
            "Observation:subject"
          ],
          "searchRevInclude" : [
            "DiagnosticReport:result",
            "Observation:derived-from",
            "Observation:focus",
            "Observation:has-member"
          ],
          "searchParam" : [
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "Fecha de la observación"
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-subject",
              "type" : "reference",
              "documentation" : "El sujeto de la observación"
            },
            {
              "name" : "value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-concept",
              "type" : "token",
              "documentation" : "El valor de la observación, si el valor es un concepto codificado"
            },
            {
              "name" : "focus",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-focus",
              "type" : "reference",
              "documentation" : "El objeto de la observación"
            },
            {
              "name" : "has-member",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-has-member",
              "type" : "reference",
              "documentation" : "Recursos relacionados son miembros de la observación"
            },
            {
              "name" : "component-code-value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity",
              "type" : "composite",
              "documentation" : "Par entre el código del componente y el valor de la cantidad del componente"
            },
            {
              "name" : "code-value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity",
              "type" : "composite",
              "documentation" : "Par entre el código y el valor de la cantidad"
            },
            {
              "name" : "combo-code-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-concept",
              "type" : "composite",
              "documentation" : "Par en el parametro de código y valor codificado, incluyendo en componentes"
            },
            {
              "name" : "value-string",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-string",
              "type" : "string",
              "documentation" : "El valor de la observación, si el valor es un string, y también busca en CodeableConcept.text"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identificador único de la observación"
            },
            {
              "name" : "method",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-method",
              "type" : "token",
              "documentation" : "El método usado para la observación"
            },
            {
              "name" : "value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-quantity",
              "type" : "quantity",
              "documentation" : "El valor de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
            },
            {
              "name" : "combo-value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity",
              "type" : "quantity",
              "documentation" : "El valor o el valor del componente de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
            },
            {
              "name" : "code-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept",
              "type" : "composite",
              "documentation" : "Par en el parametro de código y valor codificado"
            },
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id lógico del recurso"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-status",
              "type" : "token",
              "documentation" : "El estado de la observación"
            },
            {
              "name" : "combo-data-absent-reason",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-data-absent-reason",
              "type" : "token",
              "documentation" : "La razón por la que el valor esperado en el elemento Observation.component.value[x] está ausente"
            },
            {
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "El código de identificación de la observación"
            },
            {
              "name" : "component-data-absent-reason",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-data-absent-reason",
              "type" : "token",
              "documentation" : "La razón por la que el valor esperado en el elemento Observation.component.value[x] está ausente"
            },
            {
              "name" : "combo-code-value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity",
              "type" : "composite",
              "documentation" : "Par en el parametro de código y valor codificado, incluyendo en componentes"
            },
            {
              "name" : "code-value-string",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-string",
              "type" : "composite",
              "documentation" : "Par en el parametro de código y valor codificado, incluyendo en componentes"
            },
            {
              "name" : "based-on",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-based-on",
              "type" : "reference",
              "documentation" : "Recurso que origina la observación"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "El paciente asociado a la observación"
            },
            {
              "name" : "specimen",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-specimen",
              "type" : "reference",
              "documentation" : "El especimen asociado a la observación"
            },
            {
              "name" : "component-code",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code",
              "type" : "token",
              "documentation" : "El código del componente de la observación"
            },
            {
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-performer",
              "type" : "reference",
              "documentation" : "El individuo u organización que realizó la observación"
            },
            {
              "name" : "combo-code",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code",
              "type" : "token",
              "documentation" : "El código de la observación, incluyendo en componentes"
            },
            {
              "name" : "component-value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity",
              "type" : "quantity",
              "documentation" : "El valor del componente de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
            },
            {
              "name" : "data-absent-reason",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason",
              "type" : "token",
              "documentation" : "La razón de por qué el valor esperado en el elemento Observation.value[x] está ausente"
            },
            {
              "name" : "component-code-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept",
              "type" : "composite",
              "documentation" : "Par en el parametro de código y valor codificado de los componentes"
            },
            {
              "name" : "component-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept",
              "type" : "token",
              "documentation" : "El valor del componente de la observación, si el valor es un concepto codificado"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-category",
              "type" : "token",
              "documentation" : "La clasificación del tipo de observación"
            },
            {
              "name" : "combo-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept",
              "type" : "token",
              "documentation" : "El valor de la observación, si el valor es un concepto codificado, incluyendo en componentes"
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
          "type" : "PractitionerRole",
          "profile" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "PractitionerRole:endpoint",
            "PractitionerRole:location",
            "PractitionerRole:organization",
            "PractitionerRole:practitioner",
            "PractitionerRole:service"
          ],
          "searchRevInclude" : [
            "DiagnosticReport:performer",
            "DiagnosticReport:results-interpreter",
            "Observation:focus",
            "Observation:performer",
            "Patient:general-practitioner",
            "ServiceRequest:performer",
            "ServiceRequest:requester",
            "Specimen:collector"
          ],
          "searchParam" : [
            {
              "name" : "role",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role",
              "type" : "token",
              "documentation" : "El rol que cumple el profesional en el establecimiento de salud"
            },
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
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "ServiceRequest:based-on",
            "ServiceRequest:patient",
            "ServiceRequest:performer",
            "ServiceRequest:requester",
            "ServiceRequest:specimen",
            "ServiceRequest:subject"
          ],
          "searchRevInclude" : [
            "DiagnosticReport:based-on",
            "Observation:based-on",
            "Observation:focus",
            "ServiceRequest:based-on",
            "ServiceRequest:replaces"
          ],
          "searchParam" : [
            {
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "Código de solicitud"
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject",
              "type" : "reference",
              "documentation" : "Búsqueda por sujeto"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Paciente asociado a la solicitud"
            },
            {
              "name" : "specimen",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-specimen",
              "type" : "reference",
              "documentation" : "Muestra que sera analizada"
            },
            {
              "name" : "requester",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-requester",
              "type" : "reference",
              "documentation" : "Quien solicita el servicio"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identificador único de la solicitud"
            },
            {
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer",
              "type" : "reference",
              "documentation" : "Responsable de realizar el servicio"
            },
            {
              "name" : "intent",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-intent",
              "type" : "token",
              "documentation" : "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
            },
            {
              "name" : "performer-type",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer-type",
              "type" : "token",
              "documentation" : "Performer role"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-category",
              "type" : "token",
              "documentation" : "Clasificación del servicio"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-status",
              "type" : "token",
              "documentation" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
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
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            }
          ],
          "referencePolicy" : ["literal", "logical"],
          "searchInclude" : [
            "*",
            "Specimen:collector",
            "Specimen:parent",
            "Specimen:patient",
            "Specimen:subject"
          ],
          "searchRevInclude" : [
            "DiagnosticReport:specimen",
            "Observation:focus",
            "Observation:specimen",
            "ServiceRequest:specimen",
            "Specimen:parent"
          ],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-identifier",
              "type" : "token",
              "documentation" : "Identificador único asociado a la muestra"
            },
            {
              "name" : "bodysite",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-bodysite",
              "type" : "token",
              "documentation" : "EL código de la ubicación anatómica de la muestra"
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-subject",
              "type" : "reference",
              "documentation" : "El sujeto de la muestra"
            },
            {
              "name" : "collected",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-collected",
              "type" : "date",
              "documentation" : "La fecha de cuando fue recolectada la muestra"
            },
            {
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-type",
              "type" : "token",
              "documentation" : "Tipo de muestra"
            },
            {
              "name" : "collector",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-collector",
              "type" : "reference",
              "documentation" : "Quien Recolecto la muestra"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-patient",
              "type" : "reference",
              "documentation" : "EL paciente asociado a la muestra"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-status",
              "type" : "token",
              "documentation" : "available | unavailable | unsatisfactory | entered-in-error"
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "search-system",
          "documentation" : "Iteracción para realizar busquedas de un informe de biopsia y sus resultados"
        }
      ],
      "operation" : [
        {
          "name" : "graphql",
          "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-graphql",
          "documentation" : "Operación para extraer los datos del repositorio de biopsia en formato GraphQL"
        }
      ]
    }
  ]
}

```
