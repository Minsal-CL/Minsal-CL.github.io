# Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)**

## CapabilityStatement: Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CapabilityStatement/CSReceptorSIGGES | *Version*:0.4.0 |
| Draft as of 2026-09-30 | *Computable Name*:CSReceptorSIGGES |

 
Lo que debe exponer quien recibe las notificaciones GES: la operación $process-message para los 7 documentos y la búsqueda de casos con sus garantías. 

 [Raw OpenAPI-Swagger Definition file](CSReceptorSIGGES.openapi.json) | [Download](CSReceptorSIGGES.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CSReceptorSIGGES",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CapabilityStatement/CSReceptorSIGGES",
  "version" : "0.4.0",
  "name" : "CSReceptorSIGGES",
  "title" : "Receptor SIGGES (capa de interoperabilidad en etapa 1, SIGGES en etapa 2)",
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
  "description" : "Lo que debe exponer quien recibe las notificaciones GES: la operación $process-message para los 7 documentos y la búsqueda de casos con sus garantías.",
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
    "mode" : "server",
    "documentation" : "Toda interacción usa TLS 1.2 o superior. Los datos personales nunca viajan en la URL: la consulta por RUN se hace con POST [base]/EpisodeOfCare/_search.",
    "security" : {
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "OAuth",
          "display" : "OAuth"
        }]
      }],
      "description" : "OAuth 2.0 con grant_type=client_credentials. Cada client_id se asocia a uno o más códigos DEIS; el receptor rechaza un MessageHeader.sender que no corresponda al cliente autenticado."
    },
    "resource" : [{
      "type" : "EpisodeOfCare",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"],
      "interaction" : [{
        "code" : "search-type",
        "documentation" : "Por POST [base]/EpisodeOfCare/_search. patient.identifier (encadenado) con system|valor del RUN."
      }],
      "searchInclude" : ["EpisodeOfCare:condition"],
      "searchRevInclude" : ["Task:focus"],
      "searchParam" : [{
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "Se usa encadenado: patient.identifier={system del RUN}|{RUN}. Obligatorio."
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/EpisodeOfCare-status",
        "type" : "token"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
        "type" : "token",
        "documentation" : "Problema de salud GES (CSProblemaSaludGES)."
      }]
    },
    {
      "type" : "Task",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/garantia-oportunidad-ges",
      "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/cierre-caso-ges",
      "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/excepcion-garantia-ges"],
      "documentation" : "Las garantías las publica SIGGES; el establecimiento las obtiene con _revinclude=Task:focus en la búsqueda de casos.",
      "interaction" : [{
        "code" : "read"
      }]
    }],
    "operation" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "name" : "process-message",
      "definition" : "http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message",
      "documentation" : "Recibe un BundleNotificacionGES y responde, de forma síncrona, un BundleRespuestaGES (ok, transient-error o fatal-error). Idempotencia por identifier[folio] del recurso foco; reintento de transporte con el mismo Bundle.identifier."
    }]
  }],
  "messaging" : [{
    "documentation" : "Mensajería FHIR síncrona sobre REST ($process-message). Un documento SIGGES por mensaje; MessageHeader.focus[0] = documento y focus[1] = caso."
  }]
}

```
