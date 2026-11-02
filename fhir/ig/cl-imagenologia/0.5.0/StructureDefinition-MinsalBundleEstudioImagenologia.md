# Bundle de Disponibilidad de Estudio Imagenológico MINSAL - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de Disponibilidad de Estudio Imagenológico MINSAL**

## Resource Profile: Bundle de Disponibilidad de Estudio Imagenológico MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleEstudioImagenologia | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:MinsalBundleEstudioImagenologia |

 
Perfil para el evento de disponibilidad de un estudio imagenológico: informa que un estudio está registrado o que sus imágenes están disponibles en el PACS/VNA del proveedor, con o sin informe radiológico (D-017, D-019). El evento puede originarse en el RIS, en el PACS o en un adaptador de integración; el proveedor lo entrega al Bus como transacción FHIR. El estudio viaja como actualización condicional por identificador, de modo que reenviar el mismo evento no duplica el recurso. Incluye el paciente, que el Bus resuelve contra el MPI antes de publicar (D-001, D-012). No transporta imágenes ni credenciales. 

**Usages:**

* Examples for this Perfil: [Bundle/BundleDisponibilidadEstudioEjemplo](Bundle-BundleDisponibilidadEstudioEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-MinsalBundleEstudioImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalBundleEstudioImagenologia.csv), [Excel](StructureDefinition-MinsalBundleEstudioImagenologia.xlsx), [Schematron](StructureDefinition-MinsalBundleEstudioImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalBundleEstudioImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleEstudioImagenologia",
  "version" : "0.5.0",
  "name" : "MinsalBundleEstudioImagenologia",
  "title" : "Bundle de Disponibilidad de Estudio Imagenológico MINSAL",
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
  "description" : "Perfil para el evento de disponibilidad de un estudio imagenológico: informa que un estudio está registrado o que sus imágenes están disponibles en el PACS/VNA del proveedor, con o sin informe radiológico (D-017, D-019). El evento puede originarse en el RIS, en el PACS o en un adaptador de integración; el proveedor lo entrega al Bus como transacción FHIR. El estudio viaja como actualización condicional por identificador, de modo que reenviar el mismo evento no duplica el recurso. Incluye el paciente, que el Bus resuelve contra el MPI antes de publicar (D-001, D-012). No transporta imágenes ni credenciales.",
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
        "key" : "bundle-estudio-put-condicional",
        "severity" : "error",
        "human" : "La entrada del estudio se envía como actualización condicional por identificador (ImagingStudy?identifier=...), para que reenviar el mismo evento de disponibilidad no duplique el estudio.",
        "expression" : "entry.where(resource is ImagingStudy).all(request.method = 'PUT' and request.url.startsWith('ImagingStudy?identifier='))",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleEstudioImagenologia"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Identificador único del evento de disponibilidad en el sistema de origen",
      "comment" : "Es la clave de deduplicación: el Bus descarta un evento cuyo identifier ya procesó. Un evento nuevo para el mismo estudio (por ejemplo, cuando se agregan series) lleva un identifier distinto.",
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
      "short" : "Fecha y hora en que el sistema de origen generó el evento",
      "comment" : "Determina el orden de aplicación: el Bus no aplica un evento cuyo timestamp es anterior al del último evento aplicado al mismo estudio, para que un evento atrasado no revierta un estado más reciente.",
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
      "id" : "Bundle.entry:estudio",
      "path" : "Bundle.entry",
      "sliceName" : "estudio",
      "short" : "Estudio imagenológico, enviado como actualización condicional",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:estudio.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:estudio.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ImagingStudy",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:estudio.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:estudio.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry:estudio.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "ImagingStudy?identifier=urn:dicom:uid|[Study Instance UID], o ImagingStudy?identifier=[system del Accession Number]|[Accession Number] cuando el UID no está disponible"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "short" : "Paciente del estudio, enviado completo y conforme al perfil de paciente de NID (D-012); el Bus lo resuelve contra el MPI antes de publicar (D-001)",
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
      "short" : "Establecimiento o proveedor, cuando se envía junto con la transacción en vez de asumirse preexistente",
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
