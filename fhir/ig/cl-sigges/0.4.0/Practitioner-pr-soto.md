# Profesional Valentina Soto Araya - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Valentina Soto Araya**

## Example Practitioner: Profesional Valentina Soto Araya

Perfil: [Profesional GES](StructureDefinition-prestador-ges.md)

Valentina Soto (official) (RUN: 14209771-0 (use: official))

-------

| | |
| :--- | :--- |
| Gender: | Female |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "pr-soto",
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
    "value" : "14209771-0"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Soto",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Araya"
      }]
    },
    "given" : ["Valentina"]
  }],
  "gender" : "female"
}

```
