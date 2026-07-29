# Extension Resultado Evaluación Pre-Qx - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension Resultado Evaluación Pre-Qx**

## Extension: Extension Resultado Evaluación Pre-Qx 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionResultadoEvaluacionPreQx | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:ExtensionResultadoEvaluacionPreQx |

Extensión para representar el resultado de la evaluación pre-quirúrgica.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md)
* Examples for this Extension: [Bundle/EjBundleEntrevista](Bundle-EjBundleEntrevista.md) and [Encounter/6c7dae68-552d-44cb-b414-e5024ae8e0a0](Encounter-6c7dae68-552d-44cb-b414-e5024ae8e0a0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/ExtensionResultadoEvaluacionPreQx)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionResultadoEvaluacionPreQx.csv), [Excel](StructureDefinition-ExtensionResultadoEvaluacionPreQx.xlsx), [Schematron](StructureDefinition-ExtensionResultadoEvaluacionPreQx.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionResultadoEvaluacionPreQx",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionResultadoEvaluacionPreQx",
  "version" : "0.1.2-ballot",
  "name" : "ExtensionResultadoEvaluacionPreQx",
  "title" : "Extension Resultado Evaluación Pre-Qx",
  "status" : "draft",
  "date" : "2025-12-10T09:54:02-03:00",
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
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Extensión para representar el resultado de la evaluación pre-quirúrgica.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Encounter"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Extension Resultado Evaluación Pre-Qx",
        "definition" : "Extensión para representar el resultado de la evaluación pre-quirúrgica."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionResultadoEvaluacionPreQx",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Resultado de la evaluación pre-quirúrgica",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSResultadoEvaluacionPreQuirurgica"
        }
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.display",
        "path" : "Extension.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].text",
        "path" : "Extension.value[x].text",
        "mustSupport" : true
      }
    ]
  }
}

```
