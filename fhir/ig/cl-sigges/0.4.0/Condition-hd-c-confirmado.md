# Caso C · 2 — HD confirma DM2 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso C · 2 — HD confirma DM2**

## Example Condition: Caso C · 2 — HD confirma DM2

Perfil: [HD — Hoja diaria APS](StructureDefinition-hoja-diaria-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812501,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CST-2026-001207; status = active; type = Diabetes mellitus tipo 2,Diabetes mellitus tipo 2 (decreto nº 228); period = 2026-06-01 --> (ongoing)](EpisodeOfCare-caso-c.md)

**Estado de hoja diaria APS**: [Estados de Hoja Diaria APS: 1192](CodeSystem-estado-hoja-diaria-ges.md#estado-hoja-diaria-ges-1192) (Caso Confirmado (rama 129))

**Tratamiento e indicaciones**: Metformina 850 mg cada 12 h; ingreso a Programa de Salud Cardiovascular; derivar a endocrinología.

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/HD-CST-2026-056981

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Diabetes mellitus tipo 2

**subject**: [Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))](Patient-pac-c.md)

**recordedDate**: 2026-06-08 09:10:00-0300

**recorder**: [Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)](PractitionerRole-rol-vergara-cesfam-st.md)

**note**: 

> 

Segunda glicemia en ayunas 151 mg/dL; HbA1c 7,4 %.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "hd-c-confirmado",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/hoja-diaria-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-c"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria",
    "valueCoding" : {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-hoja-diaria-ges",
      "code" : "1192",
      "display" : "Caso Confirmado (rama 129)"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
    "valueString" : "Metformina 850 mg cada 12 h; ingreso a Programa de Salud Cardiovascular; derivar a endocrinología."
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "HD-CST-2026-056981",
    "assigner" : {
      "reference" : "Organization/cesfam-santo-tomas"
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
      "code" : "7",
      "display" : "Diabetes mellitus tipo 2"
    }],
    "text" : "Diabetes mellitus tipo 2"
  },
  "subject" : {
    "reference" : "Patient/pac-c"
  },
  "recordedDate" : "2026-06-08T09:10:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-vergara-cesfam-st"
  },
  "note" : [{
    "text" : "Segunda glicemia en ayunas 151 mg/dL; HbA1c 7,4 %."
  }]
}

```
