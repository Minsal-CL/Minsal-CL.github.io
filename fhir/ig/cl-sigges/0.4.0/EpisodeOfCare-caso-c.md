# Caso C — hoja diaria APS (estado tras la EXGO) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso C — hoja diaria APS (estado tras la EXGO)**

## Example EpisodeOfCare: Caso C — hoja diaria APS (estado tras la EXGO)

Perfil: [Caso GES](StructureDefinition-caso-ges.md)

**identifier**: [NSCasoSIGGES](NamingSystem-NSCasoSIGGES.md)/8812501, [NSCasoLocal](NamingSystem-NSCasoLocal.md)/CST-2026-001207

**status**: Active

**type**: Diabetes mellitus tipo 2, Diabetes mellitus tipo 2 (decreto nº 228)

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Diabetes mellitus tipo 2](Condition-hd-c-confirmado.md) |

**patient**: [Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))](Patient-pac-c.md)

**managingOrganization**: [Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)](Organization-cesfam-santo-tomas.md)

**period**: 2026-06-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "caso-c",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
    "value" : "8812501"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
    "value" : "CST-2026-001207",
    "assigner" : {
      "reference" : "Organization/cesfam-santo-tomas"
    }
  }],
  "status" : "active",
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "7",
      "display" : "Diabetes mellitus tipo 2"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
      "code" : "129",
      "display" : "Diabetes mellitus tipo 2 (decreto nº 228)"
    }]
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/hd-c-confirmado"
    }
  }],
  "patient" : {
    "reference" : "Patient/pac-c"
  },
  "managingOrganization" : {
    "reference" : "Organization/cesfam-santo-tomas"
  },
  "period" : {
    "start" : "2026-06-01"
  }
}

```
