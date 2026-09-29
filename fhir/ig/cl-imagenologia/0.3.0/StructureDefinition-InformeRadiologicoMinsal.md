# Informe Radiológico MINSAL - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informe Radiológico MINSAL**

## Resource Profile: Informe Radiológico MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:InformeRadiologicoMinsal |

 
Perfil para representar el informe radiológico generado por el RIS y recibido mediante HL7 v2 ORU^R01, incluyendo el informe en PDF codificado en Base64. Sigue el modelo de ResultadoDiagnosticoLaboratorio de la Guía de Implementación de Laboratorio Clínico, con dos divergencias documentadas que impone la interfaz ORU-Out v1.3: basedOn y performer son opcionales. 

**Usages:**

* Use this Profile: [Bundle de Informe de Imagenología MINSAL](StructureDefinition-MinsalBundleInformeImagenologia.md)
* Refer to this Profile: [Solicitud de Examen Imagenológico MINSAL](StructureDefinition-MinsalServiceRequestImagen.md)
* Examples for this Profile: [DiagnosticReport/InformeSinSolicitudEjemplo](DiagnosticReport-InformeSinSolicitudEjemplo.md) and [DiagnosticReport/InformeTcCerebroEjemplo](DiagnosticReport-InformeTcCerebroEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-InformeRadiologicoMinsal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-InformeRadiologicoMinsal.csv), [Excel](StructureDefinition-InformeRadiologicoMinsal.xlsx), [Schematron](StructureDefinition-InformeRadiologicoMinsal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "InformeRadiologicoMinsal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal",
  "version" : "0.3.0",
  "name" : "InformeRadiologicoMinsal",
  "title" : "Informe Radiológico MINSAL",
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
  "description" : "Perfil para representar el informe radiológico generado por el RIS y recibido mediante HL7 v2 ORU^R01, incluyendo el informe en PDF codificado en Base64. Sigue el modelo de ResultadoDiagnosticoLaboratorio de la Guía de Implementación de Laboratorio Clínico, con dos divergencias documentadas que impone la interfaz ORU-Out v1.3: basedOn y performer son opcionales.",
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
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport",
      "constraint" : [{
        "key" : "informe-final-con-issued",
        "severity" : "error",
        "human" : "Un informe en estado final, corrected o amended debe declarar la fecha de validación (issued, OBR-22), que en ORU-Out v1.3 es un campo Requerido.",
        "expression" : "status in ('final' | 'corrected' | 'amended') implies issued.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"
      }]
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Identificador del informe. Debe incluir el Accession Number (OBR-18.1) con tipo ACSN cuando el emisor lo envíe.",
      "comment" : "El Accession Number es el eje de trazabilidad entre orden, estudio e informe, pero OBR-18.1 está declarado Opcional en ORU-Out v1.3. Por eso el perfil no lo exige por cardinalidad: la obligación de enviarlo se establece en el acuerdo de integración con el establecimiento y se verifica en la certificación, no en la validación estructural, que rechazaría informes clínicos legítimos sin posibilidad de reenvío (ORU-Out no contempla reintento del emisor).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "Solicitud que originó el informe, resuelta a partir de ORC-2/ORC-3 u OBR-2/OBR-3.",
      "comment" : "Divergencia deliberada respecto de ResultadoDiagnosticoLaboratorio, donde basedOn es 1..*. ORU-Out v1.3 establece que Enterprise Imaging envía todos los informes generados, no sólo los correspondientes a una orden registrada en el HIS, de modo que el modelo debe aceptar informes sin solicitud previa. Cuando la solicitud existe, la referencia es obligatoria por acuerdo de integración.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "Estado del informe derivado de OBX-11, que es el campo Requerido en ORU-Out, según el ConceptMap EstadoInformeRadiologicoV2AFhir. OBR-25 es opcional y sólo se usa para validación cruzada.",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Categoría del informe. Exige la categoría de radiología (v2-0074 RAD), que sostiene la consulta ?category=RAD de los casos de uso.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category:radiologia",
      "path" : "DiagnosticReport.category",
      "sliceName" : "radiologia",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "RAD",
          "display" : "Radiology"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Código del examen informado (OBR-4 del ORU^R01), con la prestación FONASA homologada (decisión D-014).",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding",
      "path" : "DiagnosticReport.code.coding",
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
      "id" : "DiagnosticReport.code.coding:fonasa",
      "path" : "DiagnosticReport.code.coding",
      "sliceName" : "fonasa",
      "short" : "Prestación del arancel FONASA. Obligatoria: la agrega o verifica el Bus mediante el servicio terminológico, en ambos canales de entrada.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:fonasa.system",
      "path" : "DiagnosticReport.code.coding.system",
      "min" : 1,
      "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa"
    },
    {
      "id" : "DiagnosticReport.code.coding:fonasa.code",
      "path" : "DiagnosticReport.code.coding.code",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.code.coding:local",
      "path" : "DiagnosticReport.code.coding",
      "sliceName" : "local",
      "short" : "Código del catálogo de origen (OBR-4). Se conserva siempre que venga, sin reemplazarlo.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:local.system",
      "path" : "DiagnosticReport.code.coding.system",
      "min" : 1,
      "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia"
    },
    {
      "id" : "DiagnosticReport.code.coding:local.code",
      "path" : "DiagnosticReport.code.coding.code",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.code.coding:snomed",
      "path" : "DiagnosticReport.code.coding",
      "sliceName" : "snomed",
      "short" : "Codificación SNOMED CT derivada de FONASA por el servicio terminológico.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:snomed.system",
      "path" : "DiagnosticReport.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "DiagnosticReport.code.coding:loinc",
      "path" : "DiagnosticReport.code.coding",
      "sliceName" : "loinc",
      "short" : "Codificación LOINC derivada de FONASA por el servicio terminológico.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:loinc.system",
      "path" : "DiagnosticReport.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "DiagnosticReport.code.text",
      "path" : "DiagnosticReport.code.text",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "short" : "Fecha y hora de realización del examen (ORC-7.4 / ORC-7.5, ambos Requeridos en ORU-Out). Usar Period cuando se informen inicio y término.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "short" : "Fecha y hora de validación del informe (OBR-22). Es la fecha que gobierna la disponibilidad clínica del documento.",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "comment" : "Divergencia deliberada respecto de ResultadoDiagnosticoLaboratorio, donde performer es 1..*. En ORU-Out v1.3 el único profesional del mensaje es OBR-32 y está declarado Opcional, de modo que exigir performer rechazaría informes válidos. Cuando el establecimiento ejecutante se resuelve desde MSH-4, el Bus lo informa aquí.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "short" : "Médico radiólogo que emite el informe (OBR-32).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "short" : "Estudio de imagen asociado. Se informa cuando existe el recurso, es decir cuando el Bus dispone de Study Instance UID o de endpoint DICOMweb.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "min" : 1,
      "patternCode" : "application/pdf",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.data",
      "path" : "DiagnosticReport.presentedForm.data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.title",
      "path" : "DiagnosticReport.presentedForm.title",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.creation",
      "path" : "DiagnosticReport.presentedForm.creation",
      "short" : "Fecha y hora de creación del informe (OBX-14), distinta de la fecha de validación (issued, OBR-22).",
      "mustSupport" : true
    }]
  }
}

```
