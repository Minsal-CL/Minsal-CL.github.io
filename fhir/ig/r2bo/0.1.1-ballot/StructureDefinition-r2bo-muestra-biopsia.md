# Perfil de Muestra - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Muestra**

## Resource Profile: Perfil de Muestra ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MuestraR2BO |

 
Muestra de tejido o fluido biológico para análisis de antomía patologica. 

**Usages:**

* Use this Profile: [Perfil de Bundle: Documento de Anatomía Patológica](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle: Generar Notificación Obligatoria](StructureDefinition-r2bo-bundle-generar-notificacion.md)
* Refer to this Profile: [Perfil de Origen para las Categorías T, N, M (Abstracto)](StructureDefinition-r2bo-categoria-tnm.md), [Perfil de la Cabecera del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md), [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md), [Perfil de Origen de Todos Los Resultados](StructureDefinition-r2bo-resultados-reporte-biopsia.md) and [Perfil de Solicitud de Informe de Anatomía Patológica](StructureDefinition-r2bo-solicitud-informe-apa.md)
* Examples for this Profile: [Specimen/r2bo-specimen-example](Specimen-r2bo-specimen-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-muestra-biopsia)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-muestra-biopsia.csv), [Excel](StructureDefinition-r2bo-muestra-biopsia.xlsx), [Schematron](StructureDefinition-r2bo-muestra-biopsia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-muestra-biopsia",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia",
  "version" : "0.1.1-ballot",
  "name" : "MuestraR2BO",
  "title" : "Perfil de Muestra",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-23T17:10:55-03:00",
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
  "description" : "Muestra de tejido o fluido biológico para análisis de antomía patologica.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "short" : "Tipo de material que forma el espécimen.",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "description" : "Set de Valores para los tipos de muestras que puedan ser obtenidos",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-tipo-especimen-vs"
        }
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "short" : "Paciente de la muestra",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.receivedTime",
        "path" : "Specimen.receivedTime",
        "short" : "Fecha de recepción de la muestra",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection",
        "path" : "Specimen.collection",
        "short" : "Datos de la colección de la muestra",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.collector",
        "path" : "Specimen.collection.collector",
        "short" : "Profesional que recolecta la muestra",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.collected[x]",
        "path" : "Specimen.collection.collected[x]",
        "short" : "Fecha y hora de la colección de la muestra",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.method",
        "path" : "Specimen.collection.method",
        "short" : "Método de colección de la muestra",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-procedimientos-biopsias-VS"
        }
      },
      {
        "id" : "Specimen.collection.method.extension",
        "path" : "Specimen.collection.method.extension",
        "min" : 1
      },
      {
        "id" : "Specimen.collection.method.extension:MetodoProcedimiento",
        "path" : "Specimen.collection.method.extension",
        "sliceName" : "MetodoProcedimiento",
        "short" : "Método de procedimiento",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.bodySite",
        "path" : "Specimen.collection.bodySite",
        "short" : "Sitio anatómico de la colección",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-estructuras-anatomicas-VS"
        }
      },
      {
        "id" : "Specimen.collection.bodySite.extension:CalificadorLateralidad",
        "path" : "Specimen.collection.bodySite.extension",
        "sliceName" : "CalificadorLateralidad",
        "short" : "Calificador para lateralidad para este sitio del cuerpo",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.fastingStatus[x]",
        "path" : "Specimen.collection.fastingStatus[x]",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0916|2.0.0"
        }
      },
      {
        "id" : "Specimen.note",
        "path" : "Specimen.note",
        "short" : "Detalle u observación adiciona a la topografía al momento de extraer la muestra.",
        "mustSupport" : true
      }
    ]
  }
}

```
