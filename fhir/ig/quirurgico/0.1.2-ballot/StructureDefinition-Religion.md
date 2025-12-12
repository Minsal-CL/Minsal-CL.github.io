# Religión - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Religión**

## Extension: Religión 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Religion | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:Religion |

Religión

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient LE](StructureDefinition-PatientLE.md)
* Examples for this Extension: [Bundle/EjBundleAtender](Bundle-EjBundleAtender.md) and [Patient/22e862c5-6d96-44ec-869c-dba001058cb3](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/Religion)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Religion.csv), [Excel](StructureDefinition-Religion.xlsx), [Schematron](StructureDefinition-Religion.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Religion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Religion",
  "version" : "0.1.2-ballot",
  "name" : "Religion",
  "title" : "Religión",
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
  "description" : "Religión",
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
      "expression" : "Patient"
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
        "short" : "Religión",
        "definition" : "Religión"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Religion",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Religión del paciente",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSReligion"
        }
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "short" : "URI del system para validar",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.code",
        "path" : "Extension.value[x].coding.code",
        "short" : "Nombre de la religión",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.display",
        "path" : "Extension.value[x].coding.display",
        "short" : "Nombre de la religión",
        "mustSupport" : true
      }
    ]
  }
}

```
