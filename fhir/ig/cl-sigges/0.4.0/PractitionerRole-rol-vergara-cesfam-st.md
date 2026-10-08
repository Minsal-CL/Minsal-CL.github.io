# Rol — Medicina Familiar en 14-317 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Medicina Familiar en 14-317**

## Example PractitionerRole: Rol — Medicina Familiar en 14-317

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Tomás Vergara (official) (RUN: 16587320-3 (use: official))](Practitioner-pr-vergara.md) |
| Organization: | [Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)](Organization-cesfam-santo-tomas.md) |
| Specialty: | Medicina Familiar |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-vergara-cesfam-st",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/pr-vergara"
  },
  "organization" : {
    "reference" : "Organization/cesfam-santo-tomas"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-900-1",
      "display" : "Medicina Familiar"
    }]
  }]
}

```
