# Perfil de Observacion Tejido No Tumoral Adyacente - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Observacion Tejido No Tumoral Adyacente**

## Resource Profile: Perfil de Observacion Tejido No Tumoral Adyacente ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-tejido-no-tumor-adyacente | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:ObservacionTejidoNoTumoralAdyacente |

 
Registro de la presencia de tejido tumoral en tejido adyacente en un reporte de biopsia 

**Usages:**

* Use this Profile: [Perfil de Bundle del Documento](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle para Generar Informe](StructureDefinition-r2bo-bundle-generar-informe.md)
* Refer to this Profile: [Perfil del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md) and [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)
* Examples for this Profile: [Observation/r2bo-observacion-tejido-tumor-adjacente-ex](Observation-r2bo-observacion-tejido-tumor-adjacente-ex.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-observacion-tejido-no-tumor-adyacente)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-observacion-tejido-no-tumor-adyacente.csv), [Excel](StructureDefinition-r2bo-observacion-tejido-no-tumor-adyacente.xlsx), [Schematron](StructureDefinition-r2bo-observacion-tejido-no-tumor-adyacente.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-observacion-tejido-no-tumor-adyacente",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-tejido-no-tumor-adyacente",
  "version" : "0.1.1-ballot",
  "name" : "ObservacionTejidoNoTumoralAdyacente",
  "title" : "Perfil de Observacion Tejido No Tumoral Adyacente",
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
  "description" : "Registro de la presencia de tejido tumoral en tejido adyacente en un reporte de biopsia",
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
              "system" : "http://loinc.org",
              "code" : "81168-7"
            }
          ]
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
