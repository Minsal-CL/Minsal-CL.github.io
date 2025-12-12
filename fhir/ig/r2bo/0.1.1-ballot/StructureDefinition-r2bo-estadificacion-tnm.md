# Perfil de Grupo Estadificación TNM - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Grupo Estadificación TNM**

## Resource Profile: Perfil de Grupo Estadificación TNM ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:EstadificacionTNM |

 
Perfil grupo de estadificación TNM 

**Usages:**

* Use this Profile: [Perfil de Bundle del Documento](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle para Generar Informe](StructureDefinition-r2bo-bundle-generar-informe.md)
* Refer to this Profile: [Perfil del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md) and [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)
* Examples for this Profile: [Observation/r2bo-estadificacion-tnm-ex](Observation-r2bo-estadificacion-tnm-ex.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-estadificacion-tnm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-estadificacion-tnm.csv), [Excel](StructureDefinition-r2bo-estadificacion-tnm.xlsx), [Schematron](StructureDefinition-r2bo-estadificacion-tnm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-estadificacion-tnm",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm",
  "version" : "0.1.1-ballot",
  "name" : "EstadificacionTNM",
  "title" : "Perfil de Grupo Estadificación TNM",
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
  "description" : "Perfil grupo de estadificación TNM",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "399588009"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-staging-type-vs"
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-stage-group-vs"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-staging-method-vs"
        }
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "description" : "Diferenciación en los hasMember",
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.hasMember:CategoriaT",
        "path" : "Observation.hasMember",
        "sliceName" : "CategoriaT",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-tumor-primario"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:CategoriaN",
        "path" : "Observation.hasMember",
        "sliceName" : "CategoriaN",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-nodo-regional"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:CategoriaM",
        "path" : "Observation.hasMember",
        "sliceName" : "CategoriaM",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-metastasis-distante"
            ]
          }
        ]
      }
    ]
  }
}

```
