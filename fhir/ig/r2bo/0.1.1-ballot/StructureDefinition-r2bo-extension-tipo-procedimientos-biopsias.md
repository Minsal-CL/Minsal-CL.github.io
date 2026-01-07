# Extensión Tipo de Procedimiento de Biopsia - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extensión Tipo de Procedimiento de Biopsia**

## Extension: Extensión Tipo de Procedimiento de Biopsia (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:ExtensionTipoProcedimientoBiopsia |

Extensión que define los tipos de procedimientos al momento de extraer muestras de tejido

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil de Muestra](StructureDefinition-r2bo-muestra-biopsia.md)
* Examples for this Extension: [Bundle/r2bo-documento-informe-bundle-ejemplo](Bundle-r2bo-documento-informe-bundle-ejemplo.md), [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Specimen/r2bo-specimen-example](Specimen-r2bo-specimen-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-extension-tipo-procedimientos-biopsias.csv), [Excel](StructureDefinition-r2bo-extension-tipo-procedimientos-biopsias.xlsx), [Schematron](StructureDefinition-r2bo-extension-tipo-procedimientos-biopsias.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-extension-tipo-procedimientos-biopsias",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias",
  "version" : "0.1.1-ballot",
  "name" : "ExtensionTipoProcedimientoBiopsia",
  "title" : "Extensión Tipo de Procedimiento de Biopsia",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Extensión que define los tipos de procedimientos al momento de extraer muestras de tejido",
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
      "expression" : "CodeableConcept"
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
        "short" : "Extensión Tipo de Procedimiento de Biopsia",
        "definition" : "Extensión que define los tipos de procedimientos al momento de extraer muestras de tejido"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias"
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
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-tipo-procedimientos-biopsias-VS"
        }
      }
    ]
  }
}

```
