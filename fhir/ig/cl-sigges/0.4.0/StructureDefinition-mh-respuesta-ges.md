# MessageHeader — Respuesta SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MessageHeader — Respuesta SIGGES**

## Resource Profile: MessageHeader — Respuesta SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-respuesta-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:MensajeRespuestaGES |

 
Respuesta de SIGGES. response.code indica el resultado; focus devuelve el caso con su número SIGGES; details apunta a un OperationOutcome con advertencias o errores. 

**Usages:**

* This Perfil is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-mh-respuesta-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mh-respuesta-ges.csv), [Excel](StructureDefinition-mh-respuesta-ges.xlsx), [Schematron](StructureDefinition-mh-respuesta-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mh-respuesta-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-respuesta-ges",
  "version" : "0.4.0",
  "name" : "MensajeRespuestaGES",
  "title" : "MessageHeader — Respuesta SIGGES",
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
  "description" : "Respuesta de SIGGES. response.code indica el resultado; focus devuelve el caso con su número SIGGES; details apunta a un OperationOutcome con advertencias o errores.",
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
      "path" : "MessageHeader",
      "constraint" : [{
        "key" : "ges-resp-1",
        "severity" : "error",
        "human" : "La respuesta debe traer response.identifier (id del MessageHeader recibido) y response.code",
        "expression" : "response.identifier.exists() and response.code.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-respuesta-ges"
      }]
    },
    {
      "id" : "MessageHeader.event[x]",
      "path" : "MessageHeader.event[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-tipo-documento-sigges"
      }
    },
    {
      "id" : "MessageHeader.response",
      "path" : "MessageHeader.response",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.response.details",
      "path" : "MessageHeader.response.details",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.focus",
      "path" : "MessageHeader.focus",
      "mustSupport" : true
    }]
  }
}

```
