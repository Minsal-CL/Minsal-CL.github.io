# Escenario C: estudio registrado, imágenes todavía no disponibles - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escenario C: estudio registrado, imágenes todavía no disponibles**

## Example ImagingStudy: Escenario C: estudio registrado, imágenes todavía no disponibles

Perfil: [Estudio Imagenológico MINSAL](StructureDefinition-EstudioImagenologicoMinsal.md)

**identifier**: Accession ID/20260903000210, [DICOM Unique Id](http://terminology.hl7.org/6.5.0/NamingSystem-dui.html)/urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.3 (use: official)

**status**: Registered

**modality**: [DICOM: MR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MR) (Magnetic Resonance)

**subject**: [María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 12345678-5 (use: official))](Patient-PacienteImagenologiaEjemplo.md)

**procedureCode**: RM CEREBRO



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "EstudioRmRegistradoSinImagenesEjemplo",
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
    "value" : "20260903000210"
  },
  {
    "use" : "official",
    "system" : "urn:dicom:uid",
    "value" : "urn:oid:1.2.840.113619.2.55.3.604688119.868.1600000000.3"
  }],
  "status" : "registered",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "MR",
    "display" : "Magnetic Resonance"
  }],
  "subject" : {
    "reference" : "Patient/PacienteImagenologiaEjemplo"
  },
  "procedureCode" : [{
    "coding" : [{
      "system" : "http://deis.minsal.cl/establecimientos/116105/imagenologia/procedimientos",
      "code" : "RM01",
      "display" : "RM CEREBRO"
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
      "code" : "0405001",
      "display" : "Resonancia magnética cráneo encefálica"
    }],
    "text" : "RM CEREBRO"
  }]
}

```
