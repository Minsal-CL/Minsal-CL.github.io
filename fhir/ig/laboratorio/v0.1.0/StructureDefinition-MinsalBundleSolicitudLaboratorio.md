# Bundle de Solicitud de Laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de Solicitud de Laboratorio MINSAL**

## Resource Profile: Bundle de Solicitud de Laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleSolicitudLaboratorio | *Version*:0.5.1 |
| Draft as of 2026-09-22 | *Computable Name*:MinsalBundleSolicitudLaboratorio |

 
Perfil para el envío transaccional de una o más prestaciones de laboratorio que pertenecen a una misma orden. Exige al menos una entrada `MinsalServiceRequestLab` y valida que todas las entradas de solicitud comparten el mismo `requisition`. Paciente, profesional solicitante y establecimiento se asumen preexistentes en el servidor de destino (resueltos previamente mediante el flujo de identidad descrito en Arquitectura); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la solicitud en vez de asumir su preexistencia. 

**Usages:**

* Examples for this Profile: [Bundle/BundleSolicitudMultipleEjemplo](Bundle-BundleSolicitudMultipleEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-MinsalBundleSolicitudLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalBundleSolicitudLaboratorio.csv), [Excel](StructureDefinition-MinsalBundleSolicitudLaboratorio.xlsx), [Schematron](StructureDefinition-MinsalBundleSolicitudLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalBundleSolicitudLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleSolicitudLaboratorio",
  "version" : "0.5.1",
  "name" : "MinsalBundleSolicitudLaboratorio",
  "title" : "Bundle de Solicitud de Laboratorio MINSAL",
  "status" : "draft",
  "date" : "2026-09-22T09:29:02-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para el envío transaccional de una o más prestaciones de laboratorio que pertenecen a una misma orden. Exige al menos una entrada `MinsalServiceRequestLab` y valida que todas las entradas de solicitud comparten el mismo `requisition`. Paciente, profesional solicitante y establecimiento se asumen preexistentes en el servidor de destino (resueltos previamente mediante el flujo de identidad descrito en Arquitectura); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la solicitud en vez de asumir su preexistencia.",
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
        "key" : "solicitud-requisition-compartido",
        "severity" : "error",
        "human" : "Cuando el Bundle contiene más de una entrada de solicitud (MinsalServiceRequestLab), todas deben compartir el mismo par system+value en requisition, ya que representan prestaciones de una misma orden agrupadora.",
        "expression" : "entry.resource.ofType(ServiceRequest).requisition.system.distinct().count() <= 1 and entry.resource.ofType(ServiceRequest).requisition.value.distinct().count() <= 1",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleSolicitudLaboratorio"
      }]
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
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry:solicitud",
      "path" : "Bundle.entry",
      "sliceName" : "solicitud",
      "short" : "Prestación de laboratorio solicitada",
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
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
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
      "short" : "Paciente de la solicitud, cuando se envía junto con la transacción en vez de asumirse preexistente",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:paciente.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
      }]
    },
    {
      "id" : "Bundle.entry:profesional",
      "path" : "Bundle.entry",
      "sliceName" : "profesional",
      "short" : "Profesional solicitante, cuando se envía junto con la transacción en vez de asumirse preexistente",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:profesional.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio"]
      },
      {
        "code" : "PractitionerRole"
      }]
    },
    {
      "id" : "Bundle.entry:organizacion",
      "path" : "Bundle.entry",
      "sliceName" : "organizacion",
      "short" : "Establecimiento de origen o laboratorio ejecutor, cuando se envía junto con la transacción en vez de asumirse preexistente",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organizacion.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
      }]
    }]
  }
}

```
