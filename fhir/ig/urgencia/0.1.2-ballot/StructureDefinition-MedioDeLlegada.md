# Medio de Llegada - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medio de Llegada**

## Extension: Medio de Llegada 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:MedioDeLlegada |

Extensión que registra el medio de llegada del paciente al establecimiento de salud

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Extension: [Bundle/Ej1BundleAdmision](Bundle-Ej1BundleAdmision.md), [Bundle/Ej1BundleCategorizacion](Bundle-Ej1BundleCategorizacion.md), [Bundle/EjBundleAtencion](Bundle-EjBundleAtencion.md), [Bundle/EjBundleEgreso](Bundle-EjBundleEgreso.md)...Show 5 more,[Encounter/4c9a3e03-a907-492e-b69c-710cb8c42347](Encounter-4c9a3e03-a907-492e-b69c-710cb8c42347.md),[Encounter/bd36a211-7b55-4ff7-905b-0dac7bf35aee](Encounter-bd36a211-7b55-4ff7-905b-0dac7bf35aee.md),[Encounter/d1391b7b-302a-49f8-a908-8116599e137e](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md),[Encounter/e383a62a-628f-4408-b98f-5e5914869bfe](Encounter-e383a62a-628f-4408-b98f-5e5914869bfe.md)and[Encounter/fbce23ed-b195-47a2-81a2-be4aaf11b038](Encounter-fbce23ed-b195-47a2-81a2-be4aaf11b038.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/MedioDeLlegada)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedioDeLlegada.csv), [Excel](StructureDefinition-MedioDeLlegada.xlsx), [Schematron](StructureDefinition-MedioDeLlegada.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedioDeLlegada",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada",
  "version" : "0.1.2-ballot",
  "name" : "MedioDeLlegada",
  "title" : "Medio de Llegada",
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
  "description" : "Extensión que registra el medio de llegada del paciente al establecimiento de salud",
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
      "expression" : "Encounter.hospitalization"
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
        "short" : "Medio de Llegada",
        "definition" : "Extensión que registra el medio de llegada del paciente al establecimiento de salud"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/MedioDeLlegada"
        }
      }
    ]
  }
}

```
