# Estudio: TC de cerebro - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estudio: TC de cerebro**

## Example ImagingStudy: Estudio: TC de cerebro

Profile: [Estudio Imagenológico MINSAL](StructureDefinition-EstudioImagenologicoMinsal.md)

**identifier**: Accession ID/20260902000134, [DICOM Unique Id](http://terminology.hl7.org/7.0.0/NamingSystem-dui.html)/urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.1 (use: official, )

**status**: Available

**modality**: [DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT) (Computed Tomography)

**subject**: [María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official, ))](Patient-PacienteImagenologiaEjemplo.md)

**started**: 2026-09-02 11:05:00-0400



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "EstudioTcCerebroEjemplo",
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
}

```
