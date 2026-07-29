# Acompañante Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acompañante Urgencia**

## Resource Profile: Acompañante Urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AcompananteUrg | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:AcompananteUrg |

 
Información del acompañante del paciente que acude a una unidad de urgencias. 

**Usages:**

* Use this Profile: [Bundle Admision](StructureDefinition-BundleAdmision.md)
* Refer to this Profile: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Profile: [RelatedPerson/bb7f34f7-8f4e-42c8-aa84-1f64bf584a05](RelatedPerson-bb7f34f7-8f4e-42c8-aa84-1f64bf584a05.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/AcompananteUrg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AcompananteUrg.csv), [Excel](StructureDefinition-AcompananteUrg.xlsx), [Schematron](StructureDefinition-AcompananteUrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AcompananteUrg",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AcompananteUrg",
  "version" : "0.1.2-ballot",
  "name" : "AcompananteUrg",
  "title" : "Acompañante Urgencia",
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
  "description" : "Información del acompañante del paciente que acude a una unidad de urgencias.",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "short" : "Paciente al que acompaña",
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
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "short" : "Relación con el paciente",
        "definition" : "Tipo de relación que tiene el acompañante con el paciente.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/RelacionAcompanante"
        }
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
        "short" : "Nombre del acompañante.",
        "definition" : "Nombre de la persona que acompaña al paciente en la atención de urgencia.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name.family",
        "path" : "RelatedPerson.name.family",
        "short" : "Primer Apellido del acompañante",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name.family.extension",
        "path" : "RelatedPerson.name.family.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "RelatedPerson.name.family.extension:segundoApellido",
        "path" : "RelatedPerson.name.family.extension",
        "sliceName" : "segundoApellido",
        "short" : "Segundo Apellido del acompañante",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name.given",
        "path" : "RelatedPerson.name.given",
        "short" : "Nombre del acompañante",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.telecom",
        "path" : "RelatedPerson.telecom",
        "short" : "Información de contacto del acompañante"
      },
      {
        "id" : "RelatedPerson.telecom.system",
        "path" : "RelatedPerson.telecom.system",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.telecom.value",
        "path" : "RelatedPerson.telecom.value",
        "short" : "Dato de contacto del acompañante",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.telecom.use",
        "path" : "RelatedPerson.telecom.use",
        "mustSupport" : true
      }
    ]
  }
}

```
