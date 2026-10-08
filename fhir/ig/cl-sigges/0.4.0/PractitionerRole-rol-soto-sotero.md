# Rol — Nefrología Adulto en 14-101 - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol — Nefrología Adulto en 14-101**

## Example PractitionerRole: Rol — Nefrología Adulto en 14-101

Perfil: [Rol clínico GES](StructureDefinition-rol-clinico-ges.md)

Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Valentina Soto (official) (RUN: 14209771-0 (use: official))](Practitioner-pr-soto.md) |
| Organization: | [Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](Organization-sotero-del-rio.md) |
| Specialty: | Nefrología Adulto |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "rol-soto-sotero",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/pr-soto"
  },
  "organization" : {
    "reference" : "Organization/sotero-del-rio"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-108-2",
      "display" : "Nefrología Adulto"
    }]
  }]
}

```
