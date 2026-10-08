# Caso A · 2 — OA de endoscopía digestiva alta - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 2 — OA de endoscopía digestiva alta**

## Example ServiceRequest: Caso A · 2 — OA de endoscopía digestiva alta

Perfil: [OA — Orden de atención](StructureDefinition-oa-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Garantía GES**: Confirmación Diagnóstica

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/OA-HLF-2026-003310

**status**: Active

**intent**: Order

**category**: Diagnostico

**code**: GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**authoredOn**: 2026-03-09 11:40:00-0300

**requester**: [Andrés Fuentes (official) (RUN: 13478215-3 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-fuentes-hlf.md)

**performerType**: Procedimientos Gastroenterológicos

**performer**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**reasonCode**: Sospecha de cáncer gástrico; síndrome consuntivo



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "oa-a-endoscopia",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/oa-ges"]
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
    "value" : "OA-HLF-2026-003310",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
      "code" : "9",
      "display" : "Diagnostico"
    }]
  }],
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
  "authoredOn" : "2026-03-09T11:40:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-fuentes-hlf"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "13-14-06",
      "display" : "Procedimientos Gastroenterológicos"
    }]
  },
  "performer" : [{
    "reference" : "Organization/hosp-la-florida"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "27",
      "display" : "Cáncer gástrico"
    }],
    "text" : "Sospecha de cáncer gástrico; síndrome consuntivo"
  }]
}

```
