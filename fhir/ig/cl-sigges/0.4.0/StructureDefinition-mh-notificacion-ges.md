# MessageHeader — Notificación GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MessageHeader — Notificación GES**

## Resource Profile: MessageHeader — Notificación GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:MensajeNotificacionGES |

 
Cabecera del mensaje. eventCoding indica qué documento se notifica; sender es el establecimiento (deisOrigen) y source el sistema (nombreSistemaOrigen). 

**Usages:**

* This Perfil is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-mh-notificacion-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mh-notificacion-ges.csv), [Excel](StructureDefinition-mh-notificacion-ges.xlsx), [Schematron](StructureDefinition-mh-notificacion-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mh-notificacion-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges",
  "version" : "0.4.0",
  "name" : "MensajeNotificacionGES",
  "title" : "MessageHeader — Notificación GES",
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
  "description" : "Cabecera del mensaje. eventCoding indica qué documento se notifica; sender es el establecimiento (deisOrigen) y source el sistema (nombreSistemaOrigen).",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MessageHeader",
      "path" : "MessageHeader"
    },
    {
      "id" : "MessageHeader.event[x]",
      "path" : "MessageHeader.event[x]",
      "short" : "SIC | IPD | OA | PO | CC | EXGO | HD",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-tipo-documento-sigges"
      }
    },
    {
      "id" : "MessageHeader.destination",
      "path" : "MessageHeader.destination",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.destination.name",
      "path" : "MessageHeader.destination.name",
      "min" : 1
    },
    {
      "id" : "MessageHeader.sender",
      "path" : "MessageHeader.sender",
      "short" : "deisOrigen + tipoDeisOrigen",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.author",
      "path" : "MessageHeader.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.source.name",
      "path" : "MessageHeader.source.name",
      "short" : "nombreSistemaOrigen",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.source.software",
      "path" : "MessageHeader.source.software",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.source.version",
      "path" : "MessageHeader.source.version",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.response",
      "path" : "MessageHeader.response",
      "max" : "0"
    },
    {
      "id" : "MessageHeader.focus",
      "path" : "MessageHeader.focus",
      "short" : "focus[0] = documento notificado; focus[1] = caso GES",
      "min" : 2,
      "mustSupport" : true
    }]
  }
}

```
