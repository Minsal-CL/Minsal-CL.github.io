# Respuesta — Error de validación - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Respuesta — Error de validación**

## Example Bundle: Respuesta — Error de validación



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "resp-error",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-respuesta-ges"]
  },
  "type" : "message",
  "timestamp" : "2026-03-30T16:21:07-03:00",
  "entry" : [{
    "fullUrl" : "http://example.org/sigges/fhir/MessageHeader/resp-error-mh",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "resp-error-mh",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-respuesta-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_resp-error-mh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje resp-error-mh</b></p><a name=\"resp-error-mh\"> </a><a name=\"hcresp-error-mh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-mh-respuesta-ges.html\">MessageHeader — Respuesta SIGGES</a></p></div><p><b>event</b>: <a href=\"CodeSystem-tipo-documento-sigges.html#tipo-documento-sigges-OA\">Tipos de documento SIGGES: OA</a> (Orden de atención)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://example.org/his/fhir/\">http://example.org/his/fhir/</a></td></tr></table><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>SIGGES 2.0</td><td><a href=\"http://example.org/sigges/fhir/\">http://example.org/sigges/fhir/</a></td></tr></table><h3>Responses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Details</b></td></tr><tr><td style=\"display: none\">*</td><td>msg-x-oa-mh</td><td>Fatal Error</td><td><a href=\"Bundle-resp-error.html#OperationOutcome_oo-error-rama\">OperationOutcome</a></td></tr></table></div>"
      },
      "eventCoding" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges",
        "code" : "OA"
      },
      "destination" : [{
        "endpoint" : "http://example.org/his/fhir/"
      }],
      "source" : {
        "name" : "SIGGES 2.0",
        "endpoint" : "http://example.org/sigges/fhir/"
      },
      "response" : {
        "identifier" : "msg-x-oa-mh",
        "code" : "fatal-error",
        "details" : {
          "reference" : "OperationOutcome/oo-error-rama"
        }
      }
    }
  },
  {
    "fullUrl" : "http://example.org/sigges/fhir/OperationOutcome/oo-error-rama",
    "resource" : {
      "resourceType" : "OperationOutcome",
      "id" : "oo-error-rama",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"OperationOutcome_oo-error-rama\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResultadoOperación oo-error-rama</b></p><a name=\"oo-error-rama\"> </a><a name=\"hcoo-error-rama\"> </a><blockquote><p><b>issue</b></p><p><b>severity</b>: Error</p><p><b>code</b>: Invalid Code</p><p><b>diagnostics</b>: La rama 125 no pertenece al problema de salud 27 (Cáncer gástrico).</p><p><b>expression</b>: Bundle.entry[3].resource.type[1]</p></blockquote><blockquote><p><b>issue</b></p><p><b>severity</b>: Error</p><p><b>code</b>: Required element missing</p><p><b>diagnostics</b>: OrdenAtencionGES requiere extension[garantia].</p><p><b>expression</b>: Bundle.entry[1].resource</p></blockquote></div>"
      },
      "issue" : [{
        "severity" : "error",
        "code" : "code-invalid",
        "diagnostics" : "La rama 125 no pertenece al problema de salud 27 (Cáncer gástrico).",
        "expression" : ["Bundle.entry[3].resource.type[1]"]
      },
      {
        "severity" : "error",
        "code" : "required",
        "diagnostics" : "OrdenAtencionGES requiere extension[garantia].",
        "expression" : ["Bundle.entry[1].resource"]
      }]
    }
  }]
}

```
