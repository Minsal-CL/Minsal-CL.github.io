# Pueblos Originarios - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pueblos Originarios**

## Extension: Pueblos Originarios 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginarios | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:PueblosOriginarios |

Almacenar si el paciente pertenece a algun pueblo originario

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient LE](StructureDefinition-PatientLE.md)
* Examples for this Extension: [Bundle/EjBundleAtender](Bundle-EjBundleAtender.md) and [Patient/22e862c5-6d96-44ec-869c-dba001058cb3](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/PueblosOriginarios)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PueblosOriginarios.csv), [Excel](StructureDefinition-PueblosOriginarios.xlsx), [Schematron](StructureDefinition-PueblosOriginarios.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PueblosOriginarios",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginarios",
  "version" : "0.1.2-ballot",
  "name" : "PueblosOriginarios",
  "title" : "Pueblos Originarios",
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
  "description" : "Almacenar si el paciente pertenece a algun pueblo originario",
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
        "short" : "Pueblos Originarios",
        "definition" : "Almacenar si el paciente pertenece a algun pueblo originario"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginarios",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Código Pueblo Originario",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/PueblosOriginariosVS"
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
        "short" : "Código del pueblo",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.display",
        "path" : "Extension.value[x].coding.display",
        "short" : "Nombre del pueblo",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].text",
        "path" : "Extension.value[x].text",
        "short" : "Otro pueblo originario",
        "mustSupport" : true
      }
    ]
  }
}

```
