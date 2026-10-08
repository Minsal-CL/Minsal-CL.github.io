# Dato especial — Etapa de enfermedad renal crónica - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dato especial — Etapa de enfermedad renal crónica**

## Example Observation: Dato especial — Etapa de enfermedad renal crónica

Perfil: [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md)

**status**: Final

**code**: Etapa de enfermedad renal crónica

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**effective**: 2026-05-04

**performer**: [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md)

**value**: 5



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-b-etapa",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges",
      "code" : "etapa-erc",
      "display" : "Etapa de enfermedad renal crónica"
    }]
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "effectiveDateTime" : "2026-05-04",
  "performer" : [{
    "reference" : "PractitionerRole/rol-soto-sotero"
  }],
  "valueString" : "5"
}

```
