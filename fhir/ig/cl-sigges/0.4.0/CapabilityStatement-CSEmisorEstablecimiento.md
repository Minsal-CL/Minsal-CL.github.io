# Emisor — sistema del establecimiento - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emisor — sistema del establecimiento**

## CapabilityStatement: Emisor — sistema del establecimiento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CapabilityStatement/CSEmisorEstablecimiento | *Version*:0.4.0 |
| Draft as of 2026-09-30 | *Computable Name*:CSEmisorEstablecimiento |

 
Lo que debe hacer el sistema clínico que notifica: invocar $process-message con un BundleNotificacionGES válido, conservar el número de caso SIGGES y consultar casos. 

 [Raw OpenAPI-Swagger Definition file](CSEmisorEstablecimiento.openapi.json) | [Download](CSEmisorEstablecimiento.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CSEmisorEstablecimiento",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CapabilityStatement/CSEmisorEstablecimiento",
  "version" : "0.4.0",
  "name" : "CSEmisorEstablecimiento",
  "title" : "Emisor — sistema del establecimiento",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-30",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Lo que debe hacer el sistema clínico que notifica: invocar $process-message con un BundleNotificacionGES válido, conservar el número de caso SIGGES y consultar casos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "implementationGuide" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/ImplementationGuide/hl7.fhir.cl.minsal.sigges"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "Validar el Bundle contra los perfiles antes de enviarlo. Guardar EpisodeOfCare.identifier[casoSIGGES] de la respuesta y enviarlo en los mensajes siguientes del caso. Reintentar solo ante transient-error, con el mismo Bundle.identifier.",
    "security" : {
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "OAuth",
          "display" : "OAuth"
        }]
      }],
      "description" : "Obtiene el token con client_credentials y lo reutiliza hasta su expiración."
    },
    "resource" : [{
      "type" : "EpisodeOfCare",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"],
      "interaction" : [{
        "code" : "search-type"
      }]
    }],
    "operation" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "name" : "process-message",
      "definition" : "http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message"
    }]
  }]
}

```
