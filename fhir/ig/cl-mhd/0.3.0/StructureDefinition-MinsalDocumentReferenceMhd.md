# Referencia documental MINSAL (IHE MHD, forma almacenada) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Referencia documental MINSAL (IHE MHD, forma almacenada)**

## Resource Profile: Referencia documental MINSAL (IHE MHD, forma almacenada) 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd | *Versión*:0.3.0 |
| Borrador al 2026-11-09 | *Nombre computable*:MinsalDocumentReferenceMhd |

 
Perfil transversal de DocumentReference (IHE MHD, perfil Minimal) para la forma almacenada y consultable de un documento clínico publicado en el Bus de Interoperabilidad: contiene los metadatos y la URL (`content.attachment.url`) desde la cual se recupera el contenido (transacciones ITI-67 y ITI-68). El contenido no va inline (`content.attachment.data` 0..0, heredado de IHE MHD Minimal). Las guías de dominio del portafolio (laboratorio, imagenología, etc.) heredan de este perfil y fijan lo específico de su documento; no reemplaza el perfil de dominio, lo complementa con la parte común a todas las guías. 

**Usages:**

* Use this Perfil: [Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)](StructureDefinition-MinsalProvideBundleMhd.md)
* Examples for this Perfil: [DocumentReference/InformeImagenologiaEjemploMhd](DocumentReference-InformeImagenologiaEjemploMhd.md), [DocumentReference/InformeLaboratorioAtomizadoEjemploMhd](DocumentReference-InformeLaboratorioAtomizadoEjemploMhd.md), [DocumentReference/InformeLaboratorioEjemploMhd](DocumentReference-InformeLaboratorioEjemploMhd.md) and [DocumentReference/InformeLaboratorioReemplazoEjemploMhd](DocumentReference-InformeLaboratorioReemplazoEjemploMhd.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.mhd|current/StructureDefinition/StructureDefinition-MinsalDocumentReferenceMhd.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalDocumentReferenceMhd.csv), [Excel](StructureDefinition-MinsalDocumentReferenceMhd.xlsx), [Schematron](StructureDefinition-MinsalDocumentReferenceMhd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalDocumentReferenceMhd",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd",
  "version" : "0.3.0",
  "name" : "MinsalDocumentReferenceMhd",
  "title" : "Referencia documental MINSAL (IHE MHD, forma almacenada)",
  "status" : "draft",
  "date" : "2026-11-09T23:03:48-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil transversal de DocumentReference (IHE MHD, perfil Minimal) para la forma almacenada y consultable de un documento clínico publicado en el Bus de Interoperabilidad: contiene los metadatos y la URL (`content.attachment.url`) desde la cual se recupera el contenido (transacciones ITI-67 y ITI-68). El contenido no va inline (`content.attachment.data` 0..0, heredado de IHE MHD Minimal). Las guías de dominio del portafolio (laboratorio, imagenología, etc.) heredan de este perfil y fijan lo específico de su documento; no reemplaza el perfil de dominio, lo complementa con la parte común a todas las guías.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "DocumentEntry-Mapping",
    "uri" : "urn:ihe:iti:xds:documententry",
    "name" : "XDS and MHD Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "Identificador único del informe/documento, asignado por quien lo origina (ej. LIS, RIS). Debe ser estable entre reenvíos del mismo documento para evitar duplicados.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Estado del documento: current (vigente) o superseded (reemplazado).",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Tipo de documento (LOINC). Cada guía de dominio fija el código que le corresponde (ej. 11502-2 para laboratorio, 18748-4 para imagenología).",
      "min" : 1
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "short" : "Categoría del documento (ej. v2-0074). En IHE MHD Minimal es 0..1; esta guía la fija en 1..1, la misma cardinalidad del perfil Comprehensive. Cada guía de dominio fija el código que le corresponde (ej. LAB, RAD).",
      "min" : 1
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Paciente al que pertenece el documento. Cada guía de dominio restringe a su propio perfil de paciente (ej. PacienteLaboratorio, basado en NID).",
      "min" : 1
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "Fecha y hora en que se creó la referencia al documento.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Quién(es) generaron el documento: profesional, rol o establecimiento. Cada guía de dominio restringe los tipos de referencia permitidos.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "short" : "Organización responsable del documento (el establecimiento), no el nodo que lo aloja. Obligatorio: la regla de autorización del reemplazo se basa en este elemento.",
      "definition" : "Organización responsable del mantenimiento y del acceso continuo al documento, según la definición de FHIR R4: el establecimiento, identificado con el sistema de identificadores que defina MINSAL. Es distinta del nodo que aloja el documento, que puede operar por delegación (por ejemplo, el nodo central en el escenario C). Cambiar de nodo no cambia el `custodian`. En IHE MHD Minimal es 0..1; esta guía lo fija en 1..1 porque el reemplazo solo se acepta del nodo que tiene la autoridad vigente sobre el `custodian` del documento.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo",
      "path" : "DocumentReference.relatesTo",
      "short" : "Relación con otro documento (por ejemplo, el documento que este reemplaza)."
    },
    {
      "id" : "DocumentReference.relatesTo.code",
      "path" : "DocumentReference.relatesTo.code",
      "short" : "Tipo de relación: replaces (reemplaza), appends (adenda), transforms o signs.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo.target",
      "path" : "DocumentReference.relatesTo.target",
      "short" : "Documento con el que se relaciona.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "short" : "Etiquetas de seguridad y confidencialidad del documento."
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "constraint" : [{
        "key" : "minsal-mhd-hash-size-1",
        "severity" : "error",
        "human" : "Si el contenido no es un Bundle documento FHIR, attachment.hash y attachment.size son obligatorios (ITI-65 sección 2:3.65.4.1.2.1).",
        "expression" : "attachment.contentType.startsWith('application/fhir') or (attachment.hash.exists() and attachment.size.exists())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
      },
      {
        "key" : "minsal-mhd-hash-size-2",
        "severity" : "error",
        "human" : "Si el contenido es un Bundle documento FHIR (contentType application/fhir+json o application/fhir+xml), attachment.hash y attachment.size deben faltar (ITI-65 sección 2:3.65.4.1.2.1).",
        "expression" : "attachment.contentType.startsWith('application/fhir').not() or (attachment.hash.empty() and attachment.size.empty())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
      }]
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "Tipo MIME del contenido (por ejemplo, application/pdf o application/fhir+json).",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "short" : "Idioma del contenido (por ejemplo, es-CL)."
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "URL desde la que se recupera el contenido (ITI-68).",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.size",
      "path" : "DocumentReference.content.attachment.size",
      "short" : "Tamaño en bytes del contenido. Obligatorio, salvo que el contenido sea un Bundle documento FHIR, donde debe faltar.",
      "definition" : "Tamaño en bytes del contenido que se recupera con el contentType indicado. ITI-65 sección 2:3.65.4.1.2.1: el Document Source debe informar .hash y .size exactos; si el contenido está alojado en otro lugar, representan el contenido que se recuperaría con ese contentType. Si el contenido es un Bundle documento FHIR, deben faltar. En esta guía el contenido siempre está alojado fuera (`url` 1..1, `data` 0..0) y no se usa la opción On-Demand: `size` es obligatorio salvo para un Bundle documento FHIR (invariantes minsal-mhd-hash-size-1 y -2). El nodo central lo verifica al entregar el contenido por ITI-68.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.hash",
      "path" : "DocumentReference.content.attachment.hash",
      "short" : "Hash SHA-1 en base64 del contenido. Obligatorio, salvo que el contenido sea un Bundle documento FHIR, donde debe faltar.",
      "definition" : "Hash SHA-1 en base64 del contenido que se recupera con el contentType indicado. ITI-65 sección 2:3.65.4.1.2.1: el Document Source debe informar .hash y .size exactos; si el contenido está alojado en otro lugar, representan el contenido que se recuperaría con ese contentType. Si el contenido es un Bundle documento FHIR, deben faltar. En esta guía el contenido siempre está alojado fuera (`url` 1..1, `data` 0..0) y no se usa la opción On-Demand: `hash` es obligatorio salvo para un Bundle documento FHIR (invariantes minsal-mhd-hash-size-1 y -2). El nodo central lo verifica al entregar el contenido por ITI-68.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "short" : "Título del documento para mostrar.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "short" : "Fecha y hora en que se creó el contenido."
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "short" : "Código de formato IHE del documento (ej. urn:ihe:iti:xds:2017:mimeTypeSufficient para un PDF simple). IHE MHD Minimal declara binding preferred al ValueSet formatcode (http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode). Este perfil transversal no aprieta esa fuerza: el código se fija en cada ejemplo."
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "short" : "Atención o episodio en que se generó el documento.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "short" : "Período de la prestación documentada (por ejemplo, la toma de muestra o el examen)."
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "short" : "Tipo de establecimiento donde se realizó la prestación."
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "short" : "Especialidad o área clínica de la prestación."
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "short" : "Recurso clínico de origen del documento (ej. la solicitud que dio pie al resultado). Cada guía de dominio restringe el tipo de referencia permitido.",
      "mustSupport" : true
    }]
  }
}

```
