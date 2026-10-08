# Rol — Gastroenterología Adulto en 14-105 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Gastroenterología Adulto en 14-105**

## Example PractitionerRole: Rol — Gastroenterología Adulto en 14-105

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

Andrés Fuentes (official) (RUN: 13478215-3 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Andrés Fuentes (official) (RUN: 13478215-3 (use: official))](Practitioner-pr-fuentes.md) |
| Organization: | [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md) |
| Specialty: | Gastroenterología Adulto |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-fuentes-hlf",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/pr-fuentes"
  },
  "organization" : {
    "reference" : "Organization/hosp-la-florida"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-105-2",
      "display" : "Gastroenterología Adulto"
    }]
  }]
}

```
