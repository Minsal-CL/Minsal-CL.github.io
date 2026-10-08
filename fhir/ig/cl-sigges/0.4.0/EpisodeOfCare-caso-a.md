# Caso A — cáncer gástrico (estado tras la PO de cirugía) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A — cáncer gástrico (estado tras la PO de cirugía)**

## Example EpisodeOfCare: Caso A — cáncer gástrico (estado tras la PO de cirugía)

Perfil: [Caso GES](StructureDefinition-caso-ges.md)

**identifier**: [NSCasoSIGGES](NamingSystem-NSCasoSIGGES.md)/8812345, [NSCasoLocal](NamingSystem-NSCasoLocal.md)/CLF-2026-000871

**status**: Active

**type**: Cáncer gástrico, Cáncer gástrico (decreto nº 228)

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Adenocarcinoma gástrico tubular moderadamente diferenciado, antro](Condition-ipd-a.md) |

**patient**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**managingOrganization**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**period**: 2026-03-02 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "caso-a",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
    "value" : "8812345"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
    "value" : "CLF-2026-000871",
    "assigner" : {
      "reference" : "Organization/cesfam-la-florida"
    }
  }],
  "status" : "active",
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
      "reference" : "Condition/ipd-a"
    }
  }],
  "patient" : {
    "reference" : "Patient/pac-a"
  },
  "managingOrganization" : {
    "reference" : "Organization/hosp-la-florida"
  },
  "period" : {
    "start" : "2026-03-02"
  }
}

```
