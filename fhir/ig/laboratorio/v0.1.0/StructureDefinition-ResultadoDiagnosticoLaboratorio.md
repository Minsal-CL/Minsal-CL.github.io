# Resultado diagnóstico de laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado diagnóstico de laboratorio**

## Resource Profile: Resultado diagnóstico de laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/ResultadoDiagnosticoLaboratorio | *Version*:0.5.0 |
| Draft as of 2026-09-21 | *Computable Name*:ResultadoDiagnosticoLaboratorio |

 
Perfil para representar el resultado de una solicitud de laboratorio y el informe PDF recibido desde un mensaje HL7 v2 ORU^R01. 

**Usages:**

* Use this Profile: [Bundle de Resultado de Laboratorio MINSAL](StructureDefinition-MinsalBundleResultadoLaboratorio.md)
* Refer to this Profile: [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)
* Examples for this Profile: [DiagnosticReport/ResultadoIndependienteEjemplo](DiagnosticReport-ResultadoIndependienteEjemplo.md) and [DiagnosticReport/ResultadoMultipleEjemplo](DiagnosticReport-ResultadoMultipleEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-ResultadoDiagnosticoLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ResultadoDiagnosticoLaboratorio.csv), [Excel](StructureDefinition-ResultadoDiagnosticoLaboratorio.xlsx), [Schematron](StructureDefinition-ResultadoDiagnosticoLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ResultadoDiagnosticoLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/ResultadoDiagnosticoLaboratorio",
  "version" : "0.5.0",
  "name" : "ResultadoDiagnosticoLaboratorio",
  "title" : "Resultado diagnóstico de laboratorio",
  "status" : "draft",
  "date" : "2026-09-21T17:12:23-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para representar el resultado de una solicitud de laboratorio y el informe PDF recibido desde un mensaje HL7 v2 ORU^R01.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "comment" : "En esta fase, el laboratorio puede emitir un resultado sin una solicitud (`ServiceRequest`) previa registrada en el Bus, cuando el examen se originó y procesó completamente en el sistema del propio laboratorio (ver Casos de uso, Alcance por fases). Cuando exista una solicitud registrada, se recomienda referenciarla mediante `basedOn`.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding",
      "path" : "DiagnosticReport.code.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.text",
      "path" : "DiagnosticReport.code.text",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "comment" : "Referencia al resultado atómico por analito (Caso de uso 3), cuando el establecimiento lo informa además del PDF. Cada instancia de MinsalObservacionLaboratorio referencia a su vez, mediante basedOn, la ServiceRequest específica de su prestación.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "min" : 1,
      "patternCode" : "application/pdf",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.data",
      "path" : "DiagnosticReport.presentedForm.data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.title",
      "path" : "DiagnosticReport.presentedForm.title",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.creation",
      "path" : "DiagnosticReport.presentedForm.creation",
      "mustSupport" : true
    }]
  }
}

```
