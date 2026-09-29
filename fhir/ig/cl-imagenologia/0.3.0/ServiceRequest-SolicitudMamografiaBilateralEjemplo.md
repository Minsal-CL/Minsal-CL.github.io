# Solicitud: mamografía bilateral - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud: mamografía bilateral**

## Example ServiceRequest: Solicitud: mamografía bilateral

Profile: [Solicitud de Examen Imagenológico MINSAL](StructureDefinition-MinsalServiceRequestImagen.md)

**identifier**: Placer Identifier/134-2

**requisition**: `http://example.org/hospital-talca/solicitudes-imagenologia`/134

**status**: Active

**intent**: Order

**category**: Imaging (procedure)

**priority**: Routine

**code**: MAMOGRAFIA BILATERAL

**subject**: [María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))](Patient-PacienteImagenologiaEjemplo.md)

**authoredOn**: 2026-09-01 09:30:00-0400

**requester**: [Practitioner Juan Salinas ](Practitioner-ProfesionalSolicitanteImagenEjemplo.md)

**performer**: [Organization Servicio de Imagenología, Hospital de Talca](Organization-ServicioImagenologiaEjemplo.md)

**reasonCode**: Tumor palpable



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "SolicitudMamografiaBilateralEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "http://example.org/hospital-talca/ordenes-imagenologia",
    "value" : "134-2"
  }],
  "requisition" : {
    "system" : "http://example.org/hospital-talca/solicitudes-imagenologia",
    "value" : "134"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia",
      "code" : "MAMOB",
      "display" : "MAMOGRAFIA BILATERAL"
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0401010",
      "display" : "Mamografía bilateral"
    }],
    "text" : "MAMOGRAFIA BILATERAL"
  },
  "subject" : {
    "reference" : "Patient/PacienteImagenologiaEjemplo"
  },
  "authoredOn" : "2026-09-01T09:30:00-04:00",
  "requester" : {
    "reference" : "Practitioner/ProfesionalSolicitanteImagenEjemplo"
  },
  "performer" : [{
    "reference" : "Organization/ServicioImagenologiaEjemplo"
  }],
  "reasonCode" : [{
    "text" : "Tumor palpable"
  }]
}

```
