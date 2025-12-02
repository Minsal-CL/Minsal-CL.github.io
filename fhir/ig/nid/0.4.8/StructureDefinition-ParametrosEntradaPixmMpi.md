# MINSAL Parametros Entrada PIXm - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Parametros Entrada PIXm**

## Resource Profile: MINSAL Parametros Entrada PIXm 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPixmMpi | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:ParametrosEntradaPixmMpi |

 
Estos son los parametros de entrada para el[$ihe-pix](OperationDefinition-MPI.PIXm.pix.md)del PIXm 

**Usages:**

* Examples for this Profile: [Parameters/ParametroEntradaIhe-PIXm](Parameters-ParametroEntradaIhe-PIXm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/ParametrosEntradaPixmMpi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ParametrosEntradaPixmMpi.csv), [Excel](StructureDefinition-ParametrosEntradaPixmMpi.xlsx), [Schematron](StructureDefinition-ParametrosEntradaPixmMpi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ParametrosEntradaPixmMpi",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPixmMpi",
  "version" : "0.4.8",
  "name" : "ParametrosEntradaPixmMpi",
  "title" : "MINSAL Parametros Entrada PIXm",
  "status" : "draft",
  "date" : "2025-11-28T16:21:53-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Estos son los parametros de entrada para el [$ihe-pix](OperationDefinition-MPI.PIXm.pix.html) del PIXm",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters",
        "path" : "Parameters"
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier",
        "path" : "Parameters.parameter",
        "sliceName" : "sourceIdentifier",
        "short" : "Identificador de busqueda, el cual será utilizado para realizar el cruse de referencia.",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.value[x]:valueIdentifier",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueIdentifier",
        "short" : "Identificador del paciente",
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.value[x]:valueIdentifier.system",
        "path" : "Parameters.parameter.value[x].system",
        "short" : "Sistema de identificador",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.value[x]:valueIdentifier.value",
        "path" : "Parameters.parameter.value[x].value",
        "short" : "Valor del identificador",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetSystem",
        "path" : "Parameters.parameter",
        "sliceName" : "targetSystem",
        "short" : "Sistema que asigna un identificador del cual se regresara el identificador que debe ser seleccionado",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetSystem.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetSystem.value[x]:valueUri",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueUri",
        "short" : "URI del valor",
        "type" : [
          {
            "code" : "uri"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetSystem.value[x]:valueUri.value",
        "path" : "Parameters.parameter.value[x].value",
        "short" : "Valor del URI",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
