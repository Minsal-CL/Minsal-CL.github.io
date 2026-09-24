# Encuentro de urgencia - estado en el abandono - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Encuentro de urgencia - estado en el abandono**

## Resource Profile: Encuentro de urgencia - estado en el abandono 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-abandono | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:EncuentroUrgenciaAbandono |

 
Reglas del episodio de urgencia cuando el paciente se retira voluntariamente sin alta médica (fuga o NEA): cerrado (finished), con la fecha y hora en que se constató el abandono y el tipo de abandono. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. 

**Usages:**

* Use this Profile: [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-encuentro-urgencia-abandono.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encuentro-urgencia-abandono.csv), [Excel](StructureDefinition-encuentro-urgencia-abandono.xlsx), [Schematron](StructureDefinition-encuentro-urgencia-abandono.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encuentro-urgencia-abandono",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-abandono",
  "version" : "0.2.0",
  "name" : "EncuentroUrgenciaAbandono",
  "title" : "Encuentro de urgencia - estado en el abandono",
  "status" : "draft",
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Reglas del episodio de urgencia cuando el paciente se retira voluntariamente sin alta médica (fuga o NEA): cerrado (finished), con la fecha y hora en que se constató el abandono y el tipo de abandono. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "patternCode" : "finished"
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "Fecha y hora en que se constata el abandono",
      "min" : 1
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "min" : 1
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-tipo-abandono"
      }
    }]
  }
}

```
