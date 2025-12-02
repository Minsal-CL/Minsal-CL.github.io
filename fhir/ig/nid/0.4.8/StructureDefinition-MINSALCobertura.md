# MINSAL Cobertura de Salud del Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Cobertura de Salud del Paciente**

## Resource Profile: MINSAL Cobertura de Salud del Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:MINSALCobertura |

 
Recurso para almacenar la cobertura del paciente 

**Usages:**

* Examples for this Profile: [Coverage/CoberturaFONASAEjemplo](Coverage-CoberturaFONASAEjemplo.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALCobertura)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALCobertura.csv), [Excel](StructureDefinition-MINSALCobertura.xlsx), [Schematron](StructureDefinition-MINSALCobertura.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALCobertura",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura",
  "version" : "0.4.8",
  "name" : "MINSALCobertura",
  "title" : "MINSAL Cobertura de Salud del Paciente",
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
  "description" : "Recurso para almacenar la cobertura del paciente",
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
      "identity" : "cdanetv4",
      "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
      "name" : "Canadian Dental Association eclaims standard"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "cpha3pharm",
      "uri" : "http://www.pharmacists.ca/",
      "name" : "Canadian Pharmacy Associaiton eclaims standard"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Coverage",
        "path" : "Coverage",
        "constraint" : [
          {
            "key" : "cov-cls-01",
            "severity" : "error",
            "human" : "En caso de que el coverga.type es FONASA entonces debe inlcuir el Tramo de FONASA",
            "expression" : "type.coding.where(code = 1).exists() implies class.type.coding.where(code = 1).exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura"
          },
          {
            "key" : "cov-cls-02",
            "severity" : "error",
            "human" : "En caso de que el coverga.type es ISAPRE entonces debe inlcuir el Plan de ISAPRE",
            "expression" : "type.coding.where(code = 2).exists() implies class.type.coding.where(code = 2).exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura"
          }
        ]
      },
      {
        "id" : "Coverage.status",
        "path" : "Coverage.status",
        "definition" : "Estado del beneficiario del plan",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.type",
        "path" : "Coverage.type",
        "short" : "Tipo de seguro. (FONASA, ISAPRE u Otros)",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSPrevision"
        }
      },
      {
        "id" : "Coverage.policyHolder",
        "path" : "Coverage.policyHolder",
        "short" : "Propietario de la póliza",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.beneficiary",
        "path" : "Coverage.beneficiary",
        "short" : "Referencia al beneficiario del plan de salud",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.period",
        "path" : "Coverage.period",
        "short" : "Desde cuando es beneficiario. En caso de finalizar el contrato debe incluirse el \"end\".",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.payor",
        "path" : "Coverage.payor",
        "short" : "Entidad que paga el seguro. (FONASA, Alguna Isapre u otros)",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl|1.9.4"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class",
        "path" : "Coverage.class",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "description" : "Permite diferenciar las clases, entre los planes de isapre, los tramos de FONASA, leyes previsionales y otras leyes de priorización",
          "ordered" : false,
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:tramos",
        "path" : "Coverage.class",
        "sliceName" : "tramos",
        "short" : "Tramos de FONASA, este valor es obligatorio en caso de ser FONASA",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:tramos.type",
        "path" : "Coverage.class.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
              "code" : "1",
              "display" : "Tramos de FONASA"
            }
          ]
        },
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura"
        }
      },
      {
        "id" : "Coverage.class:tramos.value.extension",
        "path" : "Coverage.class.value.extension",
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
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Coverage.class:tramos.value.extension:valorClase",
        "path" : "Coverage.class.value.extension",
        "sliceName" : "valorClase",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:tramos.value.extension:valorClase.value[x]",
        "path" : "Coverage.class.value.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTramosFONASA"
        }
      },
      {
        "id" : "Coverage.class:plan",
        "path" : "Coverage.class",
        "sliceName" : "plan",
        "short" : "Nombre del plan de isapre",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:plan.type",
        "path" : "Coverage.class.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
              "code" : "2",
              "display" : "Plan de ISAPRE"
            }
          ]
        },
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura"
        }
      },
      {
        "id" : "Coverage.class:plan.value",
        "path" : "Coverage.class.value",
        "short" : "Nombre del plan de isapre.",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesPrev",
        "path" : "Coverage.class",
        "sliceName" : "leyesPrev",
        "short" : "Nombre de la ley previsional",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesPrev.type",
        "path" : "Coverage.class.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
              "code" : "3",
              "display" : "Otras Leyes Previsionales"
            }
          ]
        },
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura"
        }
      },
      {
        "id" : "Coverage.class:leyesPrev.value.extension",
        "path" : "Coverage.class.value.extension",
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
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Coverage.class:leyesPrev.value.extension:valorClase",
        "path" : "Coverage.class.value.extension",
        "sliceName" : "valorClase",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesPrev.value.extension:valorClase.value[x]",
        "path" : "Coverage.class.value.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSLeyPrevisionales"
        }
      },
      {
        "id" : "Coverage.class:leyesRep",
        "path" : "Coverage.class",
        "sliceName" : "leyesRep",
        "short" : "Nombre de la ley previsional",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesRep.type",
        "path" : "Coverage.class.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
              "code" : "4",
              "display" : "Leyes de Reparación"
            }
          ]
        },
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura"
        }
      },
      {
        "id" : "Coverage.class:leyesRep.value.extension",
        "path" : "Coverage.class.value.extension",
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
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Coverage.class:leyesRep.value.extension:valorClase",
        "path" : "Coverage.class.value.extension",
        "sliceName" : "valorClase",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesRep.value.extension:valorClase.value[x]",
        "path" : "Coverage.class.value.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSLeyReparacion"
        }
      },
      {
        "id" : "Coverage.class:leyesPrio",
        "path" : "Coverage.class",
        "sliceName" : "leyesPrio",
        "short" : "Nombre de la ley previsional",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesPrio.type",
        "path" : "Coverage.class.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
              "code" : "5",
              "display" : "Leyes de Priorización"
            }
          ]
        },
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSClasesDeCobertura"
        }
      },
      {
        "id" : "Coverage.class:leyesPrio.value.extension",
        "path" : "Coverage.class.value.extension",
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
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Coverage.class:leyesPrio.value.extension:valorClase",
        "path" : "Coverage.class.value.extension",
        "sliceName" : "valorClase",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.class:leyesPrio.value.extension:valorClase.value[x]",
        "path" : "Coverage.class.value.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSGrupoMarcas"
        }
      }
    ]
  }
}

```
