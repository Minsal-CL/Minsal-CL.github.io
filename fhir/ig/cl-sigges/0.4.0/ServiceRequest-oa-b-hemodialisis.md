# Caso B · 2 — OA de hemodiálisis - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso B · 2 — OA de hemodiálisis**

## Example ServiceRequest: Caso B · 2 — OA de hemodiálisis

Perfil: [OA — Orden de atención](StructureDefinition-oa-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812399,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#SR-2026-004410; status = active; type = Enfermedad renal crónica etapa 4 y 5,Enfermedad renal crónica etapa 4 y 5 (decreto nº 228); period = 2026-05-04 --> (ongoing)](EpisodeOfCare-caso-b.md)

**Garantía GES**: Tratamiento Hemodiálisis

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/OA-SR-2026-002218

**status**: Active

**intent**: Order

**category**: Tratamiento

**code**: HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**authoredOn**: 2026-05-06 15:00:00-0300

**requester**: [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md)

**performerType**: Nefrología Adulto

**performer**: [Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](Organization-sotero-del-rio.md)

**reasonCode**: ERC etapa 5

**supportingInfo**: [Observation Requiere cuarto turno de diálisis](Observation-obs-b-cuarto-turno.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "oa-b-hemodialisis",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/oa-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-b"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "4037",
        "display" : "Tratamiento Hemodiálisis"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "OA-SR-2026-002218",
    "assigner" : {
      "reference" : "Organization/sotero-del-rio"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
      "code" : "7",
      "display" : "Tratamiento"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
      "code" : "1901029",
      "display" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
    }],
    "text" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "authoredOn" : "2026-05-06T15:00:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-soto-sotero"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-108-2",
      "display" : "Nefrología Adulto"
    }]
  },
  "performer" : [{
    "reference" : "Organization/sotero-del-rio"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "1",
      "display" : "Enfermedad renal crónica etapa 4 y 5"
    }],
    "text" : "ERC etapa 5"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/obs-b-cuarto-turno"
  }]
}

```
