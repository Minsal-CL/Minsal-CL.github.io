# Encuentro de urgencia - estado en el alta - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Encuentro de urgencia - estado en el alta**

## Resource Profile: Encuentro de urgencia - estado en el alta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-alta | *Version*:0.2.0 |
| Draft as of 2026-10-08 | *Computable Name*:EncuentroUrgenciaAlta |

 
Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. Debe enviarse completo, repitiendo todos los datos de la admisión. 

**Usages:**

* Use this Profile: [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-encuentro-urgencia-alta.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encuentro-urgencia-alta.csv), [Excel](StructureDefinition-encuentro-urgencia-alta.xlsx), [Schematron](StructureDefinition-encuentro-urgencia-alta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encuentro-urgencia-alta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-alta",
  "version" : "0.2.0",
  "name" : "EncuentroUrgenciaAlta",
  "title" : "Encuentro de urgencia - estado en el alta",
  "status" : "draft",
  "date" : "2026-10-08T00:02:21-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. Debe enviarse completo, repitiendo todos los datos de la admisión.",
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
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "urg-enc-8",
        "severity" : "error",
        "human" : "Si el destino es hospitalización (01), traslado (02) o derivación (04), se debe informar el establecimiento de destino (hospitalization.destination).",
        "expression" : "hospitalization.dischargeDisposition.coding.where(system = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/CodeSystem/destino-alta' and (code = '01' or code = '02' or code = '04')).exists() implies hospitalization.destination.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia-alta"
      }]
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "patternCode" : "finished"
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "Fecha y hora en que el paciente sale físicamente de urgencia",
      "definition" : "Fecha y hora en que el paciente deja la unidad de urgencia. Si se hospitaliza, es la hora en que sale de urgencia hacia la cama, no la hora en que se indicó la hospitalización: mientras espera cama sigue ocupando un box de urgencia.",
      "min" : 1
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "min" : 1
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
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
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-destino-alta"
      }
    }]
  }
}

```
