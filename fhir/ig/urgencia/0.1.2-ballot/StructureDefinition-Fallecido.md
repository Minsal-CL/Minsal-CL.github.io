# Fallecido - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fallecido**

## Extension: Fallecido 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Fallecido | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:Fallecido |

Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Extension: [Encounter/e383a62a-628f-4408-b98f-5e5914869bfe](Encounter-e383a62a-628f-4408-b98f-5e5914869bfe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/Fallecido)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Fallecido.csv), [Excel](StructureDefinition-Fallecido.xlsx), [Schematron](StructureDefinition-Fallecido.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Fallecido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Fallecido",
  "version" : "0.1.2-ballot",
  "name" : "Fallecido",
  "title" : "Fallecido",
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
  "description" : "Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia.",
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
        "short" : "Fallecido",
        "definition" : "Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:Tipo",
        "path" : "Extension.extension",
        "sliceName" : "Tipo",
        "short" : "Tipo de fallecimiento",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:Tipo.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:Tipo.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "Tipo"
      },
      {
        "id" : "Extension.extension:Tipo.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/fallecido"
        }
      },
      {
        "id" : "Extension.extension:Destino",
        "path" : "Extension.extension",
        "sliceName" : "Destino",
        "short" : "Destino del fallecido",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:Destino.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:Destino.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "Destino"
      },
      {
        "id" : "Extension.extension:Destino.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/destino-fallecido"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Fallecido"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
