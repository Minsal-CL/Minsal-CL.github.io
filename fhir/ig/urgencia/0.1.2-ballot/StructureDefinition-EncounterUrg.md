# Encuentro Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encuentro Urgencia**

## Resource Profile: Encuentro Urgencia 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EncounterUrg |

 
Recurso que representa el episodio de urgencia de un paciente en un establecimiento de salud. 

### Uso y Alcance

Este perfíl debe ser empleado como recurso trazador de todo el episodio de urgencia de un paciente. Se debe registrar el detalle de las fechas en los que el paciente se encontró en los diferentes estados del proceso de atención de urgencia a través del campo `statusHistory`. Cada uno de los participantes que interactuaron con el paciente en el proceso de atención de urgencia deben ser registrados en el campo `participant`.

#### Estados de Atención de Urgencia

El recurso `EncounterUrg` se utiliza para registrar los estados de atención de urgencia en los que se encuentra un paciente, junto con las fechas correspondientes a cada estado. Los estados considerados en el flujo de atención de urgencia son los siguientes:

**Admisión**

Este estado refleja el momento en el que el paciente es admitido en el servicio de urgencias. La admisión es gestionada por el personal administrativo y se registra en el recurso `EncounterUrg` de la siguiente manera:

* En el campo `statusHistory`, se añade una nueva entrada donde: 
* El elemento `status` se establece como `arrived`.
* La fecha y hora de admisión del paciente se registra en el elemento `period.start` de la entrada correspondiente.
 
* Adicionalmente, el campo principal `period.start` del recurso `EncounterUrg` también debe contener la fecha y hora de la admisión del paciente.

**Categorización**

Este estado registra la categorización del paciente según la gravedad de su condición de salud, actividad que realiza el personal clínico. La información se documenta en el recurso `EncounterUrg` de la siguiente manera:

* En el campo `statusHistory`, se añade una nueva entrada donde: 
* El elemento `status` se establece como `triaged`.
* La fecha y hora en la que se realizó la categorización se registra en el elemento `period.start` de la entrada correspondiente.
 

**Atención**

Este estado registra el inicio de la atención médica, conducente al diagnóstico y tratamiento del paciente, posterior al proceso de categorización. La atención es llevada a cabo por el personal clínico y se documenta en el recurso `EncounterUrg` de la siguiente manera:

* En el campo `statusHistory`, se añade una nueva entrada donde: 
* El elemento `status` se establece como `in-progress`.
* La fecha y hora de inicio de la atención médica se registra en el elemento `period.start` de la entrada correspondiente.
 

**Egreso**

Este estado corresponde al momento en el que la ateción de urgencia es dada por finalizada, cerrando el ciclo de atención y generando el DAU (Dato de Atención de Urgencia). La información del egreso se registra en el recurso `EncounterUrg` de la siguiente manera:

* En el campo `statusHistory`, se añade una nueva entrada donde: 
* El elemento `status` se establece como `finished`.
* La fecha y hora de egreso del paciente se registra en el elemento `period.start` de la entrada correspondiente.
 
* Además: 
* El campo principal `period.end` del recurso `EncounterUrg` debe regsitarse esta fecha de egreso.
 

Adicionalmente a los estados mencionados, se requiere registrar otro dato relevante en el proceso de atención de urgencia, el cual es la fecha efectiva de egreso del paciente. Este dato se registra en el recurso `EncounterUrg` en la entrada del `statusHistory` cuyo `status` es `finished`. La fecha y hora de egreso efectivo se registra en el elemento `period.end` de la entrada correspondiente. Este dato representa el momento en que el paciente es dado de alta, hospitalizado o derivado a otro servicio.

#### Participantes en el Proceso de Atención de Urgencia

Este recurso permite registrar a los diferentes participantes que interactuaron con el paciente en el proceso de atención de urgencia. Los participantes se registran en el campo `participant` del recurso `EncounterUrg`. Cada participante se registra como una entrada en la lista de participantes, donde se debe especificar el rol que desempeña en el proceso de atención de urgencia. Los roles permitidos son los siguientes:

**Acompañante**

Persona que acompaña al paciente durante el proceso de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `emergency`.

**Admisionista**

Persona encargada de realizar la admisión del paciente en el servicio de urgencias. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ADM`.

**Categorizador**

Persona encargada de realizar la categorización del paciente según la gravedad de su condición de salud. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `triage`.

**Atendedor**

Persona encargada de brindar atención médica al paciente. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ATND`.

