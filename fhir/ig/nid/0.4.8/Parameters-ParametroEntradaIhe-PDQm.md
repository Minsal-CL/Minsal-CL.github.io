# Parametros de entrada para la operación $match - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Parametros de entrada para la operación $match**

## Example Parameters: Parametros de entrada para la operación $match



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametroEntradaIhe-PDQm",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPDQmMpi"
    ]
  },
  "parameter" : [
    {
      "name" : "resource",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "EjemploPacienteBusqueda",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Patient EjemploPaciente</b></p><a name=\"EjemploPaciente\"/><a name=\"hcEjemploPaciente\"> </a><a name=\"EjemploPaciente-es-CL\"/><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Andres Martinez (official) Male, DoB: 1981-11-10 ( RUN: 12216373-3 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><a href=\"tel:+5694332547\">+5694332547</a></td></tr></table></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
                  "code" : "1",
                  "display" : "RUN"
                }
              ]
            },
            "value" : "12216373-3"
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Martinez",
            "given" : ["Andres"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+5694332547"
          }
        ],
        "gender" : "male",
        "birthDate" : "1981-11-10"
      }
    },
    {
      "name" : "onlyCertainMatches",
      "valueBoolean" : false
    },
    {
      "name" : "count",
      "valueInteger" : 1
    }
  ]
}

```
