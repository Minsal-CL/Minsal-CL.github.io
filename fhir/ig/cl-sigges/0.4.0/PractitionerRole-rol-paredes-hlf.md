# Rol — Cirugía Abdominal Adulto en 14-105 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Cirugía Abdominal Adulto en 14-105**

## Example PractitionerRole: Rol — Cirugía Abdominal Adulto en 14-105

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Ignacio Paredes (official) (RUN: 12661903-0 (use: official))](Practitioner-pr-paredes.md) |
| Organization: | [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md) |
| Specialty: | Cirugía Abdominal Adulto |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-paredes-hlf",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/pr-paredes"
  },
  "organization" : {
    "reference" : "Organization/hosp-la-florida"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-201-2",
      "display" : "Cirugía Abdominal Adulto"
    }]
  }]
}

```
