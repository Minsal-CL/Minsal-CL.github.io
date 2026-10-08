# Caso C · 1 — HD sospecha DM2 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso C · 1 — HD sospecha DM2**

## Example Condition: Caso C · 1 — HD sospecha DM2

Perfil: [HD — Hoja diaria APS](StructureDefinition-hoja-diaria-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812501,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CST-2026-001207; status = active; type = Diabetes mellitus tipo 2,Diabetes mellitus tipo 2 (decreto nº 228); period = 2026-06-01 --> (ongoing)](EpisodeOfCare-caso-c.md)

**Estado de hoja diaria APS**: [Estados de Hoja Diaria APS: 1191](CodeSystem-estado-hoja-diaria-ges.md#estado-hoja-diaria-ges-1191) (Caso en Sospecha (rama 129))

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/HD-CST-2026-055120

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Sospecha de diabetes mellitus tipo 2

**subject**: [Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))](Patient-pac-c.md)

**recordedDate**: 2026-06-01 08:45:00-0300

**recorder**: [Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)](PractitionerRole-rol-vergara-cesfam-st.md)

**note**: 

> 

Glicemia en ayunas 142 mg/dL en examen preventivo (EMPA).




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "hd-c-sospecha",
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
      "code" : "1191",
      "display" : "Caso en Sospecha (rama 129)"
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "HD-CST-2026-055120",
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
      "code" : "provisional"
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
    "text" : "Sospecha de diabetes mellitus tipo 2"
  },
  "subject" : {
    "reference" : "Patient/pac-c"
  },
  "recordedDate" : "2026-06-01T08:45:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-vergara-cesfam-st"
  },
  "note" : [{
    "text" : "Glicemia en ayunas 142 mg/dL en examen preventivo (EMPA)."
  }]
}

```
