# Bundle Atención - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Atención**

## Resource Profile: Bundle Atención 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAtencion | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:BundleAtencion |

 
Recurso Bundle para la atención de pacientes en un servicio de atención de urgencia 

### Uso y Alcance

El perfil `BundleAtencion` se emplea para agrupar los recursos que se utilizan en el proceso de atención de un paciente en un servicio de urgencias. En él, se debe hacer envío de algunos recursos como:

**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia.

**Profesional que presta atención**

Recurso `Practitioner` con el perfil `PrestadorProfesional` que representa toda la información del profesional que participa en la atención del paciente.

**Indicaciones**

Recurso `CarePlan` con el perfil `CarePlanIndicaciones` que contiene todas las indicaciones que debe seguir el paciente.

**Otros recursos** Otros recursos relacionados a anamnesis, diagnosticos, evolución clínica, alergias, solicitudes de exámenes, resultados de exámenes, medicamentos administrados, entre otros.

#### Consideraciones

Este evento permite que el establecimiento, pueda enviar un recurso `Encounter` con el perfil `EncounterAtencion` por cada una de las atenciones que se le efectuan al paciente, relacionando a través del atributo `partOf` al recurso `Encounter` base.

**Usages:**

* Examples for this Profile: [Bundle/EjBundleAtencion](Bundle-EjBundleAtencion.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/BundleAtencion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleAtencion.csv), [Excel](StructureDefinition-BundleAtencion.xlsx), [Schematron](StructureDefinition-BundleAtencion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAtencion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAtencion",
  "version" : "0.1.2-ballot",
  "name" : "BundleAtencion",
  "title" : "Bundle Atención",
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
  "description" : "Recurso Bundle para la atención de pacientes en un servicio de atención de urgencia",
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
            "key" : "encounter-status-atencion",
            "severity" : "error",
            "human" : "El recurso Encounter debe venir con un estado 'in-progress' para la atención de urgencia",
            "expression" : "entry.resource.ofType(Encounter).status = 'in-progress'",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAtencion"
          },
          {
            "key" : "status-history-atencion",
            "severity" : "error",
            "human" : "El Encounter debe incluir statusHistory de Atención con status in-progress",
            "expression" : "entry.where(resource is Encounter).resource.statusHistory.where(status = 'in-progress').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAtencion"
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
        "min" : 3
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
        "id" : "Bundle.entry:encuentroAtencion",
        "path" : "Bundle.entry",
        "sliceName" : "encuentroAtencion",
        "short" : "Encuentro de Atención",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentroAtencion.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentroAtencion.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentroAtencion.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentroAtencion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:encuentroAtencion.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Encounter"
      },
      {
        "id" : "Bundle.entry:profesionalAtencion",
        "path" : "Bundle.entry",
        "sliceName" : "profesionalAtencion",
        "short" : "Profesional que participa en la atención",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalAtencion.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalAtencion.resource",
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
        "id" : "Bundle.entry:profesionalAtencion.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesionalAtencion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:profesionalAtencion.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:profesionalAtencion.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de profesional",
        "definition" : "Se debe verificar que no exista un profesional con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:anamnesis",
        "path" : "Bundle.entry",
        "sliceName" : "anamnesis",
        "short" : "Anamnesis",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:anamnesis.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:anamnesis.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Observation",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionAnamnesis"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:anamnesis.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:anamnesis.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:anamnesis.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:diagnosticos",
        "path" : "Bundle.entry",
        "sliceName" : "diagnosticos",
        "short" : "Diagnósticos de Atención - Comorbilidades",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:diagnosticos.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:diagnosticos.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Condition",
        "min" : 1,
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:diagnosticos.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:diagnosticos.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:diagnosticos.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Condition"
      },
      {
        "id" : "Bundle.entry:evolucionClinica",
        "path" : "Bundle.entry",
        "sliceName" : "evolucionClinica",
        "short" : "Evolución Clínica",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:evolucionClinica.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:evolucionClinica.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Observation",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/observacion-evol-clin"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:evolucionClinica.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:evolucionClinica.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:evolucionClinica.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:alergias",
        "path" : "Bundle.entry",
        "sliceName" : "alergias",
        "short" : "Alergias e Intolerancias",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:alergias.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:alergias.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso AllergyIntolerance",
        "min" : 1,
        "type" : [
          {
            "code" : "AllergyIntolerance",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AlergiaIntolerancia"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:alergias.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:alergias.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:alergias.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "AllergyIntolerance"
      },
      {
        "id" : "Bundle.entry:indicaciones",
        "path" : "Bundle.entry",
        "sliceName" : "indicaciones",
        "short" : "Indicaciones",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:indicaciones.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:indicaciones.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso CarePlan",
        "min" : 1,
        "type" : [
          {
            "code" : "CarePlan",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/CarePlanIndicaciones"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:indicaciones.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:indicaciones.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:indicaciones.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "CarePlan"
      },
      {
        "id" : "Bundle.entry:solicitudes",
        "path" : "Bundle.entry",
        "sliceName" : "solicitudes",
        "short" : "Solicitudes realizadas en la atención",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:solicitudes.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:solicitudes.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso ServiceRequest",
        "min" : 1,
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ServiceRequestSolicitudes"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:solicitudes.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:solicitudes.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:solicitudes.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "ServiceRequest"
      },
      {
        "id" : "Bundle.entry:resultados",
        "path" : "Bundle.entry",
        "sliceName" : "resultados",
        "short" : "Resultados de exámenes",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:resultados.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:resultados.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Observation",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservationResultadoExamen"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:resultados.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:resultados.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:resultados.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:medicamentos",
        "path" : "Bundle.entry",
        "sliceName" : "medicamentos",
        "short" : "Medicamentos administrados en la atención",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:medicamentos.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:medicamentos.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso MedicationAdministration",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationAdministration",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedicationAdministrationUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:medicamentos.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:medicamentos.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:medicamentos.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "MedicationAdministration"
      },
      {
        "id" : "Bundle.entry:observacionesAtencion",
        "path" : "Bundle.entry",
        "sliceName" : "observacionesAtencion",
        "short" : "Observaciones de la atención",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:observacionesAtencion.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:observacionesAtencion.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Observation",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionHospitalizacionReciente",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionLesionAutoInfligida",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalAlcoholemia",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalCert",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalExamenToxico",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalLesiones",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionMedLegalVS",
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionReconsultaUrgencia"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:observacionesAtencion.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:observacionesAtencion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:observacionesAtencion.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:procedimientos",
        "path" : "Bundle.entry",
        "sliceName" : "procedimientos",
        "short" : "Procedimientos realizados en la atención",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:procedimientos.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:procedimientos.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Procedure",
        "min" : 1,
        "type" : [
          {
            "code" : "Procedure",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Procedimiento"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:procedimientos.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:procedimientos.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:procedimientos.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Procedure"
      }
    ]
  }
}

```
