# Establecimiento de origen de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento de origen de ejemplo**

## Example Organization: Establecimiento de origen de ejemplo

Profile: [Organización participante en el flujo de laboratorio](StructureDefinition-OrganizacionParticipanteLaboratorio.md)

**identifier**: [EstablecimientoDeis](NamingSystem-NSEstablecimientoDeis.md)/116105

**active**: true

**type**: Healthcare Provider

**name**: Hospital Dr. César Garavagno Burotto (Hospital de Talca)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "EstablecimientoOrigenEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
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
