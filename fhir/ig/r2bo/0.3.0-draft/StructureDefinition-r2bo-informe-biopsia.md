# Perfil del Reporte de Anatomía Patológica - Repositorio de Reportes de Biopsias Oncológicas v0.3.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil del Reporte de Anatomía Patológica**

## Resource Profile: Perfil del Reporte de Anatomía Patológica 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia | *Version*:0.3.0-draft | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:R2BOInformeBiopsia |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8.42.9 | | |

 
Reporte de anatomía patológica 

**Usages:**

* Use this Profile: [Perfil de Bundle: Generar Notificación Obligatoria](StructureDefinition-r2bo-bundle-generar-notificacion.md)
* Refer to this Profile: [Extensión de Adendas Biopsia](StructureDefinition-r2bo-Addenda-Reportebiopsia.md)
* Examples for this Profile: [DiagnosticReport/r2bo-informe-biopsia-ex](DiagnosticReport-r2bo-informe-biopsia-ex.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/StructureDefinition-r2bo-informe-biopsia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-informe-biopsia.csv), [Excel](StructureDefinition-r2bo-informe-biopsia.xlsx), [Schematron](StructureDefinition-r2bo-informe-biopsia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-informe-biopsia",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.40.8.42.9"
  }],
  "version" : "0.3.0-draft",
  "name" : "R2BOInformeBiopsia",
  "title" : "Perfil del Reporte de Anatomía Patológica",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T12:25:24-04:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Reporte de anatomía patológica",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DiagnosticReport.extension:addendum",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "addendum",
      "short" : "Referencia a un informe previo que necesita ser actualizado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-Addenda-Reportebiopsia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Identificador del Informe de Anatomía Patológica",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "Solicitud de Biopsia",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "Estado del Informe de Anatomía Patológica",
      "patternCode" : "final",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "short" : "Categoría del Informe de Anatomía Patológica",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "PAT",
          "display" : "Pathology (gross & histopath, not surgical)"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-categoria-reporte-biopsia-vs"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Código del Informe de Anatomía Patológica",
      "example" : [{
        "label" : "CodeableConcept",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "726566009",
            "display" : "Pathology biopsy report"
          }]
        }
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-reporte-biopsia-vs"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "Paciente del Informe de Anatomía Patológica",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "short" : "Fecha de Emisión del Informe de Anatomía Patológica",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "short" : "Anatomopatólogo que realiza el Informe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
        "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
        "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "short" : "Muestra de Biopsia",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "description" : "Distintos Resultados del Informe de Anatomía Patológica",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Resultados del Informe de Anatomía Patológica",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-resultados-reporte-biopsia"]
      }]
    },
    {
      "id" : "DiagnosticReport.result:TNM",
      "path" : "DiagnosticReport.result",
      "sliceName" : "TNM",
      "short" : "Estadificación patológica TNM",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Conclusión narrativa del informe de anatomía patológica",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "id"
        }],
        "description" : "Diferenciación de distintas conclusiones codificadas",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Conclusión codificada del informe de anatomía patológica",
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Morfologico",
      "path" : "DiagnosticReport.conclusionCode",
      "sliceName" : "Morfologico",
      "short" : "Conclusión Morfológica",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "1"
          },
          {
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-morfologicos-cie11-VS"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Set de valores utilizados para CIE-11 Códigos de Extensión Histopatológicos par ser usado en la morfología de neoplasias"
          },
          {
            "url" : "shortDoco",
            "valueString" : "Set de valores utilizados para CIE-11 que permiten el mapeo a la CIE-O 3.2 Morfológico"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-morfologicosct-cieo-VS"
      }
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Morfologico.id",
      "path" : "DiagnosticReport.conclusionCode.id",
      "min" : 1,
      "patternString" : "Morfologico"
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Morfologico.extension",
      "path" : "DiagnosticReport.conclusionCode.extension",
      "short" : "Grado de diferenciación tumoral"
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Morfologico.extension:gradoDiferenciacion",
      "path" : "DiagnosticReport.conclusionCode.extension",
      "sliceName" : "gradoDiferenciacion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-grado-diferenciacion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Topografico",
      "path" : "DiagnosticReport.conclusionCode",
      "sliceName" : "Topografico",
      "short" : "Conclusión Topográfica",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "1"
          },
          {
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cie11-VS"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Set de valores utilizados para la topografía de la CIE-11 para Anatomía y topografía"
          },
          {
            "url" : "shortDoco",
            "valueString" : "Set de valores utilizados para la topografía de la CIE-11 que permiten el mapeo a la CIE-O 3.2 Tográfico"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cieo-VS"
      }
    },
    {
      "id" : "DiagnosticReport.conclusionCode:Topografico.id",
      "path" : "DiagnosticReport.conclusionCode.id",
      "min" : 1,
      "patternString" : "Topografico"
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "short" : "Representación del Informe de Anatomía Patológica",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "short" : "Tipo de Contenido",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.data",
      "path" : "DiagnosticReport.presentedForm.data",
      "short" : "Informe de Anatomía Patológica en base64",
      "mustSupport" : true
    }]
  }
}

```
