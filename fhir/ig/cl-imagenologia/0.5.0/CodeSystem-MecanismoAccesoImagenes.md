# Mecanismo de acceso a imágenes del proveedor - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mecanismo de acceso a imágenes del proveedor**

## CodeSystem: Mecanismo de acceso a imágenes del proveedor 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/MecanismoAccesoImagenes | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:MecanismoAccesoImagenes |

 
Tipos de conexión para el acceso del paciente a las imágenes que no tienen código en endpoint-connection-type de HL7: la API de visualización del proveedor (modalidad B) y el portal web del proveedor (modalidad C). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Tipo de conexión para acceso a imágenes](ValueSet-TipoConexionAccesoImagenes.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MecanismoAccesoImagenes",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/MecanismoAccesoImagenes",
  "version" : "0.5.0",
  "name" : "MecanismoAccesoImagenes",
  "title" : "Mecanismo de acceso a imágenes del proveedor",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-02T11:03:04-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Tipos de conexión para el acceso del paciente a las imágenes que no tienen código en endpoint-connection-type de HL7: la API de visualización del proveedor (modalidad B) y el portal web del proveedor (modalidad C).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "api-proveedor",
    "display" : "API de visualización del proveedor",
    "definition" : "API documentada por el proveedor que, a partir de una solicitud servidor a servidor autenticada, resuelve el estudio y devuelve una forma de abrirlo en el visor existente del proveedor con una sesión de un solo uso y corta duración (modalidad B, conformidad integrada)."
  },
  {
    "code" : "portal-proveedor",
    "display" : "Portal web del proveedor",
    "definition" : "Portal web del proveedor en el que el paciente se autentica y consulta sus imágenes. El portal nacional sólo dirige al paciente a la dirección de entrada; no abre el estudio en contexto (modalidad C, conformidad básica)."
  }]
}

```
