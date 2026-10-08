# Caso B · 1 — IPD confirma ERC etapa 5 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso B · 1 — IPD confirma ERC etapa 5**

## Example Condition: Caso B · 1 — IPD confirma ERC etapa 5

Perfil: [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812399,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#SR-2026-004410; status = active; type = Enfermedad renal crónica etapa 4 y 5,Enfermedad renal crónica etapa 4 y 5 (decreto nº 228); period = 2026-05-04 --> (ongoing)](EpisodeOfCare-caso-b.md)

**Establecimiento de destino**: [Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](Organization-sotero-del-rio.md)

**Tratamiento e indicaciones**: Ingreso a programa de hemodiálisis; confección de acceso vascular.

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/IPD-SR-2026-000932

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Enfermedad renal crónica etapa 5 secundaria a nefropatía diabética

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**recordedDate**: 2026-05-04 09:30:00-0300

**recorder**: [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md)

> **evidence****detail**: [Observation Velocidad de filtración glomerular estimada](Observation-obs-b-vfg.md)

> **evidence****detail**: [Observation Etapa de enfermedad renal crónica](Observation-obs-b-etapa.md)

**note**: 

> 

VFG 12 mL/min/1,73 m2 (CKD-EPI) el 28/04; hiperkalemia recurrente.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ipd-b",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ipd-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-b"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino",
    "valueReference" : {
      "reference" : "Organization/sotero-del-rio"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
    "valueString" : "Ingreso a programa de hemodiálisis; confección de acceso vascular."
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "IPD-SR-2026-000932",
    "assigner" : {
      "reference" : "Organization/sotero-del-rio"
    }
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "1",
      "display" : "Enfermedad renal crónica etapa 4 y 5"
    }],
    "text" : "Enfermedad renal crónica etapa 5 secundaria a nefropatía diabética"
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "recordedDate" : "2026-05-04T09:30:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-soto-sotero"
  },
  "evidence" : [{
    "detail" : [{
      "reference" : "Observation/obs-b-vfg"
    }]
  },
  {
    "detail" : [{
      "reference" : "Observation/obs-b-etapa"
    }]
  }],
  "note" : [{
    "text" : "VFG 12 mL/min/1,73 m2 (CKD-EPI) el 28/04; hiperkalemia recurrente."
  }]
}

```
