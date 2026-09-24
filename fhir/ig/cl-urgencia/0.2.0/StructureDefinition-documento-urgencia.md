# Documento de la atención de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Documento de la atención de urgencia**

## Resource Profile: Documento de la atención de urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/documento-urgencia | *Version*:0.2.0 |
| Draft as of 2026-09-23 | *Computable Name*:DocumentoUrgencia |

 
Referencia al documento clínico de la atención (DAU o epicrisis de urgencia) en PDF. Permite a cualquier establecimiento de la red descubrir y descargar el detalle clínico completo. 

**Usages:**

* Use this Profile: [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md) and [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/StructureDefinition-documento-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-documento-urgencia.csv), [Excel](StructureDefinition-documento-urgencia.xlsx), [Schematron](StructureDefinition-documento-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "documento-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/documento-urgencia",
  "version" : "0.2.0",
  "name" : "DocumentoUrgencia",
  "title" : "Documento de la atención de urgencia",
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
  "description" : "Referencia al documento clínico de la atención (DAU o epicrisis de urgencia) en PDF. Permite a cualquier establecimiento de la red descubrir y descargar el detalle clínico completo.",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "Identificador único del documento (llave del PUT condicional)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.masterIdentifier.system",
      "path" : "DocumentReference.masterIdentifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.masterIdentifier.value",
      "path" : "DocumentReference.masterIdentifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "patternCode" : "current",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "59258-4"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
        "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "patternCode" : "application/pdf",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "URL donde el receptor puede obtener el PDF",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia"]
      }],
      "mustSupport" : true
    }]
  }
}

```
