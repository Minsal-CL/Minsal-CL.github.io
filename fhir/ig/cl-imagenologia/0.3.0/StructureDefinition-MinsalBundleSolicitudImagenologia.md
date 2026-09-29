# Bundle de Solicitud de Imagenología MINSAL - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de Solicitud de Imagenología MINSAL**

## Resource Profile: Bundle de Solicitud de Imagenología MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:MinsalBundleSolicitudImagenologia |

 
Perfil para el envío transaccional de uno o más exámenes imagenológicos que pertenecen a una misma orden. Exige al menos una entrada MinsalServiceRequestImagen y valida que todas las entradas de solicitud comparten el mismo requisition. El paciente es obligatorio y conforme al perfil de NID (decisión D-012): en el canal FHIR directo lo envía el establecimiento, y en el canal HL7 v2 el Bus lo reconstruye desde el MPI (D-001). En ambos casos el Bus lo resuelve contra el MPI antes de publicar. Profesional solicitante y establecimiento se incluyen como entradas opcionales, para quien decida enviarlos en vez de asumir su preexistencia. Sigue el modelo de MinsalBundleSolicitudLaboratorio. 

**Usages:**

* Examples for this Profile: [Bundle/BundleSolicitudImagenEjemplo](Bundle-BundleSolicitudImagenEjemplo.md) and [Bundle/BundleSolicitudImagenFhirDirectoEjemplo](Bundle-BundleSolicitudImagenFhirDirectoEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-MinsalBundleSolicitudImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalBundleSolicitudImagenologia.csv), [Excel](StructureDefinition-MinsalBundleSolicitudImagenologia.xlsx), [Schematron](StructureDefinition-MinsalBundleSolicitudImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalBundleSolicitudImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia",
  "version" : "0.3.0",
  "name" : "MinsalBundleSolicitudImagenologia",
  "title" : "Bundle de Solicitud de Imagenología MINSAL",
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
  "description" : "Perfil para el envío transaccional de uno o más exámenes imagenológicos que pertenecen a una misma orden. Exige al menos una entrada MinsalServiceRequestImagen y valida que todas las entradas de solicitud comparten el mismo requisition. El paciente es obligatorio y conforme al perfil de NID (decisión D-012): en el canal FHIR directo lo envía el establecimiento, y en el canal HL7 v2 el Bus lo reconstruye desde el MPI (D-001). En ambos casos el Bus lo resuelve contra el MPI antes de publicar. Profesional solicitante y establecimiento se incluyen como entradas opcionales, para quien decida enviarlos en vez de asumir su preexistencia. Sigue el modelo de MinsalBundleSolicitudLaboratorio.",
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
        "key" : "solicitud-imagen-requisition-compartido",
        "severity" : "error",
        "human" : "Cuando el Bundle contiene más de una entrada de solicitud (MinsalServiceRequestImagen), todas deben compartir el mismo par system+value en requisition, ya que representan exámenes de una misma orden agrupadora.",
        "expression" : "entry.resource.ofType(ServiceRequest).requisition.system.distinct().count() <= 1 and entry.resource.ofType(ServiceRequest).requisition.value.distinct().count() <= 1",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Identificador del mensaje de origen (MSH-10.1 cuando la transacción proviene de HL7 v2)",
      "comment" : "Es la cadena de trazabilidad entre el mensaje HL7 v2 recibido y los recursos publicados. Un emisor que entregue FHIR directamente asigna su propio identificador de envío.",
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
      "id" : "Bundle.entry:solicitud",
      "path" : "Bundle.entry",
      "sliceName" : "solicitud",
      "short" : "Examen imagenológico solicitado",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:solicitud.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "URI de identificación del recurso dentro del Bundle (urn:uuid, recurso nuevo)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:solicitud.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:solicitud.request",
      "path" : "Bundle.entry.request",
      "short" : "Petición de creación de recurso",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:solicitud.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:solicitud.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "ServiceRequest"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "short" : "Paciente de la solicitud, conforme al perfil de paciente de NID (D-012)",
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
      "id" : "Bundle.entry:profesional",
      "path" : "Bundle.entry",
      "sliceName" : "profesional",
      "short" : "Profesional (solicitante u otro participante), cuando se envía junto con la transacción en vez de asumirse preexistente",
      "comment" : "Un PractitionerRole referenciado desde requester no viaja como entrada del Bundle: el slicing discrimina por perfil y PractitionerRole no tiene perfil propio en esta versión, de modo que se asume preexistente en el servidor de destino.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:profesional.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia"]
      }]
    },
    {
      "id" : "Bundle.entry:organizacion",
      "path" : "Bundle.entry",
      "sliceName" : "organizacion",
      "short" : "Establecimiento de origen o servicio ejecutante, cuando se envía junto con la transacción en vez de asumirse preexistente",
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
