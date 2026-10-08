# Tipos de documento SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de documento SIGGES**

## CodeSystem: Tipos de documento SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSTipoDocumentoSIGGES |

 
Documentos del ciclo de un caso GES. Se usan como evento del MessageHeader. La propiedad codigoSIGGES es el identificador numérico interno de SIGGES 2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Tipos de documento SIGGES](ValueSet-vs-tipo-documento-sigges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-documento-sigges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges",
  "version" : "0.4.0",
  "name" : "CSTipoDocumentoSIGGES",
  "title" : "Tipos de documento SIGGES",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Documentos del ciclo de un caso GES. Se usan como evento del MessageHeader. La propiedad codigoSIGGES es el identificador numérico interno de SIGGES 2.0.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "property" : [{
    "code" : "codigoSIGGES",
    "description" : "Código numérico del documento en SIGGES 2.0",
    "type" : "integer"
  },
  {
    "code" : "endpointV15",
    "description" : "Endpoint equivalente en la API de interoperabilidad v1.5",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "SIC",
    "display" : "Solicitud de interconsulta",
    "definition" : "Solicitud de interconsulta con sospecha GES.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 1
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/sic/registrar"
    }]
  },
  {
    "code" : "IPD",
    "display" : "Informe de proceso diagnóstico",
    "definition" : "Confirma o descarta el problema de salud GES.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 2
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/ipd/registrar"
    }]
  },
  {
    "code" : "OA",
    "display" : "Orden de atención",
    "definition" : "Orden para una prestación garantizada (examen, procedimiento, tratamiento).",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 3
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/ordenatencion/registrar"
    }]
  },
  {
    "code" : "PO",
    "display" : "Prestación otorgada",
    "definition" : "Registro de una prestación efectivamente realizada.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 10
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/po"
    }]
  },
  {
    "code" : "CC",
    "display" : "Cierre de caso",
    "definition" : "Cierre administrativo del caso GES.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 30
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/cierrecaso/registrar"
    }]
  },
  {
    "code" : "HD",
    "display" : "Hoja diaria APS",
    "definition" : "Registro en atención primaria del estado de un caso por rama.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 32
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/hd/registrar"
    }]
  },
  {
    "code" : "EXGO",
    "display" : "Excepción de garantía de oportunidad",
    "definition" : "Exceptúa una garantía de oportunidad por una causal.",
    "property" : [{
      "code" : "codigoSIGGES",
      "valueInteger" : 34
    },
    {
      "code" : "endpointV15",
      "valueString" : "/interoperabilidad/sigges/documentos/excepciongo/registrar"
    }]
  }]
}

```
