# Encounter Atender LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter Atender LE**

## Resource Profile: Encounter Atender LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EncounterAtenderLE |

 
Encounter Atender LE recurso que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico. 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md)
* Refer to this Profile: [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md), [MedicationStatement LE](StructureDefinition-MedicationStatementLE.md), [Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md), [Observation Notas Clinicas LE](StructureDefinition-ObservationNotasClinicasLE.md)...Show 3 more,[Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md),[ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)and[Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)
* Examples for this Profile: [Encounter/23b7f034-a998-44d7-9be4-0281be8222c0](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/EncounterAtenderLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterAtenderLE.csv), [Excel](StructureDefinition-EncounterAtenderLE.xlsx), [Schematron](StructureDefinition-EncounterAtenderLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterAtenderLE",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE",
  "version" : "0.1.2-ballot",
  "name" : "EncounterAtenderLE",
  "title" : "Encounter Atender LE",
  "status" : "draft",
  "date" : "2025-12-10T09:54:02-03:00",
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
  "description" : "Encounter Atender LE recurso que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico.",
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
        "id" : "Encounter.id",
        "path" : "Encounter.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Id del registro de atención o encuentro del sistema clínico de origen",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "short" : "Valor de registro",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Estado actual del encuentro",
        "patternCode" : "finished"
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Modalidad de Atención",
        "patternCoding" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo",
          "code" : "1",
          "display" : "Presencial"
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSModalidadAtencionCodigo"
        }
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "Tipo de consulta",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSTipoConsulta"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "Referencia al paciente que fue atendido en APS",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.basedOn",
        "path" : "Encounter.basedOn",
        "short" : "Referencia a ServiceRequest que originó la atención",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "short" : "Fechas de comienzo y término del encuentro atención de especialidad. El formato queda consignado como YYYY-MM-DDTHH:MMZ",
        "min" : 1
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "Fecha Comienzo del encuentro atención de especialidad",
        "min" : 1
      },
      {
        "id" : "Encounter.period.end",
        "path" : "Encounter.period.end",
        "short" : "Fecha de término del encuentro atención de especialidad"
      },
      {
        "id" : "Encounter.diagnosis",
        "path" : "Encounter.diagnosis",
        "short" : "Lista de diagnósticos relevantes a este encuentro médico",
        "min" : 1
      },
      {
        "id" : "Encounter.diagnosis.condition",
        "path" : "Encounter.diagnosis.condition",
        "short" : "Referencia al diagnóstico, relevante para este encuentro médico",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
