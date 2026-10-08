# Profesional GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional GES**

## Resource Profile: Profesional GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:PrestadorGES |

 
Profesional que firma el documento (runProfesional + dvProfesional). 

**Usages:**

* Refer to this Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)
* Examples for this Perfil: [Practitioner/pr-fuentes](Practitioner-pr-fuentes.md), [Practitioner/pr-paredes](Practitioner-pr-paredes.md), [Practitioner/pr-rojas](Practitioner-pr-rojas.md), [Practitioner/pr-soto](Practitioner-pr-soto.md) and [Practitioner/pr-vergara](Practitioner-pr-vergara.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-prestador-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prestador-ges.csv), [Excel](StructureDefinition-prestador-ges.xlsx), [Schematron](StructureDefinition-prestador-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prestador-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges",
  "version" : "0.4.0",
  "name" : "PrestadorGES",
  "title" : "Profesional GES",
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
  "description" : "Profesional que firma el documento (runProfesional + dvProfesional).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:run",
      "path" : "Practitioner.identifier",
      "sliceName" : "run",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:run.use",
      "path" : "Practitioner.identifier.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:run.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run"
    },
    {
      "id" : "Practitioner.identifier:run.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "constraint" : [{
        "key" : "ges-run",
        "severity" : "error",
        "human" : "RUN sin puntos, con guión y dígito verificador (ej. 12345678-5)",
        "expression" : "matches('^[1-9][0-9]{0,7}-[0-9Kk]$')",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"
      }]
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
