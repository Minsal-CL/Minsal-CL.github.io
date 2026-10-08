# Rol — Procedimientos Gastroenterológicos en 14-105 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Procedimientos Gastroenterológicos en 14-105**

## Example PractitionerRole: Rol — Procedimientos Gastroenterológicos en 14-105

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

(no practitioner) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)

-------

| | |
| :--- | :--- |
| Active: | true |
| Organization: | [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md) |
| Specialty: | Procedimientos Gastroenterológicos |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-endoscopia-hlf",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "organization" : {
    "reference" : "Organization/hosp-la-florida"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "13-14-06",
      "display" : "Procedimientos Gastroenterológicos"
    }]
  }]
}

```
