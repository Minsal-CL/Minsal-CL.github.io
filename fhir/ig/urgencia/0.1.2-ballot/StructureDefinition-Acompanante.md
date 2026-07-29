# Acompañante - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acompañante**

## Extension: Acompañante 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:Acompanante |

Extensión empleada para indicar si el paciente tiene un acompañante en la atención de salud.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Extension: [Bundle/Ej1BundleAdmision](Bundle-Ej1BundleAdmision.md), [Bundle/Ej1BundleCategorizacion](Bundle-Ej1BundleCategorizacion.md), [Bundle/EjBundleAtencion](Bundle-EjBundleAtencion.md), [Bundle/EjBundleEgreso](Bundle-EjBundleEgreso.md)...Show 5 more,[Encounter/4c9a3e03-a907-492e-b69c-710cb8c42347](Encounter-4c9a3e03-a907-492e-b69c-710cb8c42347.md),[Encounter/bd36a211-7b55-4ff7-905b-0dac7bf35aee](Encounter-bd36a211-7b55-4ff7-905b-0dac7bf35aee.md),[Encounter/d1391b7b-302a-49f8-a908-8116599e137e](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md),[Encounter/e383a62a-628f-4408-b98f-5e5914869bfe](Encounter-e383a62a-628f-4408-b98f-5e5914869bfe.md)and[Encounter/fbce23ed-b195-47a2-81a2-be4aaf11b038](Encounter-fbce23ed-b195-47a2-81a2-be4aaf11b038.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/Acompanante)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Acompanante.csv), [Excel](StructureDefinition-Acompanante.xlsx), [Schematron](StructureDefinition-Acompanante.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Acompanante",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante",
  "version" : "0.1.2-ballot",
  "name" : "Acompanante",
  "title" : "Acompañante",
  "status" : "draft",
  "date" : "2025-12-10T16:35:01-03:00",
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
  "description" : "Extensión empleada para indicar si el paciente tiene un acompañante en la atención de salud.",
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
        "short" : "Acompañante",
        "definition" : "Extensión empleada para indicar si el paciente tiene un acompañante en la atención de salud."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Si el paciente acude con acompañante",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
