# Paciente GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente GES**

## Resource Profile: Paciente GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:PacienteGES |

 
Beneficiario del caso GES. Se identifica por RUN; los datos demográficos viajan una sola vez aquí y no se repiten en cada documento. 

**Usages:**

* Refer to this Perfil: [Caso GES](StructureDefinition-caso-ges.md), [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md), [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md), [Diagnóstico GES](StructureDefinition-diagnostico-ges.md)... Show 5 more, [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md), [Garantía de oportunidad](StructureDefinition-garantia-oportunidad-ges.md), [OA — Orden de atención](StructureDefinition-oa-ges.md), [PO — Prestación otorgada](StructureDefinition-po-ges.md) and [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)
* Examples for this Perfil: [Patient/pac-a](Patient-pac-a.md), [Patient/pac-b](Patient-pac-b.md), [Patient/pac-c](Patient-pac-c.md) and [Patient/pac-d](Patient-pac-d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-paciente-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-paciente-ges.csv), [Excel](StructureDefinition-paciente-ges.xlsx), [Schematron](StructureDefinition-paciente-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "paciente-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges",
  "version" : "0.4.0",
  "name" : "PacienteGES",
  "title" : "Paciente GES",
  "status" : "draft",
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Beneficiario del caso GES. Se identifica por RUN; los datos demográficos viajan una sola vez aquí y no se repiten en cada documento.",
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
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:run",
      "path" : "Patient.identifier",
      "sliceName" : "run",
      "short" : "RUN del beneficiario (runPaciente + dvPaciente)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:run.use",
      "path" : "Patient.identifier.use",
      "patternCode" : "official"
    },
    {
      "id" : "Patient.identifier:run.type",
      "path" : "Patient.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
          "code" : "1",
          "display" : "RUN"
        }]
      }
    },
    {
      "id" : "Patient.identifier:run.system",
      "path" : "Patient.identifier.system",
      "comment" : "URI provisional (D-005): NID 0.4.9 no define un URI para el RUN. Se reemplaza cuando la Unidad publique el nacional.",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run"
    },
    {
      "id" : "Patient.identifier:run.value",
      "path" : "Patient.identifier.value",
      "constraint" : [{
        "key" : "ges-run",
        "severity" : "error",
        "human" : "RUN sin puntos, con guión y dígito verificador (ej. 12345678-5)",
        "expression" : "matches('^[1-9][0-9]{0,7}-[0-9Kk]$')",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"
      }]
    }]
  }
}

```
