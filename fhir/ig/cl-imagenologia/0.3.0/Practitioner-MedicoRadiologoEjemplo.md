# Médico radiólogo de ejemplo - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Médico radiólogo de ejemplo**

## Example Practitioner: Médico radiólogo de ejemplo

Profile: [Profesional de Imagenología MINSAL](StructureDefinition-MinsalPractitionerImagenologia.md)

**identifier**: RUN/11111111-1 (use: official, )

**name**: Alejandro Riquelme 

**birthDate**: 1976-01-10

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | MÉDICO CIRUJANO |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "MedicoRadiologoEjemplo",
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
    "value" : "11111111-1"
  }],
  "name" : [{
    "family" : "Riquelme",
    "given" : ["Alejandro"]
  }],
  "birthDate" : "1976-01-10",
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
