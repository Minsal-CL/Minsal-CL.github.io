# Profesional de Laboratorio MINSAL - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional de Laboratorio MINSAL**

## Resource Profile: Profesional de Laboratorio MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio | *Version*:0.6.0 |
| Draft as of 2026-09-23 | *Computable Name*:MinsalPractitionerLaboratorio |

 
Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende `MINSALPrestadorProfesional` (guía NID/HPD, Núcleo de Interoperabilidad de Datos), el núcleo normativo real de MINSAL para prestadores individuales, en vez del perfil más laxo de CL-Core. Cierra [DT-009] junto con `PacienteLaboratorio` y `OrganizacionParticipanteLaboratorio`. 

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
  "version" : "0.6.0",
  "name" : "MinsalPractitionerLaboratorio",
  "title" : "Profesional de Laboratorio MINSAL",
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
  "description" : "Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende `MINSALPrestadorProfesional` (guía NID/HPD, Núcleo de Interoperabilidad de Datos), el núcleo normativo real de MINSAL para prestadores individuales, en vez del perfil más laxo de CL-Core. Cierra [DT-009] junto con `PacienteLaboratorio` y `OrganizacionParticipanteLaboratorio`.",
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
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    }]
  }
}

```
