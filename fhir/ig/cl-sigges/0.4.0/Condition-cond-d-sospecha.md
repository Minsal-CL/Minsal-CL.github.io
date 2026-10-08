# Caso D — Diagnóstico de sospecha - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso D — Diagnóstico de sospecha**

## Example Condition: Caso D — Diagnóstico de sospecha

Perfil: [Diagnóstico GES](StructureDefinition-diagnostico-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --> 2026-04-24](EpisodeOfCare-caso-d.md)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Sospecha de cáncer gástrico

**subject**: [Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))](Patient-pac-d.md)

**recordedDate**: 2026-04-02 15:30:00-0300

**recorder**: [Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)](PractitionerRole-rol-rojas-cesfam-lf.md)

**note**: 

> 

Dispepsia de reciente comienzo en mayor de 40 años, con saciedad precoz.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "cond-d-sospecha",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-d"
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
      "code" : "27",
      "display" : "Cáncer gástrico"
    }],
    "text" : "Sospecha de cáncer gástrico"
  },
  "subject" : {
    "reference" : "Patient/pac-d"
  },
  "recordedDate" : "2026-04-02T15:30:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
  },
  "note" : [{
    "text" : "Dispepsia de reciente comienzo en mayor de 40 años, con saciedad precoz."
  }]
}

```
