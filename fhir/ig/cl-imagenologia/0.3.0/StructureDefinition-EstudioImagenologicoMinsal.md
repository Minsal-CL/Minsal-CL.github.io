# Estudio Imagenológico MINSAL - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estudio Imagenológico MINSAL**

## Resource Profile: Estudio Imagenológico MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:EstudioImagenologicoMinsal |

 
Perfil para representar el estudio de imagen almacenado en el PACS: transporta el Accession Number, la modalidad DICOM y, cuando existan, el Study Instance UID y el endpoint de recuperación (WADO-RS). No forma parte del conjunto obligatorio de la fase 1: el Bus crea este recurso sólo cuando dispone de dato DICOM real (Study Instance UID o endpoint). Cuando el estudio no se crea, la trazabilidad se sostiene con el Accession Number registrado en InformeRadiologicoMinsal.identifier. 

**Usages:**

* Use this Profile: [Bundle de Informe de Imagenología MINSAL](StructureDefinition-MinsalBundleInformeImagenologia.md)
* Refer to this Profile: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md)
* Examples for this Profile: [ImagingStudy/EstudioTcCerebroEjemplo](ImagingStudy-EstudioTcCerebroEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-EstudioImagenologicoMinsal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EstudioImagenologicoMinsal.csv), [Excel](StructureDefinition-EstudioImagenologicoMinsal.xlsx), [Schematron](StructureDefinition-EstudioImagenologicoMinsal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EstudioImagenologicoMinsal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal",
  "version" : "0.3.0",
  "name" : "EstudioImagenologicoMinsal",
  "title" : "Estudio Imagenológico MINSAL",
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
  "description" : "Perfil para representar el estudio de imagen almacenado en el PACS: transporta el Accession Number, la modalidad DICOM y, cuando existan, el Study Instance UID y el endpoint de recuperación (WADO-RS). No forma parte del conjunto obligatorio de la fase 1: el Bus crea este recurso sólo cuando dispone de dato DICOM real (Study Instance UID o endpoint). Cuando el estudio no se crea, la trazabilidad se sostiene con el Accession Number registrado en InformeRadiologicoMinsal.identifier.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImagingStudy",
      "path" : "ImagingStudy"
    },
    {
      "id" : "ImagingStudy.identifier",
      "path" : "ImagingStudy.identifier",
      "short" : "Accession Number (OBR-18.1, tipo ACSN) y, cuando exista, el Study Instance UID DICOM con system urn:dicom:uid.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.status",
      "path" : "ImagingStudy.status",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.modality",
      "path" : "ImagingStudy.modality",
      "short" : "Modalidad DICOM del estudio (CT, MR, MG, US, CR, DX...). No viaja como tal en la mensajería: se obtiene del objeto DICOM cuando el Bus consulta al PACS. Si no se resuelve desde una fuente DICOM, el estudio no se crea y el informe se publica igual.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.subject",
      "path" : "ImagingStudy.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.started",
      "path" : "ImagingStudy.started",
      "short" : "Fecha y hora de inicio del examen (ORC-7.4).",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.endpoint",
      "path" : "ImagingStudy.endpoint",
      "short" : "Endpoint DICOMweb (WADO-RS) desde el cual recuperar las imágenes del estudio.",
      "mustSupport" : true
    }]
  }
}

```
