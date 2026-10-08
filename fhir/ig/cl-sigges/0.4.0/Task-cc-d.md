# Caso D · 3 — CC por descarte - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso D · 3 — CC por descarte**

## Example Task: Caso D · 3 — CC por descarte

Perfil: [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md)

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/CC-HLF-2026-000517

**status**: Completed

**statusReason**: Descarte

**intent**: order

**code**: Cierre de caso

**focus**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --> 2026-04-24](EpisodeOfCare-caso-d.md)

**for**: [Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))](Patient-pac-d.md)

**authoredOn**: 2026-04-24 10:05:00-0300

**requester**: [Andrés Fuentes (official) (RUN: 13478215-3 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-fuentes-hlf.md)

**note**: 

> 

Biopsia negativa para neoplasia. Contrarreferencia a APS.




## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "cc-d",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/cierre-caso-ges"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "CC-HLF-2026-000517",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges",
      "code" : "8",
      "display" : "Descarte"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
      "code" : "cierre-caso"
    }]
  },
  "focus" : {
    "reference" : "EpisodeOfCare/caso-d"
  },
  "for" : {
    "reference" : "Patient/pac-d"
  },
  "authoredOn" : "2026-04-24T10:05:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-fuentes-hlf"
  },
  "note" : [{
    "text" : "Biopsia negativa para neoplasia. Contrarreferencia a APS."
  }]
}

```
