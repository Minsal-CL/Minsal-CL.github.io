# Establecimiento 14-101 — Complejo Hospitalario Dr. Sótero del Río - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento 14-101 — Complejo Hospitalario Dr. Sótero del Río**

## Example Organization: Establecimiento 14-101 — Complejo Hospitalario Dr. Sótero del Río

Perfil: [Establecimiento GES](StructureDefinition-establecimiento-ges.md)

Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)

-------

| | |
| :--- | :--- |
| Type: | Público |
| Part Of: | Servicio de Salud Metropolitano Sur Oriente (Identifier:`https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis`/14) |
| Other Id: | `http://deis.minsal.cl/establecimientos`/114101 (use: official) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "sotero-del-rio",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://deis.minsal.cl/establecimientos",
    "value" : "114101"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
    "value" : "14-101"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
      "code" : "publico",
      "display" : "Público"
    }]
  }],
  "name" : "Complejo Hospitalario Dr. Sótero del Río",
  "partOf" : {
    "identifier" : {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
      "value" : "14"
    },
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  }
}

```
