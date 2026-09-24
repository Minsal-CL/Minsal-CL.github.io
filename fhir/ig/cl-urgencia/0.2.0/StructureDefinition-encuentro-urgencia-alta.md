# Encuentro de urgencia - estado en el alta - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encuentro de urgencia - estado en el alta**

## Resource Profile: Encuentro de urgencia - estado en el alta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-alta | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:EncuentroUrgenciaAlta |

 
Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. 

**Usages:**

* Use this Profile: [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-encuentro-urgencia-alta.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encuentro-urgencia-alta.csv), [Excel](StructureDefinition-encuentro-urgencia-alta.xlsx), [Schematron](StructureDefinition-encuentro-urgencia-alta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encuentro-urgencia-alta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-alta",
  "version" : "0.2.0",
  "name" : "EncuentroUrgenciaAlta",
  "title" : "Encuentro de urgencia - estado en el alta",
  "status" : "draft",
  "date" : "2026-09-23T16:36:45-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado.",
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
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia",
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
      "min" : 1
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
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
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/vs-destino-alta"
      }
    }]
  }
}

```
