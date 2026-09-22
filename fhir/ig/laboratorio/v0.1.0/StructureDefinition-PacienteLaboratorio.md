# Paciente de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de Laboratorio**

## Resource Profile: Paciente de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio | *Version*:0.5.0 |
| Draft as of 2026-09-21 | *Computable Name*:PacienteLaboratorio |

 
Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende el perfil de paciente de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Patient de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. 

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
  "version" : "0.5.0",
  "name" : "PacienteLaboratorio",
  "title" : "Paciente de Laboratorio",
  "status" : "draft",
  "date" : "2026-09-21T17:12:23-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende el perfil de paciente de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Patient de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
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
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "description" : "Se distingue el identificador nacional (RUN) de otros identificadores locales o extranjeros.",
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo de documento de identificación (RUN u otro), según CL-Core. Cuando el paciente cuente con RUN vigente, debe registrarse con este tipo."
    },
    {
      "id" : "Patient.identifier:RUN",
      "path" : "Patient.identifier",
      "sliceName" : "RUN",
      "short" : "RUN del paciente, cuando exista (CL-Core: de poseer RUN vigente, este debe ser ingresado)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:RUN.use",
      "path" : "Patient.identifier.use",
      "patternCode" : "official"
    },
    {
      "id" : "Patient.identifier:RUN.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
          "code" : "01",
          "display" : "Run"
        }]
      }
    },
    {
      "id" : "Patient.identifier:RUN.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run"
    },
    {
      "id" : "Patient.identifier:RUN.value",
      "path" : "Patient.identifier.value",
      "short" : "Número de RUN, incluyendo dígito verificador (formato \"12345678-5\")"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mustSupport" : true
    }]
  }
}

```
