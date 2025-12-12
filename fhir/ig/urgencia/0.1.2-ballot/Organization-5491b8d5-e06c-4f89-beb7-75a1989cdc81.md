# Ejemplo de una organización de establecimiento - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de una organización de establecimiento**

## Example Organization: Ejemplo de una organización de establecimiento

Profile: [Establecimiento Urgencia](StructureDefinition-EstablecimientoUrg.md)

**identifier**: `http://deis.minsal.cl/establecimientos`/114105

**active**: true

**name**: Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "5491b8d5-e06c-4f89-beb7-75a1989cdc81",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EstablecimientoUrg"
    ]
  },
  "identifier" : [
    {
      "system" : "http://deis.minsal.cl/establecimientos",
      "value" : "114105"
    }
  ],
  "active" : true,
  "name" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza"
}

```
