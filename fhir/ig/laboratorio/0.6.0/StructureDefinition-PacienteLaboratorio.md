# Paciente de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de Laboratorio**

## Resource Profile: Paciente de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio | *Version*:0.6.0 |
| Draft as of 2026-09-23 | *Computable Name*:PacienteLaboratorio |

 
Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende `MINSALPaciente` (guía NID, Núcleo de Interoperabilidad de Datos), el núcleo normativo real de MINSAL para identidad de paciente, en vez del perfil más laxo de CL-Core. Cierra [DT-009]: la guía ya documentaba un flujo de resolución de identidad contra el MPI de NID, sin declarar la dependencia de paquete formal hasta esta versión. 

**Usages:**

* Use this Profile: [Bundle de Resultado de Laboratorio MINSAL](StructureDefinition-MinsalBundleResultadoLaboratorio.md) and [Bundle de Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalBundleSolicitudLaboratorio.md)
* Refer to this Profile: [Espécimen de Laboratorio MINSAL](StructureDefinition-MinsalEspecimenLaboratorio.md), [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md), [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md) and [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)
* Examples for this Profile: [Patient/PacienteEjemplo](Patient-PacienteEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-PacienteLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PacienteLaboratorio.csv), [Excel](StructureDefinition-PacienteLaboratorio.xlsx), [Schematron](StructureDefinition-PacienteLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PacienteLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio",
  "version" : "0.6.0",
  "name" : "PacienteLaboratorio",
  "title" : "Paciente de Laboratorio",
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
  "description" : "Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende `MINSALPaciente` (guía NID, Núcleo de Interoperabilidad de Datos), el núcleo normativo real de MINSAL para identidad de paciente, en vez del perfil más laxo de CL-Core. Cierra [DT-009]: la guía ya documentaba un flujo de resolución de identidad contra el MPI de NID, sin declarar la dependencia de paquete formal hasta esta versión.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "short" : "Cuando el identificador es el RUN, se usa el dominio de identidad publicado por NID para pacientes (`https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run`, ver NamingSystem propio de esta guía)."
    }]
  }
}

```
