# Perfil de Bundle para Generar Informe - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Bundle para Generar Informe**

## Resource Profile: Perfil de Bundle para Generar Informe ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-bundle-generar-informe | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BundleGenerarInforme |

 
Perfil de Bundle que contiene los recursos necesarios para generar un informe de patología y cargarlos en el repositorio. 

**Usages:**

* Examples for this Profile: [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-bundle-generar-informe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-bundle-generar-informe.csv), [Excel](StructureDefinition-r2bo-bundle-generar-informe.xlsx), [Schematron](StructureDefinition-r2bo-bundle-generar-informe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-bundle-generar-informe",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-bundle-generar-informe",
  "version" : "0.1.1-ballot",
  "name" : "BundleGenerarInforme",
  "title" : "Perfil de Bundle para Generar Informe",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-12T16:54:01-03:00",
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
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Perfil de Bundle que contiene los recursos necesarios para generar un informe de patología y cargarlos en el repositorio.",
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
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            },
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Diferenciador de recursos por tipo y perfil",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 12
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URL completa del recurso, la cual puede ser un urn:uuid o un URL de un recurso existente",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso que se está incluyendo en el Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Solicitud",
        "path" : "Bundle.entry",
        "sliceName" : "Solicitud",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Solicitud.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Solicitud.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Solicitud.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      },
      {
        "id" : "Bundle.entry:Solicitud.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"ServiceRequest\" + Identifier de la solicitud",
        "example" : [
          {
            "label" : "General",
            "valueUri" : "ServiceRequest?identifier=12314"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Paciente",
        "path" : "Bundle.entry",
        "sliceName" : "Paciente",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Paciente.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Paciente.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Paciente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Paciente.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Patient\""
      },
      {
        "id" : "Bundle.entry:Paciente.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "En caso de no existir el recurso paciente por RUT, lo crea",
        "min" : 1,
        "example" : [
          {
            "label" : "General",
            "valueString" : "Patient?identifier=1-9"
          }
        ]
      },
      {
        "id" : "Bundle.entry:RolProfesional",
        "path" : "Bundle.entry",
        "sliceName" : "RolProfesional",
        "min" : 2,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:RolProfesional.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:RolProfesional.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"PractitionerRole\""
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "En caso de no existir el recurso rol profesional por RUT más el identificador de la organización, lo crea",
        "min" : 1,
        "example" : [
          {
            "label" : "General",
            "valueString" : "PractitionerRole?practitioner.identifier=1-9&organization.identifier=1312"
          }
        ]
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante",
        "path" : "Bundle.entry",
        "sliceName" : "ServicioSolicitante",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Location\""
      },
      {
        "id" : "Bundle.entry:ServicioSolicitante.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "En caso de no existir el recurso location, lo crea",
        "min" : 1,
        "example" : [
          {
            "label" : "General",
            "valueString" : "Location?name=Pediatria"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Profesional",
        "path" : "Bundle.entry",
        "sliceName" : "Profesional",
        "min" : 2,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Profesional.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Profesional.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Profesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Profesional.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Practitioner\""
      },
      {
        "id" : "Bundle.entry:Profesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "En caso de no existir el recurso profesional por RUT, lo crea",
        "min" : 1,
        "example" : [
          {
            "label" : "General",
            "valueString" : "Practitioner?identifier=1-9"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Organizacion",
        "path" : "Bundle.entry",
        "sliceName" : "Organizacion",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Organizacion.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Organizacion.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Organizacion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Organizacion.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Organization\""
      },
      {
        "id" : "Bundle.entry:Organizacion.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "En caso de no existir el recurso organización por código DEIS, lo crea",
        "min" : 1,
        "example" : [
          {
            "label" : "General",
            "valueString" : "Organization?identifier=1-9"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Muestra",
        "path" : "Bundle.entry",
        "sliceName" : "Muestra",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Muestra.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Specimen",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Muestra.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Muestra.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      },
      {
        "id" : "Bundle.entry:Muestra.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Specimen\" + Identifier de la muestra"
      },
      {
        "id" : "Bundle.entry:CabeceraDocumento",
        "path" : "Bundle.entry",
        "sliceName" : "CabeceraDocumento",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CabeceraDocumento.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CabeceraDocumento.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CabeceraDocumento.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:CabeceraDocumento.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Composition\""
      },
      {
        "id" : "Bundle.entry:InformeDiagnostico",
        "path" : "Bundle.entry",
        "sliceName" : "InformeDiagnostico",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:InformeDiagnostico.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DiagnosticReport",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:InformeDiagnostico.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:InformeDiagnostico.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:InformeDiagnostico.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"DiagnosticReport\""
      },
      {
        "id" : "Bundle.entry:Tumor",
        "path" : "Bundle.entry",
        "sliceName" : "Tumor",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Tumor.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "BodyStructure",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Tumor.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Tumor.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Tumor.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"BodyStructure\""
      },
      {
        "id" : "Bundle.entry:ObservacionMicroscopica",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionMicroscopica",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionMicroscopica.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-microscopica"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionMicroscopica.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionMicroscopica.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionMicroscopica.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionMacroscopica",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionMacroscopica",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionMacroscopica.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-macroscopica"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionMacroscopica.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionMacroscopica.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionMacroscopica.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:Estadificacion",
        "path" : "Bundle.entry",
        "sliceName" : "Estadificacion",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Estadificacion.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Estadificacion.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Estadificacion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Estadificacion.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:CategoriaT",
        "path" : "Bundle.entry",
        "sliceName" : "CategoriaT",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CategoriaT.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-tumor-primario"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CategoriaT.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CategoriaT.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:CategoriaT.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:CategoriaN",
        "path" : "Bundle.entry",
        "sliceName" : "CategoriaN",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CategoriaN.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-nodo-regional"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CategoriaN.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CategoriaN.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:CategoriaN.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:CategoriaM",
        "path" : "Bundle.entry",
        "sliceName" : "CategoriaM",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CategoriaM.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-metastasis-distante"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CategoriaM.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CategoriaM.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:CategoriaM.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltracionPerineuralR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionInfiltracionPerineuralR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltracionPerineuralR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-infiltracion-perineural"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltracionPerineuralR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltracionPerineuralR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltracionPerineuralR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionGangliosLinfaticos",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionGangliosLinfaticos",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionGangliosLinfaticos.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-ganglios-linfaticos"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionGangliosLinfaticos.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionGangliosLinfaticos.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionGangliosLinfaticos.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltradoPeritumoralR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionInfiltradoPeritumoralR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltradoPeritumoralR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-infiltracion-peritumoral"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltradoPeritumoralR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltradoPeritumoralR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionInfiltradoPeritumoralR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionLinfaticaR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionInvasionLinfaticaR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionLinfaticaR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-invasion-linfatica"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionLinfaticaR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionLinfaticaR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionLinfaticaR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionVascularR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionInvasionVascularR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionVascularR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-invasion-vascular"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionVascularR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionVascularR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionInvasionVascularR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionMargenQuirugico",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionMargenQuirugico",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionMargenQuirugico.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-margen-quirurgico"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionMargenQuirugico.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionMargenQuirugico.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionMargenQuirugico.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionMulticentricidad",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionMulticentricidad",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionMulticentricidad.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-multicentricidad"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionMulticentricidad.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionMulticentricidad.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionMulticentricidad.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionFocalidad",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionFocalidad",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionFocalidad.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-focalidad"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionFocalidad.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionFocalidad.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionFocalidad.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionPostNeoadjudancia",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionPostNeoadjudancia",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionPostNeoadjudancia.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-post-tratamiento-neoadjuvancia"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionPostNeoadjudancia.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionPostNeoadjudancia.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionPostNeoadjudancia.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionPorcentajeNecrosisR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionPorcentajeNecrosisR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionPorcentajeNecrosisR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-porcentaje-necrosis"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionPorcentajeNecrosisR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionPorcentajeNecrosisR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionPorcentajeNecrosisR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:ObservacionTejidoNoTumoralAdyacente",
        "path" : "Bundle.entry",
        "sliceName" : "ObservacionTejidoNoTumoralAdyacente",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ObservacionTejidoNoTumoralAdyacente.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-tejido-no-tumor-adyacente"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservacionTejidoNoTumoralAdyacente.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ObservacionTejidoNoTumoralAdyacente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ObservacionTejidoNoTumoralAdyacente.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      },
      {
        "id" : "Bundle.entry:TamanoTumorR2BO",
        "path" : "Bundle.entry",
        "sliceName" : "TamanoTumorR2BO",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TamanoTumorR2BO.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tamano-tumor"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TamanoTumorR2BO.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TamanoTumorR2BO.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:TamanoTumorR2BO.request.url",
        "path" : "Bundle.entry.request.url",
        "short" : "Uri del recurso \"Observation\""
      }
    ]
  }
}

```
