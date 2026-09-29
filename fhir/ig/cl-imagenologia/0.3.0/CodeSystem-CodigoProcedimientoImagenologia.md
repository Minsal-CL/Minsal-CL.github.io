# Códigos de procedimientos de imagenología - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Códigos de procedimientos de imagenología**

## CodeSystem: Códigos de procedimientos de imagenología (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:CodigoProcedimientoImagenologia |

 
Identificador canónico del catálogo local de procedimientos de imagenología del establecimiento emisor. El contenido es administrado externamente por el servicio terminológico (Ontology Server del Bus de Interoperabilidad), que es también el responsable de su homologación a SNOMED CT, LOINC o al arancel FONASA. Esta guía fija únicamente el URI que identifica el sistema de códigos, siguiendo el mismo patrón que CodigoPrestacionFonasa en la Guía de Implementación de Laboratorio Clínico. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CodigoProcedimientoImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia",
  "version" : "0.3.0",
  "name" : "CodigoProcedimientoImagenologia",
  "title" : "Códigos de procedimientos de imagenología",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Identificador canónico del catálogo local de procedimientos de imagenología del establecimiento emisor. El contenido es administrado externamente por el servicio terminológico (Ontology Server del Bus de Interoperabilidad), que es también el responsable de su homologación a SNOMED CT, LOINC o al arancel FONASA. Esta guía fija únicamente el URI que identifica el sistema de códigos, siguiendo el mismo patrón que CodigoPrestacionFonasa en la Guía de Implementación de Laboratorio Clínico.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "not-present"
}

```
