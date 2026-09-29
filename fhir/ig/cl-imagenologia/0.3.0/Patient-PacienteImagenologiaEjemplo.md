# Paciente de ejemplo - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de ejemplo**

## Example Patient: Paciente de ejemplo

Profile: [Paciente de Imagenología](StructureDefinition-PacienteImagenologia.md)

María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))

-------

| | |
| :--- | :--- |
| Deceased: | false |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteImagenologiaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
        "code" : "1",
        "display" : "RUN"
      }]
    },
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
    "value" : "12345678-5"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Carmona",
    "given" : ["María"]
  }],
  "gender" : "female",
  "birthDate" : "1975-04-12",
  "deceasedBoolean" : false
}

```
