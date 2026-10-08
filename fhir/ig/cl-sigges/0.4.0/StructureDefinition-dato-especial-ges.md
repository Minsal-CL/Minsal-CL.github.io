# Dato específico por problema de salud - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dato específico por problema de salud**

## Resource Profile: Dato específico por problema de salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:DatoEspecialGES |

 
Mecanismo de crecimiento: los datos que sólo aplican a un problema de salud (VFG, cuarto turno, etapa…) se envían como Observation con un código de CSDatoEspecialGES, en vez de agregar campos nuevos a la API. 

**Usages:**

* Refer to this Perfil: [Diagnóstico GES](StructureDefinition-diagnostico-ges.md) and [OA — Orden de atención](StructureDefinition-oa-ges.md)
* Examples for this Perfil: [Observation/obs-b-cuarto-turno](Observation-obs-b-cuarto-turno.md), [Observation/obs-b-etapa](Observation-obs-b-etapa.md) and [Observation/obs-b-vfg](Observation-obs-b-vfg.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-dato-especial-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-dato-especial-ges.csv), [Excel](StructureDefinition-dato-especial-ges.xlsx), [Schematron](StructureDefinition-dato-especial-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dato-especial-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges",
  "version" : "0.4.0",
  "name" : "DatoEspecialGES",
  "title" : "Dato específico por problema de salud",
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
  "description" : "Mecanismo de crecimiento: los datos que sólo aplican a un problema de salud (VFG, cuarto turno, etapa…) se envían como Observation con un código de CSDatoEspecialGES, en vez de agregar campos nuevos a la API.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-dato-especial-ges"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
