# Profesional de Laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional de Laboratorio MINSAL**

## Resource Profile: Profesional de Laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio | *Version*:0.5.1 |
| Draft as of 2026-09-22 | *Computable Name*:MinsalPractitionerLaboratorio |

 
Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende el perfil de prestador de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Practitioner de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. 

**Usages:**

* Use this Profile: [Bundle de Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalBundleSolicitudLaboratorio.md)
* Refer to this Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md), [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md) and [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)
* Examples for this Profile: [Practitioner/ProfesionalSolicitanteEjemplo](Practitioner-ProfesionalSolicitanteEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-MinsalPractitionerLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalPractitionerLaboratorio.csv), [Excel](StructureDefinition-MinsalPractitionerLaboratorio.xlsx), [Schematron](StructureDefinition-MinsalPractitionerLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalPractitionerLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio",
  "version" : "0.5.1",
  "name" : "MinsalPractitionerLaboratorio",
  "title" : "Profesional de Laboratorio MINSAL",
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
  "description" : "Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende el perfil de prestador de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Practitioner de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
