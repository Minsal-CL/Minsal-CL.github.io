# MINSAL Bundle Resultado Consulta: Prestadores Institucinales - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Bundle Resultado Consulta: Prestadores Institucinales**

## Resource Profile: MINSAL Bundle Resultado Consulta: Prestadores Institucinales 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchINSHPD | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleSearchINSHPD |

 
Bundle resultado de una busqueda de un recurso "Organization" mediante parametros 

**Usages:**

* Examples for this Profile: [Bundle/EjemploBusquedaOrg](Bundle-EjemploBusquedaOrg.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/BundleSearchINSHPD)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleSearchINSHPD.csv), [Excel](StructureDefinition-BundleSearchINSHPD.xlsx), [Schematron](StructureDefinition-BundleSearchINSHPD.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleSearchINSHPD",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchINSHPD",
  "version" : "0.4.9",
  "name" : "BundleSearchINSHPD",
  "title" : "MINSAL Bundle Resultado Consulta: Prestadores Institucinales",
  "status" : "draft",
  "date" : "2025-12-05T14:30:03-03:00",
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
  "description" : "Bundle resultado de una busqueda de un recurso \"Organization\" mediante parametros",
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
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "short" : "Tipo de Bundle, para el caso de uso es un \"searchset\"",
        "patternCode" : "searchset",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "short" : "Numero total de resultados",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Diferenciación de los resultados de la busqueda",
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Entrada de los resultados de la busqueda",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "uri de identificación del resultado",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:organizacion",
        "path" : "Bundle.entry",
        "sliceName" : "organizacion",
        "short" : "Prestador Institucional",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:organizacion.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Información sobre una organización que entrega servicios de cuidados de salud",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
