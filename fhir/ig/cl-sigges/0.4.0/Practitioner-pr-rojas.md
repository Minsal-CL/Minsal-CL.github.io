# Profesional Camila Andrea Rojas Muñoz - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Camila Andrea Rojas Muñoz**

## Example Practitioner: Profesional Camila Andrea Rojas Muñoz

Perfil: [Profesional GES](StructureDefinition-prestador-ges.md)

Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official))

-------

| | |
| :--- | :--- |
| Gender: | Female |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "pr-rojas",
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
    "value" : "15934286-7"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Rojas",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Muñoz"
      }]
    },
    "given" : ["Camila", "Andrea"]
  }],
  "gender" : "female"
}

```
