# Solicitud de Examen Imagenológico MINSAL - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud de Examen Imagenológico MINSAL**

## Resource Profile: Solicitud de Examen Imagenológico MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:MinsalServiceRequestImagen |

 
Perfil para representar la solicitud de un examen imagenológico (TC, RM, mamografía y otros procedimientos) en el modelo canónico nacional FHIR R4. Corresponde al recurso focal de la solicitud recibida desde el HIS mediante HL7 v2 ORM^O01, o entregada directamente en FHIR. Cuando una orden agrupa varios exámenes se crea un ServiceRequest por examen, todos compartiendo el mismo par system+value en requisition. Sigue el modelo de MinsalServiceRequestLab de la Guía de Implementación de Laboratorio Clínico. 

**Usages:**

* Use this Profile: [Bundle de Solicitud de Imagenología MINSAL](StructureDefinition-MinsalBundleSolicitudImagenologia.md)
* Refer to this Profile: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md)
* Examples for this Profile: [ServiceRequest/SolicitudMamografiaBilateralEjemplo](ServiceRequest-SolicitudMamografiaBilateralEjemplo.md) and [ServiceRequest/SolicitudTcCerebroEjemplo](ServiceRequest-SolicitudTcCerebroEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-MinsalServiceRequestImagen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalServiceRequestImagen.csv), [Excel](StructureDefinition-MinsalServiceRequestImagen.xlsx), [Schematron](StructureDefinition-MinsalServiceRequestImagen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalServiceRequestImagen",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen",
  "version" : "0.3.0",
  "name" : "MinsalServiceRequestImagen",
  "title" : "Solicitud de Examen Imagenológico MINSAL",
  "status" : "draft",
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para representar la solicitud de un examen imagenológico (TC, RM, mamografía y otros procedimientos) en el modelo canónico nacional FHIR R4. Corresponde al recurso focal de la solicitud recibida desde el HIS mediante HL7 v2 ORM^O01, o entregada directamente en FHIR. Cuando una orden agrupa varios exámenes se crea un ServiceRequest por examen, todos compartiendo el mismo par system+value en requisition. Sigue el modelo de MinsalServiceRequestLab de la Guía de Implementación de Laboratorio Clínico.",
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identificador del examen dentro de la solicitud (ORC-2.1 / OBR-2.1). Se recomienda tipo PLAC.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "short" : "Identificador de la solicitud agrupadora, compartido por todos los exámenes de una misma orden",
      "comment" : "`system` identifica al establecimiento asignador (URI por código DEIS, ver Casos de uso); `value` conserva el número local de la orden sin modificar. Ambos deben viajar siempre juntos para evitar colisiones entre establecimientos que reutilicen el mismo valor local. Corresponde a ORC-4.1 en ORM-In y a ORC-3.1 / OBR-3.1 en ORU-Out, no a OBR-4.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requisition.system",
      "path" : "ServiceRequest.requisition.system",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requisition.value",
      "path" : "ServiceRequest.requisition.value",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slice abierto: exige la entrada SNOMED CT de imagenología y permite entradas adicionales. Mismo patrón que MinsalServiceRequestLab.",
        "rules" : "open"
      },
      "short" : "Categoría del procedimiento. La fija el Bus en SNOMED CT 363679005 (Imaging); no es un dato que aporte el establecimiento emisor.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category:sctImaging",
      "path" : "ServiceRequest.category",
      "sliceName" : "sctImaging",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363679005",
          "display" : "Imaging (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "short" : "Prioridad derivada de ORC-7.6 / OBR-27.6 (S, A, R) según el ConceptMap PrioridadSolicitudImagenV2AFhir.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Código del procedimiento imagenológico (OBR-4).",
      "comment" : "El código recibido se conserva con el system de su catálogo de origen. La prestación FONASA es obligatoria (decisión D-014): la agrega o verifica el Bus mediante el servicio terminológico antes de validar contra esta guía, de modo que un emisor FHIR puede entregar solo el código local. SNOMED CT y LOINC, cuando existan, se derivan de FONASA.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding",
      "path" : "ServiceRequest.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Se distingue la prestación FONASA homologada (obligatoria), el código del catálogo de origen y las codificaciones derivadas de FONASA.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:fonasa",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "fonasa",
      "short" : "Prestación del arancel FONASA. Obligatoria: la agrega o verifica el Bus mediante el servicio terminológico, en ambos canales de entrada.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:fonasa.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa"
    },
    {
      "id" : "ServiceRequest.code.coding:fonasa.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code.coding:local",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "local",
      "short" : "Código del catálogo de origen (OBR-4). Se conserva siempre que venga, sin reemplazarlo.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:local.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia"
    },
    {
      "id" : "ServiceRequest.code.coding:local.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code.coding:snomed",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "snomed",
      "short" : "Codificación SNOMED CT derivada de FONASA por el servicio terminológico.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.code.coding:loinc",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "loinc",
      "short" : "Codificación LOINC derivada de FONASA por el servicio terminológico.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:loinc.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "ServiceRequest.code.text",
      "path" : "ServiceRequest.code.text",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Fecha u hora prevista de realización del examen (OBR-27.1 / OBR-36.1).",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "short" : "Fecha y hora de generación de la solicitud en el sistema de origen (ORC-9.1), no la fecha prevista de ejecución.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "Servicio ejecutante de imagenología (ORC-2.2 / ORC-4.2 / OBR-4.3, que son redundantes entre sí y deben validarse por consistencia).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Motivo del estudio (OBR-31.2), opcional en ORM-In. Se conserva como texto cuando el emisor no lo codifica.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "short" : "Informe radiológico previo que motiva el estudio, cuando el solicitante lo referencia.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "short" : "Información clínica de la solicitud (OBR-13)."
    }]
  }
}

```
