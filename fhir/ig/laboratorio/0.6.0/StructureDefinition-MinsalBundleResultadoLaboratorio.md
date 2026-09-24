# Bundle de Resultado de Laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de Resultado de Laboratorio MINSAL**

## Resource Profile: Bundle de Resultado de Laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleResultadoLaboratorio | *Version*:0.6.0 |
| Draft as of 2026-09-23 | *Computable Name*:MinsalBundleResultadoLaboratorio |

 
Perfil para el envío transaccional del resultado de una o más prestaciones de laboratorio: el informe (`DiagnosticReport`, perfil `ResultadoDiagnosticoLaboratorio`) y, cuando el establecimiento opta por informar también el dato atómico por analito (Caso de uso 3), sus resultados individuales (`Observation`, perfil `MinsalObservacionLaboratorio`). Simétrico a `MinsalBundleSolicitudLaboratorio` del lado de la solicitud. Paciente y establecimiento ejecutor se asumen preexistentes en el servidor de destino (mismo criterio que en la solicitud); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la transacción en vez de asumir su preexistencia. 

**Usages:**

* Examples for this Profile: [Bundle/BundleResultadoMultipleEjemplo](Bundle-BundleResultadoMultipleEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-MinsalBundleResultadoLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalBundleResultadoLaboratorio.csv), [Excel](StructureDefinition-MinsalBundleResultadoLaboratorio.xlsx), [Schematron](StructureDefinition-MinsalBundleResultadoLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalBundleResultadoLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleResultadoLaboratorio",
  "version" : "0.6.0",
  "name" : "MinsalBundleResultadoLaboratorio",
  "title" : "Bundle de Resultado de Laboratorio MINSAL",
  "status" : "draft",
  "date" : "2026-09-23T17:16:30-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para el envío transaccional del resultado de una o más prestaciones de laboratorio: el informe (`DiagnosticReport`, perfil `ResultadoDiagnosticoLaboratorio`) y, cuando el establecimiento opta por informar también el dato atómico por analito (Caso de uso 3), sus resultados individuales (`Observation`, perfil `MinsalObservacionLaboratorio`). Simétrico a `MinsalBundleSolicitudLaboratorio` del lado de la solicitud. Paciente y establecimiento ejecutor se asumen preexistentes en el servidor de destino (mismo criterio que en la solicitud); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la transacción en vez de asumir su preexistencia.",
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
        "key" : "resultado-observaciones-referenciadas",
        "severity" : "error",
        "human" : "Cuando el Bundle incluye entradas de Observation (MinsalObservacionLaboratorio), el DiagnosticReport (entrada `informe`) debe referenciarlas todas mediante `result`, para que no queden resultados atomizados sueltos sin vínculo desde el informe.",
        "expression" : "entry.resource.ofType(Observation).count() = entry.resource.ofType(DiagnosticReport).result.count()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleResultadoLaboratorio"
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
      "id" : "Bundle.entry:informe",
      "path" : "Bundle.entry",
      "sliceName" : "informe",
      "short" : "Informe de resultado de laboratorio",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "URI de identificación del recurso dentro del Bundle (urn:uuid, recurso nuevo)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DiagnosticReport",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/ResultadoDiagnosticoLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.request",
      "path" : "Bundle.entry.request",
      "short" : "Petición de creación de recurso",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:informe.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:informe.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "DiagnosticReport"
    },
    {
      "id" : "Bundle.entry:observacion",
      "path" : "Bundle.entry",
      "sliceName" : "observacion",
      "short" : "Resultado atomizado por analito (Caso de uso 3), cuando el establecimiento lo informa junto con el informe",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observacion.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "URI de identificación del recurso dentro del Bundle (urn:uuid, recurso nuevo)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observacion.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observacion.request",
      "path" : "Bundle.entry.request",
      "short" : "Petición de creación de recurso",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observacion.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:observacion.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Observation"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "short" : "Paciente del resultado, cuando se envía junto con la transacción en vez de asumirse preexistente",
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
      "id" : "Bundle.entry:organizacion",
      "path" : "Bundle.entry",
      "sliceName" : "organizacion",
      "short" : "Laboratorio ejecutor, cuando se envía junto con la transacción en vez de asumirse preexistente",
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
    },
    {
      "id" : "Bundle.entry:especimen",
      "path" : "Bundle.entry",
      "sliceName" : "especimen",
      "short" : "Espécimen asociado al resultado, cuando se envía junto con la transacción en vez de asumirse preexistente",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:especimen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Specimen",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"]
      }]
    }]
  }
}

```
