# SIC — Solicitud de interconsulta - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SIC — Solicitud de interconsulta**

## Resource Profile: SIC — Solicitud de interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/sic-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:SolicitudInterconsultaGES |

 
Derivación con sospecha GES. El diagnóstico, su fundamento y la marca confirma/sospecha/descarta viajan en el DiagnosticoGES referenciado en reasonReference. 

**Usages:**

* Examples for this Perfil: [ServiceRequest/sic-a](ServiceRequest-sic-a.md) and [ServiceRequest/sic-d](ServiceRequest-sic-d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-sic-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sic-ges.csv), [Excel](StructureDefinition-sic-ges.xlsx), [Schematron](StructureDefinition-sic-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sic-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/sic-ges",
  "version" : "0.4.0",
  "name" : "SolicitudInterconsultaGES",
  "title" : "SIC — Solicitud de interconsulta",
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
  "description" : "Derivación con sospecha GES. El diagnóstico, su fundamento y la marca confirma/sospecha/descarta viajan en el DiagnosticoGES referenciado en reasonReference.",
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.extension:caso",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Folio del documento en el sistema de origen",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.identifier:folio",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "folio",
      "short" : "folioDocumentoHospital — clave de idempotencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier:folio.system",
      "path" : "ServiceRequest.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento"
    },
    {
      "id" : "ServiceRequest.identifier:folio.value",
      "path" : "ServiceRequest.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier:folio.assigner",
      "path" : "ServiceRequest.identifier.assigner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "patternCode" : "active"
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "order"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category:derivadaPara",
      "path" : "ServiceRequest.category",
      "sliceName" : "derivadaPara",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-derivada-para-sic"
      }
    },
    {
      "id" : "ServiceRequest.category:derivadaPara.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:derivadaPara.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges"
    },
    {
      "id" : "ServiceRequest.category:derivadaPara.text",
      "path" : "ServiceRequest.category.text",
      "short" : "otraDerivadaPara (cuando derivadaPara = Otro)"
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "fechaRealizacion (opcional)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "short" : "especialidadDestino",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-especialidad-sigges"
      }
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "deisEstablecimientoDestino",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges"]
      }],
      "mustSupport" : true
    }]
  }
}

```
