# Escenario A: estudio con imágenes disponibles e informe pendiente - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario A: estudio con imágenes disponibles e informe pendiente**

## Example ImagingStudy: Escenario A: estudio con imágenes disponibles e informe pendiente

Perfil: [Estudio Imagenológico MINSAL](StructureDefinition-EstudioImagenologicoMinsal.md)

**identifier**: Accession ID/20260902000135, [DICOM Unique Id](http://terminology.hl7.org/6.5.0/NamingSystem-dui.html)/urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.2 (use: official)

**status**: Available

**modality**: [DICOM: MG](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MG) (Mammography)

**subject**: [María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official))](Patient-PacienteImagenologiaEjemplo.md)

**started**: 2026-09-02 12:10:00-0400

**basedOn**: [ServiceRequest MAMOGRAFIA BILATERAL](ServiceRequest-SolicitudMamografiaBilateralEjemplo.md)

**endpoint**: [Visor web de imágenes - Hospital de Talca (IHE IID (Endpoint Connection Type#ihe-iid)): https://visor.example.org/IHEInvokeImageDisplay](Endpoint-EndpointIidVisorEjemplo.md)

**numberOfSeries**: 1

**numberOfInstances**: 4

**procedureCode**: MAMOGRAFIA BILATERAL

**description**: MAMOGRAFIA BILATERAL



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "EstudioMamografiaDisponibleSinInformeEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "http://deis.minsal.cl/establecimientos/116105/imagenologia/accession-number",
    "value" : "20260902000135"
  },
  {
    "use" : "official",
    "system" : "urn:dicom:uid",
    "value" : "urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.2"
  }],
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "MG",
    "display" : "Mammography"
  }],
  "subject" : {
    "reference" : "Patient/PacienteImagenologiaEjemplo"
  },
  "started" : "2026-09-02T12:10:00-04:00",
  "basedOn" : [{
    "reference" : "ServiceRequest/SolicitudMamografiaBilateralEjemplo"
  }],
  "endpoint" : [{
    "reference" : "Endpoint/EndpointIidVisorEjemplo"
  }],
  "numberOfSeries" : 1,
  "numberOfInstances" : 4,
  "procedureCode" : [{
    "coding" : [{
      "system" : "http://deis.minsal.cl/establecimientos/116105/imagenologia/procedimientos",
      "code" : "MAMOB",
      "display" : "MAMOGRAFIA BILATERAL"
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0401010",
      "display" : "Mamografía bilateral"
    }],
    "text" : "MAMOGRAFIA BILATERAL"
  }],
  "description" : "MAMOGRAFIA BILATERAL"
}

```
