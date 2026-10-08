# Caso D — descartado y cerrado (estado tras el CC) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso D — descartado y cerrado (estado tras el CC)**

## Example EpisodeOfCare: Caso D — descartado y cerrado (estado tras el CC)

Perfil: [Caso GES](StructureDefinition-caso-ges.md)

**identifier**: [NSCasoSIGGES](NamingSystem-NSCasoSIGGES.md)/8812410, [NSCasoLocal](NamingSystem-NSCasoLocal.md)/CLF-2026-001044

**status**: Finished

**type**: Cáncer gástrico, Cáncer gástrico (decreto nº 228)

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Gastritis crónica atrófica sin displasia; se descarta cáncer gástrico](Condition-ipd-d.md) |

**patient**: [Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))](Patient-pac-d.md)

**managingOrganization**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**period**: 2026-04-02 --> 2026-04-24



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "caso-d",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
    "value" : "8812410"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
    "value" : "CLF-2026-001044",
    "assigner" : {
      "reference" : "Organization/cesfam-la-florida"
    }
  }],
  "status" : "finished",
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "27",
      "display" : "Cáncer gástrico"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
      "code" : "108",
      "display" : "Cáncer gástrico (decreto nº 228)"
    }]
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/ipd-d"
    }
  }],
  "patient" : {
    "reference" : "Patient/pac-d"
  },
  "managingOrganization" : {
    "reference" : "Organization/hosp-la-florida"
  },
  "period" : {
    "start" : "2026-04-02",
    "end" : "2026-04-24"
  }
}

```
