# Rol — Medicina Familiar en 14-331 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Medicina Familiar en 14-331**

## Example PractitionerRole: Rol — Medicina Familiar en 14-331

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official))](Practitioner-pr-rojas.md) |
| Organization: | [Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)](Organization-cesfam-la-florida.md) |
| Specialty: | Medicina Familiar |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-rojas-cesfam-lf",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/pr-rojas"
  },
  "organization" : {
    "reference" : "Organization/cesfam-la-florida"
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
