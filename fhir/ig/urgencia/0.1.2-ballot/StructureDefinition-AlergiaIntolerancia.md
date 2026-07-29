# Alergias e Intolerancia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alergias e Intolerancia**

## Resource Profile: Alergias e Intolerancia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AlergiaIntolerancia | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:AlergiaIntolerancia |

 
Perfíl empleado para registrar alergias e intolerancias de un paciente. 

**Usages:**

* Use this Profile: [Bundle Atención](StructureDefinition-BundleAtencion.md)
* Examples for this Profile: [AllergyIntolerance/39d71be0-2eea-4672-ac70-73373a19e714](AllergyIntolerance-39d71be0-2eea-4672-ac70-73373a19e714.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/AlergiaIntolerancia)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AlergiaIntolerancia.csv), [Excel](StructureDefinition-AlergiaIntolerancia.xlsx), [Schematron](StructureDefinition-AlergiaIntolerancia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AlergiaIntolerancia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AlergiaIntolerancia",
  "version" : "0.1.2-ballot",
  "name" : "AlergiaIntolerancia",
  "title" : "Alergias e Intolerancia",
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
  "description" : "Perfíl empleado para registrar alergias e intolerancias de un paciente.",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreAlergiaIntCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AllergyIntolerance",
        "path" : "AllergyIntolerance"
      },
      {
        "id" : "AllergyIntolerance.patient",
        "path" : "AllergyIntolerance.patient",
        "short" : "Paciente al que se le registra la alergia o intolerancia",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.encounter",
        "path" : "AllergyIntolerance.encounter",
        "short" : "Encuentro de Urgencia",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "AllergyIntolerance.onset[x]",
        "path" : "AllergyIntolerance.onset[x]",
        "short" : "Fecha de inicio de la alergia o intolerancia"
      },
      {
        "id" : "AllergyIntolerance.reaction",
        "path" : "AllergyIntolerance.reaction",
        "short" : "Reacción asociada a la alergia o intolerancia"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation",
        "path" : "AllergyIntolerance.reaction.manifestation",
        "short" : "Manifestación de la reacción",
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.reaction.severity",
        "path" : "AllergyIntolerance.reaction.severity",
        "short" : "Severidad de la reacción"
      }
    ]
  }
}

```
