# Endpoint de Acceso a Imágenes MINSAL - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint de Acceso a Imágenes MINSAL**

## Resource Profile: Endpoint de Acceso a Imágenes MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:EndpointAccesoImagenesMinsal |

 
Declaración, por parte de un proveedor RIS/PACS, del mecanismo mediante el cual un paciente accede a las imágenes de sus estudios en la infraestructura de origen: IHE Invoke Image Display (modalidad A), API del proveedor (modalidad B) o portal web del proveedor (modalidad C). El connectionType determina la modalidad y, con ella, el nivel de conformidad (D-020). El recurso describe la dirección del servicio; el contexto del estudio y los mecanismos de autenticación y autorización se resuelven en tiempo de ejecución y no se almacenan aquí. Un mismo Endpoint es referenciado por todos los estudios del proveedor que se acceden por ese mecanismo. 

**Usages:**

* Examples for this Perfil: [API de apertura de visor - proveedor de ejemplo](Endpoint-EndpointApiProveedorEjemplo.md), [Visor web de imágenes - Hospital de Talca](Endpoint-EndpointIidVisorEjemplo.md) and [Portal de pacientes - proveedor de ejemplo](Endpoint-EndpointPortalProveedorEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-EndpointAccesoImagenesMinsal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EndpointAccesoImagenesMinsal.csv), [Excel](StructureDefinition-EndpointAccesoImagenesMinsal.xlsx), [Schematron](StructureDefinition-EndpointAccesoImagenesMinsal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EndpointAccesoImagenesMinsal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal",
  "version" : "0.5.0",
  "name" : "EndpointAccesoImagenesMinsal",
  "title" : "Endpoint de Acceso a Imágenes MINSAL",
  "status" : "draft",
  "date" : "2026-11-02T11:03:04-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Declaración, por parte de un proveedor RIS/PACS, del mecanismo mediante el cual un paciente accede a las imágenes de sus estudios en la infraestructura de origen: IHE Invoke Image Display (modalidad A), API del proveedor (modalidad B) o portal web del proveedor (modalidad C). El connectionType determina la modalidad y, con ella, el nivel de conformidad (D-020). El recurso describe la dirección del servicio; el contexto del estudio y los mecanismos de autenticación y autorización se resuelven en tiempo de ejecución y no se almacenan aquí. Un mismo Endpoint es referenciado por todos los estudios del proveedor que se acceden por ese mecanismo.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Endpoint",
      "path" : "Endpoint",
      "constraint" : [{
        "key" : "endpoint-acceso-https-sin-parametros",
        "severity" : "error",
        "human" : "La dirección del mecanismo de acceso usa HTTPS y no contiene parámetros de consulta ni fragmento: el contexto del estudio, la identidad del paciente y cualquier credencial se agregan en tiempo de ejecución y nunca se almacenan en el Endpoint.",
        "expression" : "address.startsWith('https://') and address.contains('?').not() and address.contains('#').not()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"
      }]
    },
    {
      "id" : "Endpoint.status",
      "path" : "Endpoint.status",
      "comment" : "suspended o error indican que el mecanismo está temporalmente no disponible para todos los estudios que lo referencian (escenario D). off retira el mecanismo. El portal sólo ofrece abrir imágenes cuando el Endpoint está active.",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.connectionType",
      "path" : "Endpoint.connectionType",
      "short" : "Modalidad de integración: ihe-iid (A), api-proveedor (B), portal-proveedor (C); dicom-wado-rs / dicom-qido-rs sólo para usos profesionales.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ValueSet/TipoConexionAccesoImagenes"
      }
    },
    {
      "id" : "Endpoint.name",
      "path" : "Endpoint.name",
      "short" : "Nombre legible del mecanismo de acceso (por ejemplo, el nombre del visor o del portal del proveedor).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.managingOrganization",
      "path" : "Endpoint.managingOrganization",
      "short" : "Proveedor u establecimiento responsable del mecanismo y de las imágenes.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.contact",
      "path" : "Endpoint.contact",
      "short" : "Contacto técnico del proveedor para incidentes de disponibilidad y de seguridad.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.period",
      "path" : "Endpoint.period",
      "short" : "Vigencia del mecanismo, cuando el proveedor la declara.",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.payloadType",
      "path" : "Endpoint.payloadType",
      "short" : "Para visores y portales, endpoint-payload-type#none: el portal no envía contenido clínico, sólo invoca.",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.payloadMimeType",
      "path" : "Endpoint.payloadMimeType",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.address",
      "path" : "Endpoint.address",
      "short" : "URL base HTTPS del mecanismo, sin parámetros de consulta: URL base de IID, URL base de la API o URL de entrada del portal.",
      "comment" : "No debe contener identificadores de paciente, identificadores de estudio, tokens, claves de API ni ningún otro parámetro. La invariante endpoint-acceso-https-sin-parametros lo verifica.",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.header",
      "path" : "Endpoint.header",
      "comment" : "Prohibido: Endpoint.header podría usarse para almacenar claves de API o tokens. Las credenciales entre el servicio nacional y el proveedor se gestionan fuera del recurso.",
      "max" : "0"
    }]
  }
}

```
