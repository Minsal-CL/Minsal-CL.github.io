# Profesional solicitante de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional solicitante de ejemplo**

## Example Practitioner: Profesional solicitante de ejemplo

Profile: [Profesional de Laboratorio MINSAL](StructureDefinition-MinsalPractitionerLaboratorio.md)

**identifier**: RUN/9876543-3 (use: official, )

**name**: María González 

**birthDate**: 1978-03-15

### Qualifications

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Period** | **Issuer** |
| * | cert | MÉDICO CIRUJANO | 2003-11-01 --> (ongoing) | Universidad de Chile |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ProfesionalSolicitanteEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio"]
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
    "family" : "González",
    "given" : ["María"]
  }],
  "birthDate" : "1978-03-15",
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
    },
    "period" : {
      "start" : "2003-11-01"
    },
    "issuer" : {
      "display" : "Universidad de Chile"
    }
  }]
}

```
