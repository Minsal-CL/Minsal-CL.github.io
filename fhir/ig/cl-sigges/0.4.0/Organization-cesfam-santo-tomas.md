# Establecimiento 14-317 — Centro de Salud Familiar Santo Tomás - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento 14-317 — Centro de Salud Familiar Santo Tomás**

## Example Organization: Establecimiento 14-317 — Centro de Salud Familiar Santo Tomás

Perfil: [Establecimiento GES](StructureDefinition-establecimiento-ges.md)

Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)

-------

| | |
| :--- | :--- |
| Type: | Público |
| Part Of: | Servicio de Salud Metropolitano Sur Oriente (Identifier:`https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis`/14) |
| Other Id: | `http://deis.minsal.cl/establecimientos`/114317 (use: official) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "cesfam-santo-tomas",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://deis.minsal.cl/establecimientos",
    "value" : "114317"
  },
  {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
    "value" : "14-317"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
      "code" : "publico",
      "display" : "Público"
    }]
  }],
  "name" : "Centro de Salud Familiar Santo Tomás",
  "partOf" : {
    "identifier" : {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
      "value" : "14"
    },
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  }
}

```
