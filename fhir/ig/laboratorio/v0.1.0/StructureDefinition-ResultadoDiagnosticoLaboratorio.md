# Resultado diagnóstico de laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado diagnóstico de laboratorio**

## Resource Profile: Resultado diagnóstico de laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/ResultadoDiagnosticoLaboratorio | *Version*:0.2.1 |
| Draft as of 2026-09-10 | *Computable Name*:ResultadoDiagnosticoLaboratorio |

 
Perfil para representar el resultado de una solicitud de laboratorio y el informe PDF recibido desde un mensaje HL7 v2 ORU^R01. 

**Usages:**

* Refer to this Profile: [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)

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
  "version" : "0.2.1",
  "name" : "ResultadoDiagnosticoLaboratorio",
  "title" : "Resultado diagnóstico de laboratorio",
  "status" : "draft",
  "date" : "2026-09-10T11:13:46-03:00",
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
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "min" : 1,
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