**Atendedor Secundario**

Persona encargada de brindar atención médica al paciente, en apoyo al atendedor principal. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `SPRF`.

**Especialista**

Persona especializada en una rama de la medicina, encargada de brindar atención médica al paciente. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `CON`.

**Terminador**

Persona encargada de realizar el egreso del paciente del servicio de urgencias. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `DIS`.

Dentro de cada una de las entradas de la lista de participantes, se debe registrar la fecha y hora en la que el participante interactuó con el paciente en el campo `period.start`. Si se cuenta con la fecha y hora de finalización de la interacción, esta se registra en el campo `period.end`. Cada código empleado para identificar el tipo de participante en el proceso de atención de urgencia se encuentra en el ValueSet `TipoParticipanteEncuentroUrgencia`.

**Usages:**

* Use this Profile: [Bundle Admision](StructureDefinition-BundleAdmision.md), [Bundle Atención](StructureDefinition-BundleAtencion.md), [Bundle Categorizacion](StructureDefinition-BundleCategorizacion.md) and [Bundle Egreso](StructureDefinition-BundleEgreso.md)
* Refer to this Profile: [Alergias e Intolerancia](StructureDefinition-AlergiaIntolerancia.md), [CarePlan Indicaciones](StructureDefinition-CarePlanIndicaciones.md), [Condition Diagnostico](StructureDefinition-ConditionDiagnosticoLE.md), [Encuentro Atención](StructureDefinition-EncounterAtencion.md)...Show 15 more,[MedicationAdministration Urgencia](StructureDefinition-MedicationAdministrationUrg.md),[Observación Anamnesis](StructureDefinition-ObservacionAnamnesis.md),[Observación Hospitalización Reciente](StructureDefinition-ObservacionHospitalizacionReciente.md),[Observación Lesión Auto Infligida](StructureDefinition-ObservacionLesionAutoInfligida.md),[Observación Medico Legal Alcoholemia](StructureDefinition-ObservacionMedLegalAlcoholemia.md),[Observación Medico Legal Certificación](StructureDefinition-ObservacionMedLegalCert.md),[Observación Medico Legal Examen Toxicológico](StructureDefinition-ObservacionMedLegalExamenToxico.md),[Observación Medico Legal Lesiones](StructureDefinition-ObservacionMedLegalLesiones.md),[Observación Medico Legal Violencia Sexual](StructureDefinition-ObservacionMedLegalVS.md),[Observación Reconsulta Urgencia](StructureDefinition-ObservacionReconsultaUrgencia.md),[Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md),[Observación Signos Vitales](StructureDefinition-ObservationSignosVitales.md),[Procedimientos de Urgencias](StructureDefinition-Procedimiento.md),[Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios](StructureDefinition-ServiceRequestSolicitudes.md)and[Observación Evolución Clínica](StructureDefinition-observacion-evol-clin.md)
* Examples for this Profile: [Encounter/4c9a3e03-a907-492e-b69c-710cb8c42347](Encounter-4c9a3e03-a907-492e-b69c-710cb8c42347.md), [Encounter/bd36a211-7b55-4ff7-905b-0dac7bf35aee](Encounter-bd36a211-7b55-4ff7-905b-0dac7bf35aee.md), [Encounter/d1391b7b-302a-49f8-a908-8116599e137e](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md), [Encounter/e383a62a-628f-4408-b98f-5e5914869bfe](Encounter-e383a62a-628f-4408-b98f-5e5914869bfe.md) and [Encounter/fbce23ed-b195-47a2-81a2-be4aaf11b038](Encounter-fbce23ed-b195-47a2-81a2-be4aaf11b038.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/EncounterUrg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterUrg.csv), [Excel](StructureDefinition-EncounterUrg.xlsx), [Schematron](StructureDefinition-EncounterUrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterUrg",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg",
  "version" : "0.1.2-ballot",
  "name" : "EncounterUrg",
  "title" : "Encuentro Urgencia",
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
  "description" : "Recurso que representa el episodio de urgencia de un paciente en un establecimiento de salud.",
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
        "id" : "Encounter",
        "path" : "Encounter",
        "constraint" : [
          {
            "key" : "acompanante-slice",
            "severity" : "error",
            "human" : "Si la extensión Acompanante es 'true', entonces el participante Acompanante debe estar presente.",
            "expression" : "extension('https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante').value.single() = true implies participant.type.coding.exists(system = 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType' and code = 'ESC')",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
          },
          {
            "key" : "motivo-consulta",
            "severity" : "error",
            "human" : "Si el estado del encuentro es distinto de 'arrived', entonces el motivo de la consulta debe estar presente.",
            "expression" : "reasonCode.exists() or status = 'arrived'",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
          },
          {
            "key" : "categorizacion",
            "severity" : "error",
            "human" : "Si el encuentro tiene el estado 'triaged', entonces el participante Categorizador debe estar presente.",
            "expression" : "status = 'triaged' implies participant.exists(type.coding.exists(system = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia' and code = 'triage'))",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
          }
        ]
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.extension:Acompanante",
        "path" : "Encounter.extension",
        "sliceName" : "Acompanante",
        "short" : "Indica si el paciente acude con acompañante",
        "definition" : "Extensión empleada para indicar si el paciente acude con acompañante a la atención de urgencia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:LeyPrevisional",
        "path" : "Encounter.extension",
        "sliceName" : "LeyPrevisional",
        "short" : "Ley previsional que financia la atención de urgencia",
        "definition" : "Extensión empleada para indicar la ley previsional que financia la atención de urgencia.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/LeyPrevisional"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Identificador del encuentro de urgencia",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "short" : "Valor del identificador, compuesto por Código DEIS de establecimiento - Id único del evento asignado por el establecimiento",
        "definition" : "Identificador de la consulta de urgencia. Este debe estar compuesto por Código DEIS de establecimiento - Id único del evento asignado por el establecimiento",
        "comment" : "El valor del identificador debe ser único por evento de urgencia",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory",
        "path" : "Encounter.statusHistory",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "status"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.statusHistory:Admision",
        "path" : "Encounter.statusHistory",
        "sliceName" : "Admision",
        "short" : "Estado de admisión de la atención de urgencia",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Admision.status",
        "path" : "Encounter.statusHistory.status",
        "patternCode" : "arrived",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Admision.period",
        "path" : "Encounter.statusHistory.period",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Admision.period.start",
        "path" : "Encounter.statusHistory.period.start",
        "short" : "Fecha y hora de admisión",
        "definition" : "Corresponde al día, mes, año y hora en que se realiza la admisión. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Categorizacion",
        "path" : "Encounter.statusHistory",
        "sliceName" : "Categorizacion",
        "short" : "Estado de categorización de la atención de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Categorizacion.status",
        "path" : "Encounter.statusHistory.status",
        "patternCode" : "triaged",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Categorizacion.period",
        "path" : "Encounter.statusHistory.period",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Categorizacion.period.start",
        "path" : "Encounter.statusHistory.period.start",
        "short" : "Fecha y hora de categorización",
        "definition" : "Corresponde al día, mes, año y hora en que se realiza la categorización. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Atencion",
        "path" : "Encounter.statusHistory",
        "sliceName" : "Atencion",
        "short" : "Estado de atención de la atención de urgencia",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Atencion.status",
        "path" : "Encounter.statusHistory.status",
        "patternCode" : "in-progress",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Atencion.period",
        "path" : "Encounter.statusHistory.period",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Atencion.period.start",
        "path" : "Encounter.statusHistory.period.start",
        "short" : "Fecha y hora de inicio de atención de urgencia",
        "definition" : "Corresponde al registro del tiempo en que se inicia el proceso de atención de urgencia, se considera como inicio el primer registro en sistema conducente a diagnosticar y reestablecer el estado de salud del usuario posterior al proceso de categorización.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Egreso",
        "path" : "Encounter.statusHistory",
        "sliceName" : "Egreso",
        "short" : "Estado de egreso de la atención de urgencia",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Egreso.status",
        "path" : "Encounter.statusHistory.status",
        "patternCode" : "finished",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Egreso.period",
        "path" : "Encounter.statusHistory.period",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Egreso.period.start",
        "path" : "Encounter.statusHistory.period.start",
        "short" : "Fecha y hora de egreso",
        "definition" : "Corresponde al día, el mes y la hora en que luego de cumplir con la completitud de los datos requeridos y el registro por parte del equipo de salud de las intervenciones realizadas, el médico u odontólogo, cierra el dato de urgencia.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.statusHistory:Egreso.period.end",
        "path" : "Encounter.statusHistory.period.end",
        "short" : "Fecha y hora de egreso efectivo",
        "definition" : "Corresponde al día, el mes y la hora en que luego de cumplir con termino de atención de urgencia y el cierre del dato de urgencia, el usuario egresa efectivamente de la unidad de urgencia.",
        "mustSupport" : true
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
        "id" : "Encounter.priority",
        "path" : "Encounter.priority",
        "short" : "Categorización de prioridad de atención de urgencia",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/categorizacion-urgencia"
        }
      },
      {
        "id" : "Encounter.priority.coding",
        "path" : "Encounter.priority.coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.priority.coding.system",
        "path" : "Encounter.priority.coding.system",
        "short" : "Sistema de categorización de la prioridad de atención de urgencia",
        "definition" : "Sistema de categorización de la prioridad de atención de urgencia",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.priority.coding.code",
        "path" : "Encounter.priority.coding.code",
        "short" : "Código de categorización de la prioridad",
        "definition" : "Código de categorización de la prioridad de atención de urgencia",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.priority.coding.display",
        "path" : "Encounter.priority.coding.display",
        "short" : "Definición de la categorización de la prioridad",
        "definition" : "Definición de la categorización de la prioridad de atención de urgencia",
        "mustSupport" : true
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
        },
        "min" : 1
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
        "id" : "Encounter.participant:Acompanante",
        "path" : "Encounter.participant",
        "sliceName" : "Acompanante",
        "short" : "Acompañante del paciente",
        "definition" : "Acompañante del paciente que recibe atención de urgencia",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Acompanante.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/participant-type",
              "version" : "4.0.1",
              "code" : "emergency"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Acompanante.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al acompañante del paciente",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AcompananteUrg"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:Admisionista",
        "path" : "Encounter.participant",
        "sliceName" : "Admisionista",
        "short" : "Personal administrativo que realiza la admisión de urgencia",
        "definition" : "Corresponde al personal administrativo que realiza la admisión de urgencia",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Admisionista.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ADM"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Admisionista.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Admisionista.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora de admisión",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Admisionista.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorAdministrativo"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:Categorizador",
        "path" : "Encounter.participant",
        "sliceName" : "Categorizador",
        "short" : "Profesional que categoriza al paciente",
        "definition" : "Profesional que categoriza al paciente en un servicio de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Categorizador.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia",
              "code" : "triage"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Categorizador.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Categorizador.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora de categorización",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Categorizador.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al profesional que categoriza",
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
        "id" : "Encounter.participant:Terminador",
        "path" : "Encounter.participant",
        "sliceName" : "Terminador",
        "short" : "Profesional que autoriza el egresa del paciente",
        "definition" : "Es la individualización del médico u odontólogo tratante del usuario, a cargo del proceso de atención. Solo en atenciones de Servicios de Urgencia Rural (SUR), en que no se cuente con personal médico ni odontológico, será el otro profesional o el TENS, quien cierre la atención y otorgue el alta.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Terminador.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "DIS"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:Terminador.period",
        "path" : "Encounter.participant.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Terminador.period.start",
        "path" : "Encounter.participant.period.start",
        "short" : "Fecha y hora que se registra la decisión de egreso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:Terminador.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Referencia al profesional que autoriza el egreso",
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
        "id" : "Encounter.reasonCode",
        "path" : "Encounter.reasonCode",
        "short" : "Motivo de la atención de urgencia",
        "max" : "1"
      },
      {
        "id" : "Encounter.reasonCode.text",
        "path" : "Encounter.reasonCode.text",
        "short" : "Texto libre del motivo de la atención de urgencia indicado por el paciente",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis",
        "path" : "Encounter.diagnosis",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.diagnosis:HipotesisDiagnostica",
        "path" : "Encounter.diagnosis",
        "sliceName" : "HipotesisDiagnostica",
        "short" : "Hipótesis diagnóstica",
        "definition" : "Hipótesis diagnóstica del paciente en el contexto de atención de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:HipotesisDiagnostica.condition",
        "path" : "Encounter.diagnosis.condition",
        "short" : "Referencia a la hipótesis diagnóstica",
        "definition" : "Referencia a la hipótesis diagnóstica del paciente en el contexto de atención de urgencia",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:HipotesisDiagnostica.use",
        "path" : "Encounter.diagnosis.use",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
              "code" : "AD"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:HipotesisDiagnostica.rank",
        "path" : "Encounter.diagnosis.rank",
        "short" : "Si es la hipótesis diagnóstica principal se debe registrar el valor 1.",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:Comorbilidades",
        "path" : "Encounter.diagnosis",
        "sliceName" : "Comorbilidades",
        "short" : "Comorbilidades",
        "definition" : "Comorbilidades del paciente en el contexto de atención de urgencia",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:Comorbilidades.condition",
        "path" : "Encounter.diagnosis.condition",
        "short" : "Referencia a la comorbilidad",
        "definition" : "Referencia a la comorbilidad del paciente en el contexto de atención de urgencia",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:Comorbilidades.use",
        "path" : "Encounter.diagnosis.use",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
              "code" : "CM"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:DiagnosticoEgreso",
        "path" : "Encounter.diagnosis",
        "sliceName" : "DiagnosticoEgreso",
        "short" : "Diagnóstico de egreso",
        "definition" : "Diagnóstico de egreso del paciente en el contexto de atención de urgencia",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:DiagnosticoEgreso.condition",
        "path" : "Encounter.diagnosis.condition",
        "short" : "Referencia al diagnóstico de egreso",
        "definition" : "Referencia al diagnóstico de egreso del paciente en el contexto de atención de urgencia",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis:DiagnosticoEgreso.use",
        "path" : "Encounter.diagnosis.use",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
              "code" : "DD"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization",
        "path" : "Encounter.hospitalization",
        "short" : "Información de admisión y egreso de la atención de urgencia"
      },
      {
        "id" : "Encounter.hospitalization.extension",
        "path" : "Encounter.hospitalization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Encounter.hospitalization.extension:MedioDeLlegada",
        "path" : "Encounter.hospitalization.extension",
        "sliceName" : "MedioDeLlegada",
        "short" : "Medio de llegada del paciente al servicio de urgencia",
        "definition" : "Extensión empleada para indicar el medio de llegada del paciente al servicio de urgencia. Este dato es capturado durante la admisión de urgencia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.extension:ConsultaPorAccidente",
        "path" : "Encounter.hospitalization.extension",
        "sliceName" : "ConsultaPorAccidente",
        "short" : "Consulta por accidente",
        "definition" : "Extensión que registra si la atención de urgencia se debe a un accidente. Este dato es capturado durante la admisión de urgencia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.admitSource",
        "path" : "Encounter.hospitalization.admitSource",
        "short" : "Lugar físico desde donde proviene el paciente cuando concurre a la atención de urgencia",
        "definition" : "Lugar físico desde donde proviene el paciente cuando concurre a la atención de urgencia. Este dato es capturado durante la admisión de urgencia.",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/Procedencia"
        }
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "short" : "Tipo de egreso de la atención de urgencia",
        "definition" : "Corresponde a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia.",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/tipo-egreso"
        }
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.extension:IndicacionHospitalizacion",
        "path" : "Encounter.hospitalization.dischargeDisposition.extension",
        "sliceName" : "IndicacionHospitalizacion",
        "short" : "Indicación de hospitalización",
        "definition" : "Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionHospitalizacion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.extension:IndicacionAlta",
        "path" : "Encounter.hospitalization.dischargeDisposition.extension",
        "sliceName" : "IndicacionAlta",
        "short" : "Indicación de alta",
        "definition" : "Extensión que registra la indicación de alta en el contexto de un encuentro de atención de urgencia.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionAlta"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.extension:IndicacionDerivacion",
        "path" : "Encounter.hospitalization.dischargeDisposition.extension",
        "sliceName" : "IndicacionDerivacion",
        "short" : "Indicación de derivación a otro centro asistencial",
        "definition" : "Extensión que registra la indicación de derivación a otro centro asistencial en el contexto de un encuentro de atención de urgencia.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionDerivacion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.extension:Abandono",
        "path" : "Encounter.hospitalization.dischargeDisposition.extension",
        "sliceName" : "Abandono",
        "short" : "Tipo de abandono",
        "definition" : "Usuarios que, habiendo iniciado el proceso de atención de urgencia, y habiéndose generado un DAU, no terminaron el proceso, en cualquiera de sus etapas.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Abandono"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.extension:Fallecido",
        "path" : "Encounter.hospitalization.dischargeDisposition.extension",
        "sliceName" : "Fallecido",
        "short" : "Fallecido",
        "definition" : "Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Fallecido"
            ]
          }
        ],
        "mustSupport" : true
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
      }
    ]
  }
}

```
