# Resultado atomizado de laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultado atomizado de laboratorio MINSAL**

## Resource Profile: Resultado atomizado de laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio | *Version*:0.5.1 |
| Draft as of 2026-09-22 | *Computable Name*:MinsalObservacionLaboratorio |

 
Perfil para representar un resultado individual de una prestación de laboratorio (un analito o un resultado cualitativo), cuando el establecimiento opta por informar el dato atómico además de o en vez del informe PDF (ver Casos de uso, Caso de uso 3). Un panel de exámenes con varios analitos (ej. Hemograma) se representa con varias instancias de este perfil, todas enlazadas mediante `basedOn` a la misma `ServiceRequest` de la prestación, sin usar `hasMember` ni `component`. Perfil diseñado con referencia a CH LAB-Report (HL7 Suiza) v2.0.0, adaptado al modelo de solicitud propio de esta guía (ver ENTREGA_DESARROLLO.md). 

**Usages:**

* Use this Profile: [Bundle de Resultado de Laboratorio MINSAL](StructureDefinition-MinsalBundleResultadoLaboratorio.md)
* Refer to this Profile: [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)
* Examples for this Profile: [Observation/ObservacionColesterolFonasaEjemplo](Observation-ObservacionColesterolFonasaEjemplo.md), [Observation/ObservacionGlicemiaCriticaEjemplo](Observation-ObservacionGlicemiaCriticaEjemplo.md) and [Observation/ObservacionHemoglobinaEjemplo](Observation-ObservacionHemoglobinaEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-MinsalObservacionLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalObservacionLaboratorio.csv), [Excel](StructureDefinition-MinsalObservacionLaboratorio.xlsx), [Schematron](StructureDefinition-MinsalObservacionLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalObservacionLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalObservacionLaboratorio",
  "version" : "0.5.1",
  "name" : "MinsalObservacionLaboratorio",
  "title" : "Resultado atomizado de laboratorio MINSAL",
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
  "description" : "Perfil para representar un resultado individual de una prestación de laboratorio (un analito o un resultado cualitativo), cuando el establecimiento opta por informar el dato atómico además de o en vez del informe PDF (ver Casos de uso, Caso de uso 3). Un panel de exámenes con varios analitos (ej. Hemograma) se representa con varias instancias de este perfil, todas enlazadas mediante `basedOn` a la misma `ServiceRequest` de la prestación, sin usar `hasMember` ni `component`. Perfil diseñado con referencia a CH LAB-Report (HL7 Suiza) v2.0.0, adaptado al modelo de solicitud propio de esta guía (ver ENTREGA_DESARROLLO.md).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "comment" : "Referencia a la prestación (ServiceRequest) que originó este resultado. Cuando una misma prestación agrupa varios analitos (ej. Hemograma), cada Observation de cada analito referencia la misma ServiceRequest; el agrupamiento del panel se resuelve por este campo compartido, no por hasMember/component. Puede omitirse cuando el laboratorio opera de forma independiente, sin una solicitud registrada previamente en el Bus (mismo criterio que ResultadoDiagnosticoLaboratorio.basedOn).",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "comment" : "Fijo en 'laboratory'. category:studyType (área de agrupación clínica, ej. hematología) y category:specialty (especialidad del laboratorio, ej. química, microbiología) quedan fuera de esta fase; se evalúan en Fase 2 si se necesita filtrar reportes por área del laboratorio.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "comment" : "Código de la prestación FONASA y/o LOINC del analito específico, mismo catálogo ya usado en MinsalServiceRequestLab.code.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "comment" : "Cuando el resultado es numérico, la unidad debe informarse en UCUM directamente desde el LIS (system fijo en unitsofmeasure.org), sin tabla de homologación intermedia en esta fase (decisión registrada en la propuesta de este perfil).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.value",
      "path" : "Observation.value[x].value",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.unit",
      "path" : "Observation.value[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "comment" : "Solo debe estar presente si value[x] no está presente (invariante obs-6, heredada de la definición base de Observation).",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "comment" : "Se usa el binding base de Observation.interpretation (ObservationInterpretationCodes, extensible, basado en el CodeSystem internacional v3-ObservationInterpretation) para marcar valores críticos (HH/LL) o fuera de rango (H/L), sin crear código propio MINSAL, siguiendo el mismo criterio de reutilización de terminología internacional ya aplicado al motivo de cancelación de Caso de uso 4.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.low",
      "path" : "Observation.referenceRange.low",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.high",
      "path" : "Observation.referenceRange.high",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.text",
      "path" : "Observation.referenceRange.text",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "comment" : "No se usa en esta fase: la agrupación de un panel de exámenes se resuelve por basedOn compartido hacia la misma ServiceRequest, no por hasMember.",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "comment" : "No se usa en esta fase, por el mismo criterio que hasMember.",
      "max" : "0"
    }]
  }
}

```
