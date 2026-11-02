# Mecanismo de acceso: API de visualización del proveedor (modalidad B) - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mecanismo de acceso: API de visualización del proveedor (modalidad B)**

## Example Endpoint: Mecanismo de acceso: API de visualización del proveedor (modalidad B)

Perfil: [Endpoint de Acceso a Imágenes MINSAL](StructureDefinition-EndpointAccesoImagenesMinsal.md)

API de apertura de visor - proveedor de ejemplo (API de visualización del proveedor (Mecanismo de acceso a imágenes del proveedor#api-proveedor)): https://api.example.org/visor/v1

-------

| | |
| :--- | :--- |
| Status: | Active |
| Address: | [https://api.example.org/visor/v1](https://api.example.org/visor/v1) |
| Connection Type: | [Mecanismo de acceso a imágenes del proveedor: api-proveedor](CodeSystem-MecanismoAccesoImagenes.md#MecanismoAccesoImagenes-api-proveedor)(API de visualización del proveedor) |
| Payload Type: | None |
| Mime Type: | application/json |
| Managed By: | [Hospital Dr. César Garavagno Burotto (Hospital de Talca) (Healthcare Provider) (http://deis.minsal.cl/establecimientos#116105)](Organization-EstablecimientoOrigenImagenEjemplo.md) |
| Contact Detail | [integraciones@example.org](mailto:integraciones@example.org) |



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "EndpointApiProveedorEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"]
  },
  "status" : "active",
  "connectionType" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/MecanismoAccesoImagenes",
    "code" : "api-proveedor",
    "display" : "API de visualización del proveedor"
  },
  "name" : "API de apertura de visor - proveedor de ejemplo",
  "managingOrganization" : {
    "reference" : "Organization/EstablecimientoOrigenImagenEjemplo"
  },
  "contact" : [{
    "system" : "email",
    "value" : "integraciones@example.org",
    "use" : "work"
  }],
  "payloadType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
      "code" : "none",
      "display" : "None"
    }]
  }],
  "payloadMimeType" : ["application/json"],
  "address" : "https://api.example.org/visor/v1"
}

```
