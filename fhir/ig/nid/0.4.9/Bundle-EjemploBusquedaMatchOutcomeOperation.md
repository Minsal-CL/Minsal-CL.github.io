# Ejemplo de una Busqueda Match con OperationOutcome - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de una Busqueda Match con OperationOutcome**

## Example Bundle: Ejemplo de una Busqueda Match con OperationOutcome

Profile: [MINSAL Bundle Resultado Operación Match](StructureDefinition-BundleSearchMPIMatch.md)

Bundle EjemploBusquedaMatchOutcomeOperation of type searchset

-------

Entry 1 - fullUrl = https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationOutcome/OperationOutcomeFalloMatch

Búsqueda:Mode = outcome

Rec}:

> 



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjemploBusquedaMatchOutcomeOperation",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchMPIMatch"
    ]
  },
  "type" : "searchset",
  "link" : [
    {
      "relation" : "self",
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient/$match"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationOutcome/OperationOutcomeFalloMatch",
      "resource" : {
        "resourceType" : "OperationOutcome",
        "id" : "OperationOutcomeFalloMatch",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"OperationOutcome_OperationOutcomeFalloMatch\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResultadoOperación OperationOutcomeFalloMatch</b></p><a name=\"OperationOutcomeFalloMatch\"> </a><a name=\"hcOperationOutcomeFalloMatch\"> </a><h3>Issues</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Severity</b></td><td><b>Code</b></td><td><b>Details</b></td></tr><tr><td style=\"display: none\">*</td><td>Error</td><td>Timeout</td><td><span title=\"Codes:\">La búsqueda ha expirado debido a un timeout en el servidor.</span></td></tr></table></div>"
        },
        "issue" : [
          {
            "severity" : "error",
            "code" : "timeout",
            "details" : {
              "text" : "La búsqueda ha expirado debido a un timeout en el servidor."
            }
          }
        ]
      },
      "search" : {
        "mode" : "outcome"
      }
    }
  ]
}

```
