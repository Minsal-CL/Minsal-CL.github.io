# Diagnóstico GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnóstico GES**

## Resource Profile: Diagnóstico GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:DiagnosticoGES |

 
Afirmación diagnóstica sobre el problema de salud GES. verificationStatus reemplaza confirmaSospechaDescarta (provisional = sospecha, confirmed = confirma, refuted = descarta). Es el motivo de la SIC y la base de IPD y HD. 

**Usages:**

* Derived from this Perfil: [HD — Hoja diaria APS](StructureDefinition-hoja-diaria-ges.md) and [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md)
* Refer to this Perfil: [Caso GES](StructureDefinition-caso-ges.md) and [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)
* Examples for this Perfil: [Condition/cond-a-sospecha](Condition-cond-a-sospecha.md) and [Condition/cond-d-sospecha](Condition-cond-d-sospecha.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-diagnostico-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diagnostico-ges.csv), [Excel](StructureDefinition-diagnostico-ges.xlsx), [Schematron](StructureDefinition-diagnostico-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diagnostico-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges",
  "version" : "0.4.0",
  "name" : "DiagnosticoGES",
  "title" : "Diagnóstico GES",
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
  "description" : "Afirmación diagnóstica sobre el problema de salud GES. verificationStatus reemplaza confirmaSospechaDescarta (provisional = sospecha, confirmed = confirma, refuted = descarta). Es el motivo de la SIC y la base de IPD y HD.",
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
  "type" : "Condition",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.extension:caso",
      "path" : "Condition.extension",
      "sliceName" : "caso",
      "short" : "Caso GES al que pertenece el documento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:indicaciones",
      "path" : "Condition.extension",
      "sliceName" : "indicaciones",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Folio del documento en el sistema de origen"
    },
    {
      "id" : "Condition.identifier:folio",
      "path" : "Condition.identifier",
      "sliceName" : "folio",
      "short" : "folioDocumentoHospital — clave de idempotencia",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier:folio.system",
      "path" : "Condition.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento"
    },
    {
      "id" : "Condition.identifier:folio.value",
      "path" : "Condition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier:folio.assigner",
      "path" : "Condition.identifier.assigner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "confirmaSospechaDescarta: provisional | confirmed | refuted",
      "min" : 1
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Problema de salud GES; se pueden agregar codings CIE-10 o SNOMED CT",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:problemaSalud",
      "path" : "Condition.code.coding",
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
      "id" : "Condition.code.coding:problemaSalud.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges"
    },
    {
      "id" : "Condition.code.coding:problemaSalud.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:cie10",
      "path" : "Condition.code.coding",
      "sliceName" : "cie10",
      "short" : "Diagnóstico CIE-10 (opcional; ejemplo de crecimiento sin romper nada)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:cie10.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/sid/icd-10"
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "diagnostico: texto libre del diagnóstico o hipótesis",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }]
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "fechaInicioDocumento + horaInicioDocumento",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges"]
      }]
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "fundamentoDiag: fundamento diagnóstico",
      "mustSupport" : true
    }]
  }
}

```
