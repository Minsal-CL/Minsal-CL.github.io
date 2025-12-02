# MINSAL Parámetros Salida PIXm - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Parámetros Salida PIXm**

## Resource Profile: MINSAL Parámetros Salida PIXm 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosSalidaPixmMpi | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:ParametrosSalidaPixmMpi |

 
Estos son los parámetros de Salida para el[$ihe-pix](OperationDefinition-MPI.PIXm.pix.md)del PIXm 

**Usages:**

* Examples for this Profile: [Parameters/ParametroSalidaIhe-PIXm](Parameters-ParametroSalidaIhe-PIXm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/ParametrosSalidaPixmMpi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ParametrosSalidaPixmMpi.csv), [Excel](StructureDefinition-ParametrosSalidaPixmMpi.xlsx), [Schematron](StructureDefinition-ParametrosSalidaPixmMpi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ParametrosSalidaPixmMpi",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosSalidaPixmMpi",
  "version" : "0.4.8",
  "name" : "ParametrosSalidaPixmMpi",
  "title" : "MINSAL Parámetros Salida PIXm",
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
  "description" : "Estos son los parámetros de Salida para el [$ihe-pix](OperationDefinition-MPI.PIXm.pix.html) del PIXm",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters",
        "path" : "Parameters"
      },
      {
        "id" : "Parameters.parameter:targetId",
        "path" : "Parameters.parameter",
        "sliceName" : "targetId",
        "short" : "Url del recurso paciente",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetId.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetId.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "short" : "Referencia del recurso paciente encontrado",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetIdentifier",
        "path" : "Parameters.parameter",
        "sliceName" : "targetIdentifier",
        "short" : "Identificador encontrados.",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.name",
        "path" : "Parameters.parameter.name",
        "short" : "Nombre para la definición",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "short" : "Identificador del paciente encontrado",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].system",
        "path" : "Parameters.parameter.value[x].system",
        "short" : "Sistema de identificador",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].value",
        "path" : "Parameters.parameter.value[x].value",
        "short" : "Valor del identificador",
        "mustSupport" : true
      }
    ]
  }
}

```
