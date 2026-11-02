# Escenario D: imágenes temporalmente no disponibles al abrir el visor - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario D: imágenes temporalmente no disponibles al abrir el visor**

## Example OperationOutcome: Escenario D: imágenes temporalmente no disponibles al abrir el visor

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Transient Issue | Las imágenes no están disponibles en este momento. Intente nuevamente más tarde. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ResultadoImagenesNoDisponiblesEjemplo",
  "issue" : [{
    "severity" : "error",
    "code" : "transient",
    "details" : {
      "text" : "Las imágenes no están disponibles en este momento. Intente nuevamente más tarde."
    }
  }]
}

```
