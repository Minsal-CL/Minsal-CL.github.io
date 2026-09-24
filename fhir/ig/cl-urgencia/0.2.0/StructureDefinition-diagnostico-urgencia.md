# Diagnóstico de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Diagnóstico de urgencia**

## Resource Profile: Diagnóstico de urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-urgencia | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:DiagnosticoUrgencia |

 
Hipótesis o diagnóstico de egreso de la atención de urgencia. Basado en CoreDiagnosticoCl de CL-Core. El tipo de diagnóstico del CMBD (hipótesis, confirmado, descartado) se expresa con `verificationStatus`. 

**Usages:**

* Use this Profile: [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md) and [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-diagnostico-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diagnostico-urgencia.csv), [Excel](StructureDefinition-diagnostico-urgencia.xlsx), [Schematron](StructureDefinition-diagnostico-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diagnostico-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-urgencia",
  "version" : "0.2.0",
  "name" : "DiagnosticoUrgencia",
  "title" : "Diagnóstico de urgencia",
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
  "description" : "Hipótesis o diagnóstico de egreso de la atención de urgencia. Basado en CoreDiagnosticoCl de CL-Core. El tipo de diagnóstico del CMBD (hipótesis, confirmado, descartado) se expresa con `verificationStatus`.",
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
      "path" : "Condition",
      "short" : "Hipótesis o diagnóstico de egreso de urgencia"
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
      "short" : "Diagnóstico GES"
    },
    {
      "id" : "Condition.extension:ges",
      "path" : "Condition.extension",
      "sliceName" : "ges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/diagnostico-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "Identificador del diagnóstico en el HIS/RCE (llave del PUT condicional)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier.system",
      "path" : "Condition.identifier.system",
      "short" : "Sistema de identificadores de diagnósticos del establecimiento",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier.value",
      "path" : "Condition.identifier.value",
      "short" : "Identificador del diagnóstico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "provisional (hipótesis) | confirmed (confirmado) | refuted (descartado)",
      "min" : 1
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Diagnóstico: CIE-10 preferente; texto libre si no está codificado",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-diagnostico-urgencia"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "short" : "Código CIE-10 o SNOMED CT",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Diagnóstico en texto, tal como lo registró el profesional",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "Episodio de urgencia",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Fecha y hora de registro del diagnóstico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "Profesional que registra el diagnóstico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      }],
      "mustSupport" : true
    }]
  }
}

```
