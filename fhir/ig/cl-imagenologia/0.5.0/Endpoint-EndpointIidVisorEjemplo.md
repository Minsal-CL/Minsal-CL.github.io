# Mecanismo de acceso: visor del proveedor invocado con IHE IID (modalidad A) - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mecanismo de acceso: visor del proveedor invocado con IHE IID (modalidad A)**

## Example Endpoint: Mecanismo de acceso: visor del proveedor invocado con IHE IID (modalidad A)

Perfil: [Endpoint de Acceso a Imágenes MINSAL](StructureDefinition-EndpointAccesoImagenesMinsal.md)

Visor web de imágenes - Hospital de Talca (IHE IID (Endpoint Connection Type#ihe-iid)): https://visor.example.org/IHEInvokeImageDisplay

-------

| | |
| :--- | :--- |
| Status: | Active |
| Address: | [https://visor.example.org/IHEInvokeImageDisplay](https://visor.example.org/IHEInvokeImageDisplay) |
| Connection Type: | [Endpoint Connection Type: ihe-iid](http://terminology.hl7.org/7.5.0/CodeSystem-endpoint-connection-type.html#endpoint-connection-type-ihe-iid)(IHE IID) |
| Payload Type: | None |
| Mime Type: | text/html |
| Managed By: | [Hospital Dr. César Garavagno Burotto (Hospital de Talca) (Healthcare Provider) (http://deis.minsal.cl/establecimientos#116105)](Organization-EstablecimientoOrigenImagenEjemplo.md) |
| Contact Detail | [soporte-imagenes@example.org](mailto:soporte-imagenes@example.org) |



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "EndpointIidVisorEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"]
  },
  "status" : "active",
  "connectionType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
    "code" : "ihe-iid",
    "display" : "IHE IID"
  },
  "name" : "Visor web de imágenes - Hospital de Talca",
  "managingOrganization" : {
    "reference" : "Organization/EstablecimientoOrigenImagenEjemplo"
  },
  "contact" : [{
    "system" : "email",
    "value" : "soporte-imagenes@example.org",
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
  "address" : "https://visor.example.org/IHEInvokeImageDisplay"
}

```
