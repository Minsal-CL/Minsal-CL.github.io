# Ejemplo Observation Discapacidad LE - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Observation Discapacidad LE**

## Example Observation: Ejemplo Observation Discapacidad LE

Profile: [Discapacidad LE](StructureDefinition-ObservationDiscapacidadLE.md)

**status**: Final

**code**: Discapacidad

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EjemploObservationDiscapacidadLE",
  "meta" : {
<<<<<<< HEAD
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101720-1",
      "display" : "Disability status"
    }],
=======
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "101720-1",
        "display" : "Disability status"
      }
    ],
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
    "text" : "Discapacidad"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "valueBoolean" : true
}

```
