# MINSAL Agrupación por marcas - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Agrupación por marcas**

## Resource Profile: MINSAL Agrupación por marcas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAgrupacionPorMarcas | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:MINSALAgrupacionPorMarcas |

 
Agrupación por marcas 

**Usages:**

* Examples for this Profile: [Group/AgrupacionMarcas](Group-AgrupacionMarcas.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALAgrupacionPorMarcas)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALAgrupacionPorMarcas.csv), [Excel](StructureDefinition-MINSALAgrupacionPorMarcas.xlsx), [Schematron](StructureDefinition-MINSALAgrupacionPorMarcas.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALAgrupacionPorMarcas",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAgrupacionPorMarcas",
  "version" : "0.4.8",
  "name" : "MINSALAgrupacionPorMarcas",
  "title" : "MINSAL Agrupación por marcas",
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
  "description" : "Agrupación por marcas",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Group",
        "path" : "Group"
      },
      {
        "id" : "Group.type",
        "path" : "Group.type",
        "patternCode" : "person",
        "mustSupport" : true
      },
      {
        "id" : "Group.actual",
        "path" : "Group.actual",
        "patternBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Group.code",
        "path" : "Group.code",
        "short" : "Define el tipo de grupo",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSGrupoMarcas"
        }
      },
      {
        "id" : "Group.member",
        "path" : "Group.member",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity",
        "path" : "Group.member.entity",
        "short" : "Referencia a los pacientes miembros del grupo",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
