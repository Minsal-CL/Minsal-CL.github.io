# Mecanismo de acceso: portal web del proveedor (modalidad C) - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mecanismo de acceso: portal web del proveedor (modalidad C)**

## Example Endpoint: Mecanismo de acceso: portal web del proveedor (modalidad C)

Perfil: [Endpoint de Acceso a Imágenes MINSAL](StructureDefinition-EndpointAccesoImagenesMinsal.md)

Portal de pacientes - proveedor de ejemplo (Portal web del proveedor (Mecanismo de acceso a imágenes del proveedor#portal-proveedor)): https://portal.example.org/pacientes

-------

| | |
| :--- | :--- |
| Status: | Active |
| Address: | [https://portal.example.org/pacientes](https://portal.example.org/pacientes) |
| Connection Type: | [Mecanismo de acceso a imágenes del proveedor: portal-proveedor](CodeSystem-MecanismoAccesoImagenes.md#MecanismoAccesoImagenes-portal-proveedor)(Portal web del proveedor) |
| Payload Type: | None |
| Mime Type: | text/html |
| Managed By: | [Hospital Dr. César Garavagno Burotto (Hospital de Talca) (Healthcare Provider) (http://deis.minsal.cl/establecimientos#116105)](Organization-EstablecimientoOrigenImagenEjemplo.md) |
| Contact Detail | [+56 71 200 0000](tel:+56712000000) |



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "EndpointPortalProveedorEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"]
  },
  "status" : "active",
  "connectionType" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/MecanismoAccesoImagenes",
    "code" : "portal-proveedor",
    "display" : "Portal web del proveedor"
  },
  "name" : "Portal de pacientes - proveedor de ejemplo",
  "managingOrganization" : {
    "reference" : "Organization/EstablecimientoOrigenImagenEjemplo"
  },
  "contact" : [{
    "system" : "phone",
    "value" : "+56 71 200 0000",
    "use" : "work"
  }],
  "payloadType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
      "code" : "none",
      "display" : "None"
    }]
  }],
  "payloadMimeType" : ["text/html"],
  "address" : "https://portal.example.org/pacientes"
}

```
