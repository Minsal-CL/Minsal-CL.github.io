# Médica de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Médica de urgencia**

## Example Practitioner: Médica de urgencia

Profile: [Prestador Profesional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorProfesional.html)

**identifier**: RUN/22222222-2 (use: official, )

**active**: true

**name**: Ana Pérez 

**gender**: Female

**birthDate**: 1985-06-20

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | Médico cirujano |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ProfesionalUrgenciaEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
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
    "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
    "value" : "22222222-2"
  }],
  "active" : true,
  "name" : [{
    "family" : "Pérez",
    "given" : ["Ana"]
  }],
  "gender" : "female",
  "birthDate" : "1985-06-20",
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
      "text" : "Médico cirujano"
    }
  }]
}

```
