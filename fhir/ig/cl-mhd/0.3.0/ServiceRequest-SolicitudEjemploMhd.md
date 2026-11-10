# Solicitud de examen de ejemplo (transversal, sin perfilar) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud de examen de ejemplo (transversal, sin perfilar)**

## Example ServiceRequest: Solicitud de examen de ejemplo (transversal, sin perfilar)

**status**: Completed

**intent**: Order

**code**: Hemograma (código de prestación FONASA de la solicitud; no se fija un `system`/código concreto en este ejemplo transversal, ya que el arancel vigente lo define la guía de dominio de Laboratorio, no este repo)

**subject**: [Paciente Ejemplo Unknown, DoB Unknown ( https://ejemplo.cl/rut#12345678-5)](Patient-PacienteEjemploMhd.md)

**authoredOn**: 2026-11-02 08:00:00-0300

**requester**: [Ejemplo Profesional (https://ejemplo.cl/run-profesional#11111111-1)](Practitioner-ProfesionalEjemploMhd.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "SolicitudEjemploMhd",
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "text" : "Hemograma (código de prestación FONASA de la solicitud; no se fija un `system`/código concreto en este ejemplo transversal, ya que el arancel vigente lo define la guía de dominio de Laboratorio, no este repo)"
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemploMhd"
  },
  "authoredOn" : "2026-11-02T08:00:00-03:00",
  "requester" : {
    "reference" : "Practitioner/ProfesionalEjemploMhd"
  }
}

```
