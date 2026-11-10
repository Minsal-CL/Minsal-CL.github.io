# Paciente de ejemplo (transversal, sin perfilar) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de ejemplo (transversal, sin perfilar)**

## Example Patient: Paciente de ejemplo (transversal, sin perfilar)

Paciente Ejemplo Unknown, DoB Unknown ( https://ejemplo.cl/rut#12345678-5)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteEjemploMhd",
  "identifier" : [{
    "system" : "https://ejemplo.cl/rut",
    "value" : "12345678-5"
  }],
  "name" : [{
    "family" : "Ejemplo",
    "given" : ["Paciente"]
  }],
  "gender" : "unknown"
}

```
