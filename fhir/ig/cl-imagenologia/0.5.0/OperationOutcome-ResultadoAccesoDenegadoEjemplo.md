# Escenario F: acceso denegado al abrir las imágenes - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario F: acceso denegado al abrir las imágenes**

## Example OperationOutcome: Escenario F: acceso denegado al abrir las imágenes

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Forbidden | No tiene autorización para ver las imágenes solicitadas. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ResultadoAccesoDenegadoEjemplo",
  "issue" : [{
    "severity" : "error",
    "code" : "forbidden",
    "details" : {
      "text" : "No tiene autorización para ver las imágenes solicitadas."
    }
  }]
}

```
