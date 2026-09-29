# Profesional solicitante de ejemplo - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional solicitante de ejemplo**

## Example Practitioner: Profesional solicitante de ejemplo

Profile: [Profesional de Imagenología MINSAL](StructureDefinition-MinsalPractitionerImagenologia.md)

**identifier**: RUN/9876543-3 (use: official, )

**name**: Juan Salinas 

**birthDate**: 1970-06-20

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | MÉDICO CIRUJANO |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ProfesionalSolicitanteImagenEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "system" : "https://api.cl/system/run",
    "value" : "9876543-3"
  }],
  "name" : [{
    "family" : "Salinas",
    "given" : ["Juan"]
  }],
  "birthDate" : "1970-06-20",
  "qualification" : [{
    "identifier" : [{
      "value" : "cert"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
        "code" : "1",
        "display" : "MÉDICO CIRUJANO"
      }],
      "text" : "MÉDICO CIRUJANO"
    }
  }]
}

```
