# CESFAM de ejemplo - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **CESFAM de ejemplo**

## Example Organization: CESFAM de ejemplo

Profile: [Prestador Institucional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorOrganizacional.html)

**identifier**: `https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino`/112307

**active**: true

**name**: CESFAM de Ejemplo



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "EstablecimientoDestinoEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
    "value" : "112307"
  }],
  "active" : true,
  "name" : "CESFAM de Ejemplo"
}

```
