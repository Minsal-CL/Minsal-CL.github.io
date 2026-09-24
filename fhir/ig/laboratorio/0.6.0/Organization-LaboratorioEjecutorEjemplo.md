# Laboratorio ejecutor de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratorio ejecutor de ejemplo**

## Example Organization: Laboratorio ejecutor de ejemplo

Profile: [Organización participante en el flujo de laboratorio](StructureDefinition-OrganizacionParticipanteLaboratorio.md)

**identifier**: [EstablecimientoDeis](NamingSystem-NSEstablecimientoDeis.md)/116105

**active**: true

**type**: Healthcare Provider

**name**: Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "LaboratorioEjecutorEjemplo",
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
  "name" : "Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)"
}

```
