# Perfil de Solicitud de Informe de Anatomía Patológica - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Solicitud de Informe de Anatomía Patológica**

## Resource Profile: Perfil de Solicitud de Informe de Anatomía Patológica ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:SolicitudInformeAPA |

 
Solicitud generada por el médico para la realización de un informe de anatomía patológica 

**Usages:**

* Use this Profile: [Perfil de Bundle: Documento de Anatomía Patológica](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle: Generar Notificación Obligatoria](StructureDefinition-r2bo-bundle-generar-notificacion.md)
* Refer to this Profile: [Perfil de Origen para las Categorías T, N, M (Abstracto)](StructureDefinition-r2bo-categoria-tnm.md), [Perfil de la Cabecera del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md), [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md) and [Perfil de Origen de Todos Los Resultados](StructureDefinition-r2bo-resultados-reporte-biopsia.md)
* Examples for this Profile: [ServiceRequest/r2bo-solicitud-informe-apa-ej](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-solicitud-informe-apa)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-solicitud-informe-apa.csv), [Excel](StructureDefinition-r2bo-solicitud-informe-apa.xlsx), [Schematron](StructureDefinition-r2bo-solicitud-informe-apa.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-solicitud-informe-apa",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa",
  "version" : "0.1.1-ballot",
  "name" : "SolicitudInformeAPA",
  "title" : "Perfil de Solicitud de Informe de Anatomía Patológica",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-23T17:10:55-03:00",
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
  "description" : "Solicitud generada por el médico para la realización de un informe de anatomía patológica",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "definition" : "Estado de la Solicitud",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "definition" : "Propósito de la Solicitud",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "Código de la Solicitud",
        "definition" : "Código que define el tipo de solicitud",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "116784002"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "ServiceRequestCode"
            }
          ],
          "strength" : "example",
          "description" : "Código de Solicitud de Informe de Anatomía Patológica",
          "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
        }
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "Paciente que requiere un informe de anatomía patológica",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "Profesional que solicita el informe de anatomía patológica",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.performer",
        "path" : "ServiceRequest.performer",
        "short" : "Laboratorio o Anatomopatólogo que realizara el informe",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional",
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.locationCode",
        "path" : "ServiceRequest.locationCode",
        "short" : "Locación de a la cual está dirigida la solicitud",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "short" : "Sospecha Diagnóstica",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-snomed-hallazgos-clinicos-cie10-VS"
        }
      },
      {
        "id" : "ServiceRequest.specimen",
        "path" : "ServiceRequest.specimen",
        "short" : "Muestra de Biopsia",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
