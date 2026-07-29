# Parametros de entrada para la operación $ihe-pix - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Parametros de entrada para la operación $ihe-pix**

## Example Parameters: Parametros de entrada para la operación $ihe-pix

Profile: [MINSAL Parametros Entrada PIXm](StructureDefinition-ParametrosEntradaPixmMpi.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametroEntradaIhe-PIXm",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPixmMpi"
    ]
  },
  "parameter" : [
    {
      "name" : "sourceIdentifier",
      "valueIdentifier" : {
        "system" : "urn:oid:2.16.840.1.113883.2.22.0.2.102100.50.10",
        "value" : "ACL123456789876"
      }
    }
  ]
}

```
