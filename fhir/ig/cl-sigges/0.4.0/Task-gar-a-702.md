# Garantía 702 — Intervención Quirúrgica (cumplida) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Garantía 702 — Intervención Quirúrgica (cumplida)**

## Example Task: Garantía 702 — Intervención Quirúrgica (cumplida)

Perfil: [Garantía de oportunidad](StructureDefinition-garantia-oportunidad-ges.md)

**Garantía GES**: Intervención Quirúrgica

**status**: Completed

**businessStatus**: Cumplida

**intent**: plan

**code**: Garantía de oportunidad

**focus**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-8812345.md)

**for**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Period** |
| * | 2026-03-27 --> 2026-04-26 |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "gar-a-702",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/garantia-oportunidad-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "702",
        "display" : "Intervención Quirúrgica"
      }]
    }
  }],
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-garantia-ges",
      "code" : "cumplida"
    }]
  },
  "intent" : "plan",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
      "code" : "garantia"
    }]
  },
  "focus" : {
    "reference" : "EpisodeOfCare/8812345"
  },
  "for" : {
    "reference" : "Patient/pac-a"
  },
  "restriction" : {
    "period" : {
      "start" : "2026-03-27",
      "end" : "2026-04-26"
    }
  }
}

```
