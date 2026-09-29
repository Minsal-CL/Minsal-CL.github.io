# Servicio ejecutante de imagenología de ejemplo - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Servicio ejecutante de imagenología de ejemplo**

## Example Organization: Servicio ejecutante de imagenología de ejemplo

Profile: [Organización participante en el flujo de imagenología](StructureDefinition-OrganizacionParticipanteImagenologia.md)

**identifier**: `http://example.org/hospital-talca/servicios`/IMG

**active**: true

**type**: Hospital Department

**name**: Servicio de Imagenología, Hospital de Talca

**partOf**: [Organization Hospital Dr. César Garavagno Burotto (Hospital de Talca)](Organization-EstablecimientoOrigenImagenEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ServicioImagenologiaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
  },
  "identifier" : [{
    "system" : "http://example.org/hospital-talca/servicios",
    "value" : "IMG"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "dept",
      "display" : "Hospital Department"
    }]
  }],
  "name" : "Servicio de Imagenología, Hospital de Talca",
  "partOf" : {
    "reference" : "Organization/EstablecimientoOrigenImagenEjemplo"
  }
}

```
