# Establecimiento 14-105 — Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento 14-105 — Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza**

## Example Organization: Establecimiento 14-105 — Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza

Perfil: [Establecimiento GES](StructureDefinition-establecimiento-ges.md)

Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)

-------

| | |
| :--- | :--- |
| Type: | Público |
| Part Of: | Servicio de Salud Metropolitano Sur Oriente (Identifier:`https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis`/14) |
| Other Id: | `http://deis.minsal.cl/establecimientos`/114105 (use: official) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hosp-la-florida",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://deis.minsal.cl/establecimientos",
    "value" : "114105"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
    "value" : "14-105"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
      "code" : "publico",
      "display" : "Público"
    }]
  }],
  "name" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza",
  "partOf" : {
    "identifier" : {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
      "value" : "14"
    },
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  }
}

```
