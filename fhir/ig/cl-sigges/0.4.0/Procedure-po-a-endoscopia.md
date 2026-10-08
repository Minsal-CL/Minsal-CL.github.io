# Caso A · 3 — PO endoscopía realizada - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 3 — PO endoscopía realizada**

## Example Procedure: Caso A · 3 — PO endoscopía realizada

Perfil: [PO — Prestación otorgada](StructureDefinition-po-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Garantía GES**: Confirmación Diagnóstica

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/PO-HLF-2026-018877

**basedOn**: [ServiceRequest GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)](ServiceRequest-oa-a-endoscopia.md)

**status**: Completed

**code**: GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**performed**: 2026-03-16 09:00:00-0300 --> 2026-03-16 09:40:00-0300

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [(no practitioner) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-endoscopia-hlf.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "po-a-endoscopia",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-a"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "701",
        "display" : "Confirmación Diagnóstica"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "PO-HLF-2026-018877",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/oa-a-endoscopia"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
      "code" : "1801001",
      "display" : "GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)"
    }],
    "text" : "GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)"
  },
  "subject" : {
    "reference" : "Patient/pac-a"
  },
  "performedPeriod" : {
    "start" : "2026-03-16T09:00:00-03:00",
    "end" : "2026-03-16T09:40:00-03:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/rol-endoscopia-hlf"
    }
  }]
}

```
