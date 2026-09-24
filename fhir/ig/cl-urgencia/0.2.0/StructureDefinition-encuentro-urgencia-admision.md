# Encuentro de urgencia - estado en la admisión - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encuentro de urgencia - estado en la admisión**

## Resource Profile: Encuentro de urgencia - estado en la admisión 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-admision | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:EncuentroUrgenciaAdmision |

 
Reglas del episodio de urgencia al momento de la admisión: abierto (in-progress), sin fecha de término ni destino. No es un recurso distinto: es el mismo Encounter que después se actualiza con el alta o el abandono. 

**Usages:**

* Use this Profile: [Bundle de admisión de urgencia](StructureDefinition-bundle-admision-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-encuentro-urgencia-admision.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encuentro-urgencia-admision.csv), [Excel](StructureDefinition-encuentro-urgencia-admision.xlsx), [Schematron](StructureDefinition-encuentro-urgencia-admision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encuentro-urgencia-admision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-admision",
  "version" : "0.2.0",
  "name" : "EncuentroUrgenciaAdmision",
  "title" : "Encuentro de urgencia - estado en la admisión",
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
  "description" : "Reglas del episodio de urgencia al momento de la admisión: abierto (in-progress), sin fecha de término ni destino. No es un recurso distinto: es el mismo Encounter que después se actualiza con el alta o el abandono.",
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
      "patternCode" : "in-progress"
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "max" : "0"
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "max" : "0"
    }]
  }
}

```
