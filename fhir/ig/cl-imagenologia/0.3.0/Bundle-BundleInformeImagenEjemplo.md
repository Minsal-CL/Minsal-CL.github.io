# Bundle de informe radiológico con estudio imagenológico - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de informe radiológico con estudio imagenológico**

## Example Bundle: Bundle de informe radiológico con estudio imagenológico



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleInformeImagenEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia"]
  },
  "identifier" : {
    "system" : "http://example.org/hospital-talca/mensajes-hl7",
    "value" : "82771"
  },
  "type" : "transaction",
  "timestamp" : "2026-09-02T15:40:00-04:00",
  "entry" : [{
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/DiagnosticReport/InformeTcCerebroEjemplo",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "InformeTcCerebroEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_InformeTcCerebroEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: InformeDiagnostico InformeTcCerebroEjemplo</b></p><a name=\"InformeTcCerebroEjemplo\"> </a><a name=\"hcInformeTcCerebroEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-InformeRadiologicoMinsal.html\">Informe Radiológico MINSAL</a></p></div><h2><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/CodigoProcedimientoImagenologia TC01}, {https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0403001}\">TC CEREBRO</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 RAD}\">Radiology</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</td></tr><tr><td>Relevant Time</td><td>2026-09-02 11:05:00-0400 --&gt; 2026-09-02 11:25:00-0400</td></tr><tr><td>Reported</td><td>2026-09-02 15:40:00-0400</td></tr><tr><td>Performer</td><td> <a href=\"Organization-ServicioImagenologiaEjemplo.html\">Organization Servicio de Imagenología, Hospital de Talca</a></td></tr><tr><td>Identifier</td><td> Accession ID/20260902000134</td></tr><tr><td>Presented Form</td><td> application/pdf: JVBERi0xLjQKMSAwIG9iajw8L1R5cGUv...</td></tr></table><p><b>Report Details</b></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "http://example.org/hospital-talca/accession-number",
        "value" : "20260902000134"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/SolicitudTcCerebroEjemplo"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "RAD",
          "display" : "Radiology"
        }]
      }],
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
        "reference" : "Patient/PacienteImagenologiaEjemplo"
      },
      "effectivePeriod" : {
        "start" : "2026-09-02T11:05:00-04:00",
        "end" : "2026-09-02T11:25:00-04:00"
      },
      "issued" : "2026-09-02T15:40:00-04:00",
      "performer" : [{
        "reference" : "Organization/ServicioImagenologiaEjemplo"
      }],
      "resultsInterpreter" : [{
        "reference" : "Practitioner/MedicoRadiologoEjemplo"
      }],
      "imagingStudy" : [{
        "reference" : "ImagingStudy/EstudioTcCerebroEjemplo"
      }],
      "presentedForm" : [{
        "contentType" : "application/pdf",
        "data" : "JVBERi0xLjQKMSAwIG9iajw8L1R5cGUvQ2F0YWxvZy9QYWdlcyAyIDAgUj4+ZW5kb2JqCjIgMCBvYmo8PC9UeXBlL1BhZ2VzL0tpZHNbMyAwIFJdL0NvdW50IDE+PmVuZG9iagozIDAgb2JqPDwvVHlwZS9QYWdlL1BhcmVudCAyIDAgUi9NZWRpYUJveFswIDAgMjAwIDEwMF0vQ29udGVudHMgNCAwIFIvUmVzb3VyY2VzPDwvRm9udDw8L0YxIDUgMCBSPj4+Pj4+ZW5kb2JqCjQgMCBvYmo8PC9MZW5ndGggNjg+PnN0cmVhbQpCVCAvRjEgMTAgVGYgMTAgNTAgVGQgKEluZm9ybWUgcmFkaW9sb2dpY28gZGUgZWplbXBsbykgVGogRVQKZW5kc3RyZWFtCmVuZG9iago1IDAgb2JqPDwvVHlwZS9Gb250L1N1YnR5cGUvVHlwZTEvQmFzZUZvbnQvSGVsdmV0aWNhPj5lbmRvYmoKdHJhaWxlcjw8L1Jvb3QgMSAwIFI+PgolJUVPRg==",
        "title" : "Informe TC cerebro",
        "creation" : "2026-09-02T14:10:00-04:00"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "DiagnosticReport"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ImagingStudy/EstudioTcCerebroEjemplo",
    "resource" : {
      "resourceType" : "ImagingStudy",
      "id" : "EstudioTcCerebroEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ImagingStudy_EstudioTcCerebroEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EstudioImagen  / EstudioImagen EstudioTcCerebroEjemplo</b></p><a name=\"EstudioTcCerebroEjemplo\"> </a><a name=\"hcEstudioTcCerebroEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EstudioImagenologicoMinsal.html\">Estudio Imagenológico MINSAL</a></p></div><p><b>identifier</b>: Accession ID/20260902000134, <a href=\"http://terminology.hl7.org/7.0.0/NamingSystem-dui.html\" title=\"An OID issued under DICOM OID rules. DICOM OIDs are represented as plain OIDs, with a prefix of &quot;urn:oid:&quot;. See https://www.dicomstandard.org/\">DICOM Unique Id</a>/urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.1 (use: official, )</p><p><b>status</b>: Available</p><p><b>modality</b>: <a href=\"http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT\">DICOM: CT</a> (Computed Tomography)</p><p><b>subject</b>: <a href=\"Patient-PacienteImagenologiaEjemplo.html\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</a></p><p><b>started</b>: 2026-09-02 11:05:00-0400</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "http://example.org/hospital-talca/accession-number",
        "value" : "20260902000134"
      },
      {
        "use" : "official",
        "system" : "urn:dicom:uid",
        "value" : "urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.1"
      }],
      "status" : "available",
      "modality" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "CT",
        "display" : "Computed Tomography"
      }],
      "subject" : {
        "reference" : "Patient/PacienteImagenologiaEjemplo"
      },
      "started" : "2026-09-02T11:05:00-04:00"
    },
    "request" : {
      "method" : "POST",
      "url" : "ImagingStudy"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/Patient/PacienteImagenologiaEjemplo",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PacienteImagenologiaEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PacienteImagenologiaEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente PacienteImagenologiaEjemplo</b></p><a name=\"PacienteImagenologiaEjemplo\"> </a><a name=\"hcPacienteImagenologiaEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PacienteImagenologia.html\">Paciente de Imagenología</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr></table></div>"
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
      "method" : "PUT",
      "url" : "Patient/PacienteImagenologiaEjemplo"
    }
  }]
}

```
