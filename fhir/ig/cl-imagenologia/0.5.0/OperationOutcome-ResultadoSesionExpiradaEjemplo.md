# Escenario F: sesión o apertura expirada - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario F: sesión o apertura expirada**

## Example OperationOutcome: Escenario F: sesión o apertura expirada

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Session Expired | La sesión expiró. Inicie sesión nuevamente para ver las imágenes. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ResultadoSesionExpiradaEjemplo",
  "issue" : [{
    "severity" : "error",
    "code" : "expired",
    "details" : {
      "text" : "La sesión expiró. Inicie sesión nuevamente para ver las imágenes."
    }
  }]
}

```
