# PO — Prestación otorgada - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PO — Prestación otorgada**

## Resource Profile: PO — Prestación otorgada 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:PrestacionOtorgadaGES |

 
Prestación efectivamente realizada. basedOn apunta a la OA o SIC que la originó. 

**Usages:**

* Examples for this Perfil: [Procedure/po-a-cirugia](Procedure-po-a-cirugia.md), [Procedure/po-a-endoscopia](Procedure-po-a-endoscopia.md) and [Procedure/po-b-hemodialisis](Procedure-po-b-hemodialisis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-po-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-po-ges.csv), [Excel](StructureDefinition-po-ges.xlsx), [Schematron](StructureDefinition-po-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "po-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges",
  "version" : "0.4.0",
  "name" : "PrestacionOtorgadaGES",
  "title" : "PO — Prestación otorgada",
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
  "description" : "Prestación efectivamente realizada. basedOn apunta a la OA o SIC que la originó.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
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
      "id" : "Procedure.extension:caso",
      "path" : "Procedure.extension",
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
      "id" : "Procedure.extension:garantia",
      "path" : "Procedure.extension",
      "sliceName" : "garantia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
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
      "id" : "Procedure.identifier:folio",
      "path" : "Procedure.identifier",
      "sliceName" : "folio",
      "short" : "folioDocumentoHospital — clave de idempotencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier:folio.system",
      "path" : "Procedure.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento"
    },
    {
      "id" : "Procedure.identifier:folio.value",
      "path" : "Procedure.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier:folio.assigner",
      "path" : "Procedure.identifier.assigner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "patternCode" : "completed"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-prestacion-fonasa"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "start = fechaRealizacion (y fechaInicioDocumento); end = fechaFin",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x].start",
      "path" : "Procedure.performed[x].start",
      "min" : 1
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "short" : "Rol: establecimiento que otorga + especialidad (profesional opcional)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      }]
    }]
  }
}

```
