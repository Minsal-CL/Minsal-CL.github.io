# Bundle Categorizacion - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Categorizacion**

## Resource Profile: Bundle Categorizacion 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleCategorizacion | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:BundleCategorizacion |

 
Recurso Bundle para registrar la categorización de pacientes en un servicio de atención de urgencia 

### Uso y Alcance

El perfil `BundleCategorizacion` se emplea para agrupar los recursos que se utilizan en el proceso de categorización de un paciente en un servicio de urgencias. En él, se debe hacer envío de:

**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia. Este recurso debe llevar la información respecto a de profesional que categoriza e información de signos vitales.

**Signos vitales**

Recurso `Observation` con el perfil `ObservationSignosVitales` que representa toda la información acerca de las mediciones de signos vitales realizadas en la etapa de categorización.

**Usages:**

* Examples for this Profile: [Bundle/Ej1BundleCategorizacion](Bundle-Ej1BundleCategorizacion.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/BundleCategorizacion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleCategorizacion.csv), [Excel](StructureDefinition-BundleCategorizacion.xlsx), [Schematron](StructureDefinition-BundleCategorizacion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleCategorizacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleCategorizacion",
  "version" : "0.1.2-ballot",
  "name" : "BundleCategorizacion",
  "title" : "Bundle Categorizacion",
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
  "description" : "Recurso Bundle para registrar la categorización de pacientes en un servicio de atención de urgencia",
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
            "key" : "request-ifNoneExist",
            "severity" : "error",
            "human" : "Si el entry exige un ifNoneExist en el request, entonces este debe comenzar con 'identifier='",
            "expression" : "entry.all(request.ifNoneExist.exists() implies request.ifNoneExist.startsWith('identifier='))",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleCategorizacion"
          },
          {
            "key" : "encounter-status-categorizacion",
            "severity" : "error",
            "human" : "El recurso Encounter debe venir con un estado 'triaged' para la caegorización de urgencia",
            "expression" : "entry.resource.ofType(Encounter).status = 'triaged'",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleCategorizacion"
          },
          {
            "key" : "status-history-categorizacion",
            "severity" : "error",
            "human" : "El Encounter debe incluir statusHistory de Categorización con status triaged",
            "expression" : "entry.where(resource is Encounter).resource.statusHistory.where(status = 'triaged').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleCategorizacion"
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
        "id" : "Bundle.entry:categorizador",
        "path" : "Bundle.entry",
        "sliceName" : "categorizador",
        "short" : "Profesional que categoriza",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:categorizador.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:categorizador.resource",
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
        "id" : "Bundle.entry:categorizador.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:categorizador.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:categorizador.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:categorizador.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de profesional",
        "definition" : "Se debe verificar que no exista un profesional con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:signosVitales",
        "path" : "Bundle.entry",
        "sliceName" : "signosVitales",
        "short" : "Signos Vitales",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:signosVitales.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:signosVitales.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Observation",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationSignosVitales"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:signosVitales.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:signosVitales.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:signosVitales.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      }
    ]
  }
}

```
