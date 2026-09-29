# Establecimiento de origen de ejemplo - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento de origen de ejemplo**

## Example Organization: Establecimiento de origen de ejemplo

Profile: [Organización participante en el flujo de imagenología](StructureDefinition-OrganizacionParticipanteImagenologia.md)

**identifier**: `http://deis.minsal.cl/establecimientos`/116105

**active**: true

**type**: Healthcare Provider

**name**: Hospital Dr. César Garavagno Burotto (Hospital de Talca)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "EstablecimientoOrigenImagenEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
  },
  "identifier" : [{
    "system" : "http://deis.minsal.cl/establecimientos",
    "value" : "116105"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Hospital Dr. César Garavagno Burotto (Hospital de Talca)"
}

```
