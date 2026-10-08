# Caso B — ERC (estado tras la PO de hemodiálisis) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso B — ERC (estado tras la PO de hemodiálisis)**

## Example EpisodeOfCare: Caso B — ERC (estado tras la PO de hemodiálisis)

Perfil: [Caso GES](StructureDefinition-caso-ges.md)

**identifier**: [NSCasoSIGGES](NamingSystem-NSCasoSIGGES.md)/8812399, [NSCasoLocal](NamingSystem-NSCasoLocal.md)/SR-2026-004410

**status**: Active

**type**: Enfermedad renal crónica etapa 4 y 5, Enfermedad renal crónica etapa 4 y 5 (decreto nº 228)

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Enfermedad renal crónica etapa 5 secundaria a nefropatía diabética](Condition-ipd-b.md) |

**patient**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**managingOrganization**: [Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](Organization-sotero-del-rio.md)

**period**: 2026-05-04 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "caso-b",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
    "value" : "8812399"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
    "value" : "SR-2026-004410",
    "assigner" : {
      "reference" : "Organization/sotero-del-rio"
    }
  }],
  "status" : "active",
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "1",
      "display" : "Enfermedad renal crónica etapa 4 y 5"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
      "code" : "125",
      "display" : "Enfermedad renal crónica etapa 4 y 5 (decreto nº 228)"
    }]
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/ipd-b"
    }
  }],
  "patient" : {
    "reference" : "Patient/pac-b"
  },
  "managingOrganization" : {
    "reference" : "Organization/sotero-del-rio"
  },
  "period" : {
    "start" : "2026-05-04"
  }
}

```
