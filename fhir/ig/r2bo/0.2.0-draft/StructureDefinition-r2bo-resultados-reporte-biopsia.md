# Perfil de Origen de Todos Los Resultados - Repositorio de Reportes de Biopsias Oncológicas v0.2.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Origen de Todos Los Resultados**

## Resource Profile: Perfil de Origen de Todos Los Resultados ( Abstract Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia | *Version*:0.2.0-draft | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:ResultadosReporteBiopsia |

 
Perfil para todas las observaciones de los resultados de biopsias 

**Usages:**

* Derived from this Profile: [Perfil de Grupo Estadificación TNM](StructureDefinition-r2bo-estadificacion-tnm.md), [Perfil de Observación Macroscópica](StructureDefinition-r2bo-observacion-macroscopica.md) and [Perfil de Observación Microscópica](StructureDefinition-r2bo-observacion-microscopica.md)
* Refer to this Profile: [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/StructureDefinition-r2bo-resultados-reporte-biopsia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-resultados-reporte-biopsia.csv), [Excel](StructureDefinition-r2bo-resultados-reporte-biopsia.xlsx), [Schematron](StructureDefinition-r2bo-resultados-reporte-biopsia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-resultados-reporte-biopsia",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia",
  "version" : "0.2.0-draft",
  "name" : "ResultadosReporteBiopsia",
  "title" : "Perfil de Origen de Todos Los Resultados",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-24T12:17:13-04:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Perfil para todas las observaciones de los resultados de biopsias",
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
  "abstract" : true,
  "type" : "Observation",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "short" : "Solicitud por la cual se realizo la prueba",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-observaciones-biopsia-VS"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
        "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
        "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "boolean"
      },
      {
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"]
      }]
    }]
  }
}

```
