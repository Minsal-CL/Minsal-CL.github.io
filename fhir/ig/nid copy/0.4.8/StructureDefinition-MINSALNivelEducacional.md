# MINSAL Nivel Educacional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Nivel Educacional**

## Resource Profile: MINSAL Nivel Educacional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALNivelEducacional | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:MINSALNivelEducacional |

 
Nivel Educacional como dato estadistico para el ingreso de un paciente en el sistema. 

**Usages:**

* Examples for this Profile: [Observation/EjemploNivelEducacional](Observation-EjemploNivelEducacional.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALNivelEducacional)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALNivelEducacional.csv), [Excel](StructureDefinition-MINSALNivelEducacional.xlsx), [Schematron](StructureDefinition-MINSALNivelEducacional.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALNivelEducacional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALNivelEducacional",
  "version" : "0.4.8",
  "name" : "MINSALNivelEducacional",
  "title" : "MINSAL Nivel Educacional",
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
  "description" : "Nivel Educacional como dato estadistico para el ingreso de un paciente en el sistema.",
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
        "path" : "Observation"
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
        "id" : "Observation.category.coding.system",
        "path" : "Observation.category.coding.system",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding.display",
        "path" : "Observation.category.coding.display",
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
          "code" : "01",
          "display" : "Nivel Educacional"
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
        "short" : "Información sobre el último nivel y curso aprobado",
        "definition" : "Información sobre el último nivel y curso aprobado",
        "min" : 2,
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoCursoAprobado",
        "path" : "Observation.component",
        "sliceName" : "UltimoCursoAprobado",
        "short" : "Último curso aprobado",
        "definition" : "Último curso aprobado",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoCursoAprobado.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc",
              "code" : "01",
              "display" : "Último curso aprobado"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSNivelEducacionalDesc"
        }
      },
      {
        "id" : "Observation.component:UltimoCursoAprobado.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado",
        "path" : "Observation.component",
        "sliceName" : "UltimoNivelAprobado",
        "short" : "Último nivel aprobado",
        "definition" : "Último nivel aprobado",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.code",
        "path" : "Observation.component.code",
        "short" : "Código de identificación del último nivel aprobado",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSNivelEducacionalDesc",
              "code" : "02",
              "display" : "Último nivel aprobado"
            }
          ]
        },
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSNivelEducacionalDesc"
        }
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Valor del componenete",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSUNivelAprob"
        }
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.value[x]:valueCodeableConcept.coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.value[x]:valueCodeableConcept.coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:UltimoNivelAprobado.value[x]:valueCodeableConcept.coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
