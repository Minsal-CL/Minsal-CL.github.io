# Profesional Tomás Vergara Pino - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Tomás Vergara Pino**

## Example Practitioner: Profesional Tomás Vergara Pino

Perfil: [Profesional GES](StructureDefinition-prestador-ges.md)

Tomás Vergara (official) (RUN: 16587320-3 (use: official))

-------

| | |
| :--- | :--- |
| Gender: | Male |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "pr-vergara",
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
    "value" : "16587320-3"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Vergara",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Pino"
      }]
    },
    "given" : ["Tomás"]
  }],
  "gender" : "male"
}

```
