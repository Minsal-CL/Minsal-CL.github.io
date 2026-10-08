# Caso A · 1 — SIC con sospecha de cáncer gástrico - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 1 — SIC con sospecha de cáncer gástrico**

## Example ServiceRequest: Caso A · 1 — SIC con sospecha de cáncer gástrico

Perfil: [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/SIC-CLF-2026-000871

**status**: Active

**intent**: Order

**category**: Confirmación Diagnóstica

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**authoredOn**: 2026-03-02 10:15:00-0300

**requester**: [Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)](PractitionerRole-rol-rojas-cesfam-lf.md)

**performerType**: Gastroenterología Adulto

**performer**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**reasonReference**: [Condition Sospecha de cáncer gástrico](Condition-cond-a-sospecha.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sic-a",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/sic-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-a"
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "SIC-CLF-2026-000871",
    "assigner" : {
      "reference" : "Organization/cesfam-la-florida"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
      "code" : "1",
      "display" : "Confirmación Diagnóstica"
    }]
  }],
  "subject" : {
    "reference" : "Patient/pac-a"
  },
  "authoredOn" : "2026-03-02T10:15:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-105-2",
      "display" : "Gastroenterología Adulto"
    }]
  },
  "performer" : [{
    "reference" : "Organization/hosp-la-florida"
  }],
  "reasonReference" : [{
    "reference" : "Condition/cond-a-sospecha"
  }]
}

```
