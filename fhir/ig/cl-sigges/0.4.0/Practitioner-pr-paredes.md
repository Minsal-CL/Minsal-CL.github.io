# Profesional Ignacio Paredes Lagos - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Ignacio Paredes Lagos**

## Example Practitioner: Profesional Ignacio Paredes Lagos

Perfil: [Profesional GES](StructureDefinition-prestador-ges.md)

Ignacio Paredes (official) (RUN: 12661903-0 (use: official))

-------

| | |
| :--- | :--- |
| Gender: | Male |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "pr-paredes",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run",
    "value" : "12661903-0"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Paredes",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Lagos"
      }]
    },
    "given" : ["Ignacio"]
  }],
  "gender" : "male"
}

```
