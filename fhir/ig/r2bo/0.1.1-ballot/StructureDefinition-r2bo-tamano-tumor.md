# Perfil de Tamaño del Tumor - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Tamaño del Tumor**

## Resource Profile: Perfil de Tamaño del Tumor ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tamano-tumor | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:TamanoTumorR2BO |

 
Registro de las dimensiones de un tumor 

**Usages:**

* Use this Profile: [Perfil de Bundle del Documento](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle para Generar Informe](StructureDefinition-r2bo-bundle-generar-informe.md)
* Refer to this Profile: [Perfil del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md) and [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)
* Examples for this Profile: [Observation/r2bo-tamano-tumor-ex](Observation-r2bo-tamano-tumor-ex.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-tamano-tumor)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-tamano-tumor.csv), [Excel](StructureDefinition-r2bo-tamano-tumor.xlsx), [Schematron](StructureDefinition-r2bo-tamano-tumor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-tamano-tumor",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tamano-tumor",
  "version" : "0.1.1-ballot",
  "name" : "TamanoTumorR2BO",
  "title" : "Perfil de Tamaño del Tumor",
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
  "description" : "Registro de las dimensiones de un tumor",
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
              "code" : "21889-1"
            }
          ]
        }
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "short" : "Tumor al cual se está midiendo el tamaño",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "No usado en este perfil",
        "max" : "0"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "Método para medir el tamaño del Tumor",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-metodos-medicion-VS"
        }
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "min" : 1
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "description" : "Difereciación entre los componentes",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:DimensionLargoTumor",
        "path" : "Observation.component",
        "sliceName" : "DimensionLargoTumor",
        "short" : "Largo del Tumor (cm o mm)",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DimensionLargoTumor.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "33728-7"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:DimensionLargoTumor.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-size-units-vs"
        }
      },
      {
        "id" : "Observation.component:OtrasDimensionesTumor",
        "path" : "Observation.component",
        "sliceName" : "OtrasDimensionesTumor",
        "short" : "segunda o tercera dimensión del Tumor (cm o mm)",
        "min" : 0,
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OtrasDimensionesTumor.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "33729-5"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:OtrasDimensionesTumor.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-size-units-vs"
        }
      }
    ]
  }
}

```
