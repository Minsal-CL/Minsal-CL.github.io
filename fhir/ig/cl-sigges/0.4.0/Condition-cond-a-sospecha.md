# Caso A — Diagnóstico de sospecha (motivo de la SIC) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A — Diagnóstico de sospecha (motivo de la SIC)**

## Example Condition: Caso A — Diagnóstico de sospecha (motivo de la SIC)

Perfil: [Diagnóstico GES](StructureDefinition-diagnostico-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Tratamiento e indicaciones**: Omeprazol 20 mg cada 12 h. Control en APS con resultado de endoscopía.

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Sospecha de cáncer gástrico

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**recordedDate**: 2026-03-02 10:15:00-0300

**recorder**: [Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)](PractitionerRole-rol-rojas-cesfam-lf.md)

**note**: 

> 

Epigastralgia persistente de 4 meses, baja de peso de 8 kg, anemia ferropénica (Hb 10,1 g/dL).




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "cond-a-sospecha",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-a"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
    "valueString" : "Omeprazol 20 mg cada 12 h. Control en APS con resultado de endoscopía."
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
      "code" : "27",
      "display" : "Cáncer gástrico"
    }],
    "text" : "Sospecha de cáncer gástrico"
  },
  "subject" : {
    "reference" : "Patient/pac-a"
  },
  "recordedDate" : "2026-03-02T10:15:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
  },
  "note" : [{
    "text" : "Epigastralgia persistente de 4 meses, baja de peso de 8 kg, anemia ferropénica (Hb 10,1 g/dL)."
  }]
}

```
