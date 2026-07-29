# Bundle Egreso - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Egreso**

## Resource Profile: Bundle Egreso 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleEgreso | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:BundleEgreso |

 
Recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia 

**Usages:**

* Examples for this Profile: [Bundle/EjBundleEgreso](Bundle-EjBundleEgreso.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/BundleEgreso)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleEgreso.csv), [Excel](StructureDefinition-BundleEgreso.xlsx), [Schematron](StructureDefinition-BundleEgreso.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleEgreso",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleEgreso",
  "version" : "0.1.2-ballot",
  "name" : "BundleEgreso",
  "title" : "Bundle Egreso",
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
  "description" : "Recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "constraint" : [
          {
            "key" : "encounter-status-egreso",
            "severity" : "error",
            "human" : "El recurso Encounter debe venir con un estado 'finished' para el egreso de urgencia",
            "expression" : "entry.resource.ofType(Encounter).status = 'finished'",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleEgreso"
          },
          {
            "key" : "status-history-egreso",
            "severity" : "error",
            "human" : "El Encounter debe incluir statusHistory de Egreso con status finished",
            "expression" : "entry.where(resource is Encounter).resource.statusHistory.where(status = 'finished').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleEgreso"
          }
        ]
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "closed"
        },
        "min" : 2
      },
      {
        "id" : "Bundle.entry:encuentro",
        "path" : "Bundle.entry",
        "sliceName" : "encuentro",
        "short" : "Encuentro de Urgencia",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de actualización de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      },
      {
        "id" : "Bundle.entry:encuentro.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "URL para actualizar el Encounter usando identifier"
      },
      {
        "id" : "Bundle.entry:profesionalEgreso",
        "path" : "Bundle.entry",
        "sliceName" : "profesionalEgreso",
        "short" : "Profesional que realiza el egreso",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Practitioner",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:profesionalEgreso.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de profesional",
        "definition" : "Se debe verificar que no exista un profesional con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
