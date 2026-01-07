# Extensión del Grado de Diferenciación - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extensión del Grado de Diferenciación**

## Extension: Extensión del Grado de Diferenciación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-grado-diferenciacion | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:ExtensionGradoDiferenciacion |

Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md) and [Perfil de la Morfología y Topología del Tumor](StructureDefinition-r2bo-tumor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-extension-grado-diferenciacion)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-extension-grado-diferenciacion.csv), [Excel](StructureDefinition-r2bo-extension-grado-diferenciacion.xlsx), [Schematron](StructureDefinition-r2bo-extension-grado-diferenciacion.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-extension-grado-diferenciacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-grado-diferenciacion",
  "version" : "0.1.1-ballot",
  "name" : "ExtensionGradoDiferenciacion",
  "title" : "Extensión del Grado de Diferenciación",
  "status" : "draft",
  "date" : "2026-01-07T10:16:22-03:00",
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
  "description" : "Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia",
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
      "expression" : "BodyStructure"
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
        "short" : "Extensión del Grado de Diferenciación",
        "definition" : "Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-grado-diferenciacion"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "Grado de diferenciación tumoral según clasificación de la OMS",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-grado-diferenciacion-vs"
        }
      }
    ]
  }
}

```
