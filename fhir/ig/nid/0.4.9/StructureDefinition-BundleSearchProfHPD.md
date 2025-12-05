# MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos**

## Resource Profile: MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleSearchProfHPD |

 
Bundle resultado de una busqueda de un recurso "Practitioner" mediante parámetros. Se debe incluir el Parámetro de "_profile" e incluir la url canonica del perfil[Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)o[Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md), esto permite especificar la busqueda según cada tipo de profesional. 

**Usages:**

* Examples for this Profile: [Bundle/EjemploBusquedaAdm](Bundle-EjemploBusquedaAdm.md) and [Bundle/EjemploBusquedaProf](Bundle-EjemploBusquedaProf.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/BundleSearchProfHPD)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleSearchProfHPD.csv), [Excel](StructureDefinition-BundleSearchProfHPD.xlsx), [Schematron](StructureDefinition-BundleSearchProfHPD.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleSearchProfHPD",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD",
  "version" : "0.4.9",
  "name" : "BundleSearchProfHPD",
  "title" : "MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos",
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
  "description" : "Bundle resultado de una busqueda de un recurso \\\"Practitioner\\\" mediante parámetros.\nSe debe incluir el Parámetro de \\\"_profile\\\" e incluir la url canonica del perfil [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.html) o [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.html), esto permite especificar la busqueda según cada tipo de profesional.",
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
        "id" : "Bundle.entry:profesional",
        "path" : "Bundle.entry",
        "sliceName" : "profesional",
        "short" : "profesional",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:profesional.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Información sobre un profesional",
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
