# MINSAL Situacion Discapacidad - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Situacion Discapacidad**

## Resource Profile: MINSAL Situacion Discapacidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:MINSALSituacionDiscapacidad |

 
Describe de manera simplificada la situacion de discapacidad de un paciente. 

**Usages:**

* Examples for this Profile: [Observation/EjemploSituacionDiscapacidad](Observation-EjemploSituacionDiscapacidad.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALSituacionDiscapacidad)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALSituacionDiscapacidad.csv), [Excel](StructureDefinition-MINSALSituacionDiscapacidad.xlsx), [Schematron](StructureDefinition-MINSALSituacionDiscapacidad.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALSituacionDiscapacidad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad",
  "version" : "0.4.8",
  "name" : "MINSALSituacionDiscapacidad",
  "title" : "MINSAL Situacion Discapacidad",
  "status" : "draft",
  "date" : "2025-11-28T16:21:53-03:00",
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
    }
  ],
  "description" : "Describe de manera simplificada la situacion de discapacidad de un paciente.",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "mpi-obs-dis-01",
            "severity" : "error",
            "human" : "Si valueBoolean es verdadero entonces component[ValoracionDiscapacidad] y component[OrigenDiscapacidad] deben existir",
            "expression" : "value.ofType(boolean).where(true) implies component[0].exists() and component[1].exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad"
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding",
        "path" : "Observation.category.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTipoObservacion"
        }
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoObservacion",
          "code" : "03",
          "display" : "Situacion Discapacidad"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Define si tiene o no Discapacidad",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "description" : "Slice para diferenciar ultimo curso aprobado de ultimo nivel aprobado",
          "ordered" : true,
          "rules" : "closed"
        },
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad",
        "path" : "Observation.component",
        "sliceName" : "OrigenDiscapacidad",
        "short" : "Define el origen de la discapacidad",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad",
              "code" : "01",
              "display" : "Origen de la discapacidad"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSComponenteDiscapacidad"
        }
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSOrigenDiscapacidad"
        }
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:OrigenDiscapacidad.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad",
        "path" : "Observation.component",
        "sliceName" : "ValoracionDiscapacidad",
        "short" : "Define la valoracion del desempeño en la discapacidad",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSComponenteDiscapacidad",
              "code" : "02",
              "display" : "Evaluación Valoración de Desempeño en Comunidad (IVADEC-DIF)"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSComponenteDiscapacidad"
        }
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSValoracionDesempeno"
        }
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ValoracionDiscapacidad.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      }
    ]
  }
}

```
