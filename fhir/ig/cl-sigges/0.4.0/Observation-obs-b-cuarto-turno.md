# Dato especial — Requiere cuarto turno de diálisis - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dato especial — Requiere cuarto turno de diálisis**

## Example Observation: Dato especial — Requiere cuarto turno de diálisis

Perfil: [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md)

**status**: Final

**code**: Requiere cuarto turno de diálisis

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**effective**: 2026-05-06

**performer**: [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md)

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-b-cuarto-turno",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges",
      "code" : "cuarto-turno",
      "display" : "Requiere cuarto turno de diálisis"
    }]
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "effectiveDateTime" : "2026-05-06",
  "performer" : [{
    "reference" : "PractitionerRole/rol-soto-sotero"
  }],
  "valueBoolean" : true
}

```
