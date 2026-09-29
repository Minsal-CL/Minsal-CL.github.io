# Bundle de solicitud enviado directamente en FHIR por un RCE - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de solicitud enviado directamente en FHIR por un RCE**

## Example Bundle: Bundle de solicitud enviado directamente en FHIR por un RCE



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleSolicitudImagenFhirDirectoEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia"]
  },
  "identifier" : {
    "system" : "http://example.org/rce-hospital-talca/envios-fhir",
    "value" : "ENV-2026-000123"
  },
  "type" : "transaction",
  "timestamp" : "2026-09-24T10:15:00-03:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:cccccccc-3333-4333-8333-333333333333",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PacienteRceFhirDirectoEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PacienteRceFhirDirectoEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente PacienteRceFhirDirectoEjemplo</b></p><a name=\"PacienteRceFhirDirectoEjemplo\"> </a><a name=\"hcPacienteRceFhirDirectoEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PacienteImagenologia.html\">Paciente de Imagenología</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
            "code" : "1",
            "display" : "RUN"
          }]
        },
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
        "value" : "12345678-5"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Carmona",
        "given" : ["María"]
      }],
      "gender" : "female",
      "birthDate" : "1975-04-12",
      "deceasedBoolean" : false
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "urn:uuid:dddddddd-4444-4444-8444-444444444444",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "SolicitudTcRceFhirDirectoEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_SolicitudTcRceFhirDirectoEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio SolicitudTcRceFhirDirectoEjemplo</b></p><a name=\"SolicitudTcRceFhirDirectoEjemplo\"> </a><a name=\"hcSolicitudTcRceFhirDirectoEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestImagen.html\">Solicitud de Examen Imagenológico MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/RCE-778-1</p><p><b>requisition</b>: <code>http://example.org/rce-hospital-talca/solicitudes-imagenologia</code>/RCE-778</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363679005}\">Imaging (procedure)</span></p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia TC01}, {https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0403001}\">TC CEREBRO</span></p><p><b>subject</b>: <a href=\"Bundle-BundleSolicitudImagenFhirDirectoEjemplo.html#urn-uuid-cccccccc-3333-4333-8333-333333333333\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-09-24 10:10:00-0300</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteImagenEjemplo.html\">Practitioner Juan Salinas </a></p><p><b>performer</b>: <a href=\"Organization-ServicioImagenologiaEjemplo.html\">Organization Servicio de Imagenología, Hospital de Talca</a></p><p><b>reasonCode</b>: <span title=\"Codes:\">Cefalea persistente</span></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "http://example.org/rce-hospital-talca/ordenes-imagenologia",
        "value" : "RCE-778-1"
      }],
      "requisition" : {
        "system" : "http://example.org/rce-hospital-talca/solicitudes-imagenologia",
        "value" : "RCE-778"
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
          "code" : "TC01",
          "display" : "TC CEREBRO"
        },
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0403001",
          "display" : "Tomografía computarizada de cráneo encefálica"
        }],
        "text" : "TC CEREBRO"
      },
      "subject" : {
        "reference" : "urn:uuid:cccccccc-3333-4333-8333-333333333333"
      },
      "authoredOn" : "2026-09-24T10:10:00-03:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteImagenEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/ServicioImagenologiaEjemplo"
      }],
      "reasonCode" : [{
        "text" : "Cefalea persistente"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:eeeeeeee-5555-4555-8555-555555555555",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "SolicitudRmRceFhirDirectoEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_SolicitudRmRceFhirDirectoEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio SolicitudRmRceFhirDirectoEjemplo</b></p><a name=\"SolicitudRmRceFhirDirectoEjemplo\"> </a><a name=\"hcSolicitudRmRceFhirDirectoEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestImagen.html\">Solicitud de Examen Imagenológico MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/RCE-778-2</p><p><b>requisition</b>: <code>http://example.org/rce-hospital-talca/solicitudes-imagenologia</code>/RCE-778</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363679005}\">Imaging (procedure)</span></p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia RM01}, {https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0405001}\">RM CEREBRO</span></p><p><b>subject</b>: <a href=\"Bundle-BundleSolicitudImagenFhirDirectoEjemplo.html#urn-uuid-cccccccc-3333-4333-8333-333333333333\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-09-24 10:10:00-0300</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteImagenEjemplo.html\">Practitioner Juan Salinas </a></p><p><b>performer</b>: <a href=\"Organization-ServicioImagenologiaEjemplo.html\">Organization Servicio de Imagenología, Hospital de Talca</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "http://example.org/rce-hospital-talca/ordenes-imagenologia",
        "value" : "RCE-778-2"
      }],
      "requisition" : {
        "system" : "http://example.org/rce-hospital-talca/solicitudes-imagenologia",
        "value" : "RCE-778"
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
          "code" : "RM01",
          "display" : "RM CEREBRO"
        },
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0405001",
          "display" : "Resonancia magnética cráneo encefálica"
        }],
        "text" : "RM CEREBRO"
      },
      "subject" : {
        "reference" : "urn:uuid:cccccccc-3333-4333-8333-333333333333"
      },
      "authoredOn" : "2026-09-24T10:10:00-03:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteImagenEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/ServicioImagenologiaEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  }]
}

```
