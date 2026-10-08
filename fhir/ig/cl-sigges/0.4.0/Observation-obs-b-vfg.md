# Dato especial — Velocidad de filtración glomerular estimada - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dato especial — Velocidad de filtración glomerular estimada**

## Example Observation: Dato especial — Velocidad de filtración glomerular estimada

Perfil: [Dato específico por problema de salud](StructureDefinition-dato-especial-ges.md)

**status**: Final

**code**: Velocidad de filtración glomerular estimada

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**effective**: 2026-04-28

**performer**: [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md)

**value**: 12 mL/min/1,73 m2 (Details: UCUM codemL/min/{1.73_m2} = 'mL/min/{1.73_m2}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-b-vfg",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/dato-especial-ges"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges",
      "code" : "vfg",
      "display" : "Velocidad de filtración glomerular estimada"
    }]
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "effectiveDateTime" : "2026-04-28",
  "performer" : [{
    "reference" : "PractitionerRole/rol-soto-sotero"
  }],
  "valueQuantity" : {
    "value" : 12,
    "unit" : "mL/min/1,73 m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL/min/{1.73_m2}"
  }
}

```
