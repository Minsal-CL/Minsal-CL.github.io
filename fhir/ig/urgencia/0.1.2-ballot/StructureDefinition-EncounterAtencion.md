# Encuentro Atención - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encuentro Atención**

## Resource Profile: Encuentro Atención 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EncounterAtencion |

 
Recurso que representa los diferentes encuentros clínicos durante su estancia en el servicio de urgencia de un paciente en un establecimiento de salud. 

### Uso y Alcance

Este perfil se deberá emplear en caso que el sistema de origen tenga la capacidad de trazar cada una de las diferentes atenciones que ocurren una vez que el proceso de atención de urgencia pasa a un estado de atención. Esto permite asociar cada uno de los elementos clínicos generados al recurso Encounter correspondiente. Utilizando el recurso `EncounterUrg` como trazador, y cada uno de los encuentros de atención se relacionan mediante el campo `partOf` hacia el recurso `EncounterUrg`.

Si el sistema solo tiene un registro global de la atención de urgencia, se recomienda utilizar el recurso `EncounterUrg` sin necesidad de trazar cada una de las atenciones en este recurso.

Este perfil es utilizado solo a aquellas interacciones que se realizan en el contexto de atención de urgencia, y no debe ser empleado para registrar la interacción que ocurre durante la admisión, categorización y egreso del paciente.

El `status` de cada una de las atenciones debe ir como `finished` y deben registrar la fecha y hora de inicio y fin de la atención en el campo `period`, siendo obligatorio registrar al menos la fecha de inicio.

Se deben indicar los participantes del encuentro, en el campo `participant`, indicando el rol que desempeñan en la atención de urgencia. Los roles permitidos en este tipo de atención son los siguientes:

**Atendedor**

Persona que atiende al paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ATND`.

**Atendedor Secundario**

Persona que asiste al atendedor en la atención del paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `SPRF`.

**Especialista**

Persona especializada en una rama de la medicina, encargada de brindar atención médica al paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `CON`.

**Usages:**

* Use this Profile: [Bundle Atención](StructureDefinition-BundleAtencion.md)
* Refer to this Profile: [Alergias e Intolerancia](StructureDefinition-AlergiaIntolerancia.md), [CarePlan Indicaciones](StructureDefinition-CarePlanIndicaciones.md), [MedicationAdministration Urgencia](StructureDefinition-MedicationAdministrationUrg.md), [Observación Anamnesis](StructureDefinition-ObservacionAnamnesis.md)...Show 4 more,[Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md),[Procedimientos de Urgencias](StructureDefinition-Procedimiento.md),[Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios](StructureDefinition-ServiceRequestSolicitudes.md)and[Observación Evolución Clínica](StructureDefinition-observacion-evol-clin.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/EncounterAtencion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterAtencion.csv), [Excel](StructureDefinition-EncounterAtencion.xlsx), [Schematron](StructureDefinition-EncounterAtencion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterAtencion",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterAtencion",
  "version" : "0.1.2-ballot",
  "name" : "EncounterAtencion",
  "title" : "Encuentro Atención",
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
  "description" : "Recurso que representa los diferentes encuentros clínicos durante su estancia en el servicio de urgencia de un paciente en un establecimiento de salud.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
  "type" : "Encounter",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "patternCode" : "finished"
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Tipo de encuentro de urgencia",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "EMER"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "Paciente",
        "definition" : "Paciente que recibe atención de urgencia",
        "min" : 1,
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
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.participant.type",
        "path" : "Encounter.participant.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/TipoParticipanteEncuentroUrgencia"
        }
      },
      {
        "id" : "Encounter.participant:Atendedor",
        "path" : "Encounter.participant",
        "sliceName" : "Atendedor",
        "short" : "Profesional que atiende al paciente",
        "definition" : "Profesional que atiende al paciente en un servicio de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Atendedor.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ATND"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Atendedor.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Atendedor.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora de atención",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Atendedor.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al profesional que atiende",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:AtendedorSecundario",
        "path" : "Encounter.participant",
        "sliceName" : "AtendedorSecundario",
        "short" : "Profesional que atiende al paciente pero no es el principal",
        "definition" : "Profesional que atiende al paciente en un servicio de urgencia pero no es el principal",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:AtendedorSecundario.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "SPRF"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:AtendedorSecundario.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:AtendedorSecundario.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora de atención",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:AtendedorSecundario.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al profesional que atiende",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:Especialista",
        "path" : "Encounter.participant",
        "sliceName" : "Especialista",
        "short" : "Profesional especialista que atiende al paciente",
        "definition" : "Profesional especialista que atiende al paciente en un servicio de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Especialista.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "CON"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Especialista.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Especialista.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora de atención",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Especialista.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al profesional especialista que atiende",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "Fecha y hora de que se realiza la admisión de urgencia",
        "definition" : "Corresponde al día, mes, año y hora en que se realiza la admisión. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud.",
        "min" : 1
      },
      {
        "id" : "Encounter.period.end",
        "path" : "Encounter.period.end",
        "short" : "Fecha y hora de que se cierra el dato de urgencia",
        "definition" : "Corresponde al día, el mes y la hora en que luego de cumplir con la completitud de los datos requeridos y el registro por parte del equipo de salud de las intervenciones realizadas, el médico u odontólogo, cierra el dato de urgencia."
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "short" : "Establecimiento de salud",
        "definition" : "Establecimiento de salud donde se realiza la atención de urgencia",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EstablecimientoUrg"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "short" : "Encuentro de urgencia al que pertenece el encuentro de atención",
        "min" : 1,
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
