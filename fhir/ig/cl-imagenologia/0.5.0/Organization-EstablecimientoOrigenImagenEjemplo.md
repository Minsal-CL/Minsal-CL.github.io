# Establecimiento de origen de ejemplo - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento de origen de ejemplo**

## Example Organization: Establecimiento de origen de ejemplo

Perfil: [Organización participante en el flujo de imagenología](StructureDefinition-OrganizacionParticipanteImagenologia.md)

Hospital Dr. César Garavagno Burotto (Hospital de Talca) (Healthcare Provider) (http://deis.minsal.cl/establecimientos#116105)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Healthcare Provider |



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
