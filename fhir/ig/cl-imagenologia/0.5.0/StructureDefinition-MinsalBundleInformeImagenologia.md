# Bundle de Informe de Imagenología MINSAL - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de Informe de Imagenología MINSAL**

## Resource Profile: Bundle de Informe de Imagenología MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:MinsalBundleInformeImagenologia |

 
Perfil para el envío transaccional del informe radiológico y, cuando exista dato DICOM, del estudio imagenológico asociado. Exige exactamente una entrada InformeRadiologicoMinsal. Es el artefacto que sostiene la trazabilidad del flujo ORU^R01: identifier conserva el MSH-10 del mensaje de origen, que en esta interfaz es la única red de seguridad, porque el emisor no reintenta. Sigue el modelo de MinsalBundleResultadoLaboratorio. 

**Usages:**

* Examples for this Perfil: [Bundle/BundleInformeImagenEjemplo](Bundle-BundleInformeImagenEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-MinsalBundleInformeImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalBundleInformeImagenologia.csv), [Excel](StructureDefinition-MinsalBundleInformeImagenologia.xlsx), [Schematron](StructureDefinition-MinsalBundleInformeImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalBundleInformeImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia",
  "version" : "0.5.0",
  "name" : "MinsalBundleInformeImagenologia",
  "title" : "Bundle de Informe de Imagenología MINSAL",
  "status" : "draft",
  "date" : "2026-11-02T11:03:04-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para el envío transaccional del informe radiológico y, cuando exista dato DICOM, del estudio imagenológico asociado. Exige exactamente una entrada InformeRadiologicoMinsal. Es el artefacto que sostiene la trazabilidad del flujo ORU^R01: identifier conserva el MSH-10 del mensaje de origen, que en esta interfaz es la única red de seguridad, porque el emisor no reintenta. Sigue el modelo de MinsalBundleResultadoLaboratorio.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "constraint" : [{
        "key" : "informe-estudio-referenciado",
        "severity" : "error",
        "human" : "Cuando el Bundle contiene entradas de estudio imagenológico (ImagingStudy), el informe debe referenciarlas en imagingStudy.",
        "expression" : "entry.resource.ofType(ImagingStudy).exists() implies entry.resource.ofType(DiagnosticReport).imagingStudy.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia"
      },
      {
        "key" : "bundle-informe-put-condicional",
        "severity" : "error",
        "human" : "El informe se crea o actualiza con actualización condicional por identificador (DiagnosticReport?identifier=...): crea si no existe y actualiza si existe, sin consulta previa (D-025).",
        "expression" : "entry.where(resource is DiagnosticReport).all(request.method = 'PUT' and request.url.startsWith('DiagnosticReport?identifier='))",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia"
      },
      {
        "key" : "bundle-estudio-put-condicional",
        "severity" : "error",
        "human" : "La entrada del estudio se envía como actualización condicional por identificador (ImagingStudy?identifier=...), para que reenviar el mismo evento de disponibilidad no duplique el estudio.",
        "expression" : "entry.where(resource is ImagingStudy).all(request.method = 'PUT' and request.url.startsWith('ImagingStudy?identifier='))",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Identificador del mensaje HL7 v2 de origen (MSH-10.1)",
      "comment" : "La interfaz de referencia ORU-Out v1.3 establece que el RIS no efectúa gestión de errores ni reintento: la trazabilidad del mensaje es el único mecanismo para detectar y reprocesar un informe perdido.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Fecha y hora del evento de origen (MSH-7.1)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Bundle.entry:informe",
      "path" : "Bundle.entry",
      "sliceName" : "informe",
      "short" : "Informe radiológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DiagnosticReport",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.request",
      "path" : "Bundle.entry.request",
      "comment" : "Actualización condicional: el servidor crea el informe si no existe y lo actualiza si existe, sin consulta previa; las versiones sucesivas (P, F, C, A, D) quedan en el historial del mismo recurso. Sin Accession Number ni número de orden del ejecutante, el informe va a conciliación (D-025).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:informe.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "DiagnosticReport?identifier=[system del Accession Number]|[Accession Number]; si falta, DiagnosticReport?identifier=[system del número de orden del ejecutante]|[número] (D-025)"
    },
    {
      "id" : "Bundle.entry:estudio",
      "path" : "Bundle.entry",
      "sliceName" : "estudio",
      "short" : "Estudio imagenológico asociado, cuando el Bus dispone de dato DICOM",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:estudio.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ImagingStudy",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"]
      }]
    },
    {
      "id" : "Bundle.entry:estudio.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:estudio.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "ImagingStudy?identifier=urn:dicom:uid|[Study Instance UID], o por Accession Number cuando el UID no está disponible (mismo patrón que MinsalBundleEstudioImagenologia)"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "short" : "Paciente del informe, reconstruido por el Bus desde el MPI (D-001) y conforme al perfil de paciente de NID",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:paciente.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organizacion",
      "path" : "Bundle.entry",
      "sliceName" : "organizacion",
      "short" : "Establecimiento o servicio ejecutante, cuando se envía junto con la transacción en vez de asumirse preexistente",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organizacion.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
      }]
    }]
  }
}

```
