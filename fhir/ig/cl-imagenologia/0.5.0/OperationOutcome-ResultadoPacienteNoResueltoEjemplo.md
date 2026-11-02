# Escenario E: estudio que no se vincula de forma inequívoca con el paciente - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario E: estudio que no se vincula de forma inequívoca con el paciente**

## Example OperationOutcome: Escenario E: estudio que no se vincula de forma inequívoca con el paciente

### Issues

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Expression** |
| * | Error | Multiple Matches | El paciente del estudio no se resolvió de forma inequívoca en el MPI. El estudio no se publica y el evento queda en conciliación. | Bundle.entry[1].resource |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ResultadoPacienteNoResueltoEjemplo",
  "issue" : [{
    "severity" : "error",
    "code" : "multiple-matches",
    "details" : {
      "text" : "El paciente del estudio no se resolvió de forma inequívoca en el MPI. El estudio no se publica y el evento queda en conciliación."
    },
    "expression" : ["Bundle.entry[1].resource"]
  }]
}

```
