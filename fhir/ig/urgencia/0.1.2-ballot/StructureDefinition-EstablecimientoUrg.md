# Establecimiento Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento Urgencia**

## Resource Profile: Establecimiento Urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EstablecimientoUrg | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:EstablecimientoUrg |

 
Recurso empleado para representar un establecimiento de salud en el cual se realiza la atención de urgencia de un paciente. 

**Usages:**

* Use this Profile: [Bundle Admision](StructureDefinition-BundleAdmision.md)
* Refer to this Profile: [Encuentro Atención](StructureDefinition-EncounterAtencion.md) and [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Profile: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/EstablecimientoUrg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EstablecimientoUrg.csv), [Excel](StructureDefinition-EstablecimientoUrg.xlsx), [Schematron](StructureDefinition-EstablecimientoUrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EstablecimientoUrg",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EstablecimientoUrg",
  "version" : "0.1.2-ballot",
  "name" : "EstablecimientoUrg",
  "title" : "Establecimiento Urgencia",
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
  "description" : "Recurso empleado para representar un establecimiento de salud en el cual se realiza la atención de urgencia de un paciente.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "short" : "Identificador del establecimiento de salud",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier.value",
        "path" : "Organization.identifier.value",
        "short" : "Código DEIS del establecimiento de salud",
        "min" : 1
      }
    ]
  }
}

```
