# Escenario D: imágenes temporalmente no consultables - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario D: imágenes temporalmente no consultables**

## Example ImagingStudy: Escenario D: imágenes temporalmente no consultables

Perfil: [Estudio Imagenológico MINSAL](StructureDefinition-EstudioImagenologicoMinsal.md)

**identifier**: Accession ID/20260815000077, [DICOM Unique Id](http://terminology.hl7.org/6.5.0/NamingSystem-dui.html)/urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.4 (use: official)

**status**: Available

**modality**: [DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT) (Computed Tomography)

**subject**: [María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official))](Patient-PacienteImagenologiaEjemplo.md)

**started**: 2026-08-15 10:30:00-0400

**numberOfSeries**: 2

**numberOfInstances**: 280

**procedureCode**: TC CEREBRO



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "EstudioTcTemporalmenteNoDisponibleEjemplo",
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
    "value" : "20260815000077"
  },
  {
    "use" : "official",
    "system" : "urn:dicom:uid",
    "value" : "urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.4"
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
  "started" : "2026-08-15T10:30:00-04:00",
  "numberOfSeries" : 2,
  "numberOfInstances" : 280,
  "procedureCode" : [{
    "coding" : [{
      "system" : "http://deis.minsal.cl/establecimientos/116105/imagenologia/procedimientos",
      "code" : "TC01",
      "display" : "TC CEREBRO"
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0403001",
      "display" : "Tomografía computarizada de cráneo encefálica"
    }],
    "text" : "TC CEREBRO"
  }]
}

```
