# Profesional Andrés Fuentes Soto - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Andrés Fuentes Soto**

## Example Practitioner: Profesional Andrés Fuentes Soto

Perfil: [Profesional GES](StructureDefinition-prestador-ges.md)

Andrés Fuentes (official) (RUN: 13478215-3 (use: official))

-------

| | |
| :--- | :--- |
| Gender: | Male |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "pr-fuentes",
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
    "value" : "13478215-3"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Fuentes",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Soto"
      }]
    },
    "given" : ["Andrés"]
  }],
  "gender" : "male"
}

```
