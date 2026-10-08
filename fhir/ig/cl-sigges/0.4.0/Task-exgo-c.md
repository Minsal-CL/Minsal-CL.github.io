# Caso C · 3 — EXGO por inasistencia - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso C · 3 — EXGO por inasistencia**

## Example Task: Caso C · 3 — EXGO por inasistencia

Perfil: [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md)

**Garantía GES**: Atención por Especialista Endocrinología

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/EXGO-CST-2026-000044

**status**: Completed

**statusReason**: Paciente no asiste a 2 citaciones (12/06 y 19/06); contactado telefónicamente sin respuesta.

**intent**: order

**code**: Excepción de garantía de oportunidad

**focus**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812501,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CST-2026-001207; status = active; type = Diabetes mellitus tipo 2,Diabetes mellitus tipo 2 (decreto nº 228); period = 2026-06-01 --> (ongoing)](EpisodeOfCare-caso-c.md)

**for**: [Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))](Patient-pac-c.md)

**authoredOn**: 2026-06-25 11:00:00-0300

**requester**: [Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)](PractitionerRole-rol-vergara-cesfam-st.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "exgo-c",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/excepcion-garantia-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "4646",
        "display" : "Atención por Especialista Endocrinología"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "EXGO-CST-2026-000044",
    "assigner" : {
      "reference" : "Organization/cesfam-santo-tomas"
    }
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges",
      "code" : "202",
      "display" : "Inasistencia"
    }],
    "text" : "Paciente no asiste a 2 citaciones (12/06 y 19/06); contactado telefónicamente sin respuesta."
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-tarea-ges",
      "code" : "excepcion-garantia"
    }]
  },
  "focus" : {
    "reference" : "EpisodeOfCare/caso-c"
  },
  "for" : {
    "reference" : "Patient/pac-c"
  },
  "authoredOn" : "2026-06-25T11:00:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-vergara-cesfam-st"
  }
}

```
