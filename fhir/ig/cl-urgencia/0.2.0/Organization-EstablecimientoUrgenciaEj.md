# Hospital de ejemplo - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospital de ejemplo**

## Example Organization: Hospital de ejemplo

Profile: [Prestador Institucional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorOrganizacional.html)

**identifier**: `https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino`/112100

**active**: true

**name**: Hospital de Ejemplo

**partOf**: Servicio de Salud Metropolitano Sur Oriente



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "EstablecimientoUrgenciaEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
    "value" : "112100"
  }],
  "active" : true,
  "name" : "Hospital de Ejemplo",
  "partOf" : {
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  }
}

```
