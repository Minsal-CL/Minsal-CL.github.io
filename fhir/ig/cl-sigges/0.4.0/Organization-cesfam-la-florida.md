# Establecimiento 14-331 — Centro de Salud Familiar La Florida - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento 14-331 — Centro de Salud Familiar La Florida**

## Example Organization: Establecimiento 14-331 — Centro de Salud Familiar La Florida

Perfil: [Establecimiento GES](StructureDefinition-establecimiento-ges.md)

Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)

-------

| | |
| :--- | :--- |
| Type: | Público |
| Part Of: | Servicio de Salud Metropolitano Sur Oriente (Identifier:`https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis`/14) |
| Other Id: | `http://deis.minsal.cl/establecimientos`/114331 (use: official) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "cesfam-la-florida",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://deis.minsal.cl/establecimientos",
    "value" : "114331"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
    "value" : "14-331"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
      "code" : "publico",
      "display" : "Público"
    }]
  }],
  "name" : "Centro de Salud Familiar La Florida",
  "partOf" : {
    "identifier" : {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
      "value" : "14"
    },
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  }
}

```
