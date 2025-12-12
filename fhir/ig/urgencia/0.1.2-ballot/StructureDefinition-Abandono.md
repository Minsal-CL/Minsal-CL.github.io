# Abandono - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abandono**

## Extension: Abandono 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Abandono | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:Abandono |

Extension para regitrar el tipo de abandono que un paciente puede efectuar durante el proceso de urgencia.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Extension: [Encounter/4c9a3e03-a907-492e-b69c-710cb8c42347](Encounter-4c9a3e03-a907-492e-b69c-710cb8c42347.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/Abandono)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Abandono.csv), [Excel](StructureDefinition-Abandono.xlsx), [Schematron](StructureDefinition-Abandono.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Abandono",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Abandono",
  "version" : "0.1.2-ballot",
  "name" : "Abandono",
  "title" : "Abandono",
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
  "description" : "Extension para regitrar el tipo de abandono que un paciente puede efectuar durante el proceso de urgencia.",
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
      "expression" : "Encounter.hospitalization.dischargeDisposition"
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
        "short" : "Abandono",
        "definition" : "Extension para regitrar el tipo de abandono que un paciente puede efectuar durante el proceso de urgencia."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Abandono"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Tipo de abandono",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/abandono"
        }
      }
    ]
  }
}

```
