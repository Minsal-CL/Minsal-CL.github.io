# Espécimen de Laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Espécimen de Laboratorio MINSAL**

## Resource Profile: Espécimen de Laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio | *Version*:0.6.0 |
| Draft as of 2026-09-23 | *Computable Name*:MinsalEspecimenLaboratorio |

 
Perfil para representar la muestra biológica asociada a una solicitud de laboratorio, cuando el sistema de origen informa esta información en el mensaje HL7 v2 (grupo SPM/SAC de OML^O21, mensaje objetivo para laboratorio, o en ORU^R01 al momento del resultado; ORM^O01 no incluye SPM/SAC en el estándar base, ver [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md)). 

**Usages:**

* Use this Profile: [Bundle de Resultado de Laboratorio MINSAL](StructureDefinition-MinsalBundleResultadoLaboratorio.md)
* Refer to this Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md), [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md) and [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)
* Examples for this Profile: [Specimen/EspecimenEjemplo](Specimen-EspecimenEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-MinsalEspecimenLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalEspecimenLaboratorio.csv), [Excel](StructureDefinition-MinsalEspecimenLaboratorio.xlsx), [Schematron](StructureDefinition-MinsalEspecimenLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalEspecimenLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio",
  "version" : "0.6.0",
  "name" : "MinsalEspecimenLaboratorio",
  "title" : "Espécimen de Laboratorio MINSAL",
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
  "description" : "Perfil para representar la muestra biológica asociada a una solicitud de laboratorio, cuando el sistema de origen informa esta información en el mensaje HL7 v2 (grupo SPM/SAC de OML^O21, mensaje objetivo para laboratorio, o en ORU^R01 al momento del resultado; ORM^O01 no incluye SPM/SAC en el estándar base, ver [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.html)).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.status",
      "path" : "Specimen.status",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collector",
      "path" : "Specimen.collection.collector",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.type",
      "path" : "Specimen.container.type",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity",
      "path" : "Specimen.container.specimenQuantity",
      "mustSupport" : true
    }]
  }
}

```
