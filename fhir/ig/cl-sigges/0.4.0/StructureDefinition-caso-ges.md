# Caso GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso GES**

## Resource Profile: Caso GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CasoGES |

 
El caso GES: paciente + problema de salud + rama. Es el hilo que une todos los documentos. Lo abre la primera notificación (SIC, IPD o HD) y lo cierra un CC. 

**Usages:**

* Refer to this Perfil: [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md), [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md), [Caso GES](StructureDefinition-ext-caso-ges.md) and [Garantía de oportunidad](StructureDefinition-garantia-oportunidad-ges.md)
* Examples for this Perfil: [EpisodeOfCare/8812345](EpisodeOfCare-8812345.md), [EpisodeOfCare/caso-a](EpisodeOfCare-caso-a.md), [EpisodeOfCare/caso-b](EpisodeOfCare-caso-b.md), [EpisodeOfCare/caso-c](EpisodeOfCare-caso-c.md) and [EpisodeOfCare/caso-d](EpisodeOfCare-caso-d.md)
* CapabilityStatements using this Perfil: [Emisor — sistema del establecimiento](CapabilityStatement-CSEmisorEstablecimiento.md) and [Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)](CapabilityStatement-CSReceptorSIGGES.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-caso-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-caso-ges.csv), [Excel](StructureDefinition-caso-ges.xlsx), [Schematron](StructureDefinition-caso-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "caso-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges",
  "version" : "0.4.0",
  "name" : "CasoGES",
  "title" : "Caso GES",
  "status" : "draft",
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "El caso GES: paciente + problema de salud + rama. Es el hilo que une todos los documentos. Lo abre la primera notificación (SIC, IPD o HD) y lo cierra un CC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare",
      "constraint" : [{
        "key" : "ges-caso-id",
        "severity" : "error",
        "human" : "El caso debe traer al menos un identificador: el de SIGGES (si ya fue asignado) o el local del establecimiento",
        "expression" : "identifier.where(system='https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges' or system='https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local').exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"
      }]
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:casoSIGGES",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "casoSIGGES",
      "short" : "Número de caso asignado por SIGGES (llega en la respuesta)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:casoSIGGES.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges"
    },
    {
      "id" : "EpisodeOfCare.identifier:casoSIGGES.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.identifier:casoLocal",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "casoLocal",
      "short" : "Identificador del caso en el establecimiento (mientras no exista el de SIGGES)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:casoLocal.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local"
    },
    {
      "id" : "EpisodeOfCare.identifier:casoLocal.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.identifier:casoLocal.assigner",
      "path" : "EpisodeOfCare.identifier.assigner",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.status",
      "path" : "EpisodeOfCare.status",
      "short" : "active mientras el caso está abierto; finished al cierre",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.type",
      "path" : "EpisodeOfCare.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.type:problemaSalud",
      "path" : "EpisodeOfCare.type",
      "sliceName" : "problemaSalud",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-problema-salud-ges"
      }
    },
    {
      "id" : "EpisodeOfCare.type:problemaSalud.coding",
      "path" : "EpisodeOfCare.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.type:problemaSalud.coding.system",
      "path" : "EpisodeOfCare.type.coding.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges"
    },
    {
      "id" : "EpisodeOfCare.type:problemaSalud.coding.code",
      "path" : "EpisodeOfCare.type.coding.code",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.type:rama",
      "path" : "EpisodeOfCare.type",
      "sliceName" : "rama",
      "short" : "Rama del problema de salud (obligatoria: SIGGES la exige y las garantías dependen de ella)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-rama-problema-salud-ges"
      }
    },
    {
      "id" : "EpisodeOfCare.type:rama.coding",
      "path" : "EpisodeOfCare.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.type:rama.coding.system",
      "path" : "EpisodeOfCare.type.coding.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges"
    },
    {
      "id" : "EpisodeOfCare.type:rama.coding.code",
      "path" : "EpisodeOfCare.type.coding.code",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.type:programaGES",
      "path" : "EpisodeOfCare.type",
      "sliceName" : "programaGES",
      "short" : "Programa GES en SNOMED CT (extensión chilena), opcional",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-programa-ges-snomed"
      }
    },
    {
      "id" : "EpisodeOfCare.type:programaGES.coding",
      "path" : "EpisodeOfCare.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.type:programaGES.coding.system",
      "path" : "EpisodeOfCare.type.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "EpisodeOfCare.type:programaGES.coding.code",
      "path" : "EpisodeOfCare.type.coding.code",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.diagnosis",
      "path" : "EpisodeOfCare.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition",
      "path" : "EpisodeOfCare.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges"]
      }]
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }]
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period.start",
      "path" : "EpisodeOfCare.period.start",
      "min" : 1
    }]
  }
}

```
