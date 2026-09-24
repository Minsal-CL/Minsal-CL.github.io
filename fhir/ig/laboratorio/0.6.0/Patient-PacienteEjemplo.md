# Paciente de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de ejemplo**

## Example Patient: Paciente de ejemplo

Profile: [Paciente de Laboratorio](StructureDefinition-PacienteLaboratorio.md)

Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Contact Detail | [+56900000000](tel:+56900000000) | | |
| [País de origen del paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PaisOrigenMPI.html) | Chile | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html) | Chile | | |
| [Identidad De Género](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html) | Femenina | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
  },
  "extension" : [{
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
        "code" : "2",
        "display" : "Femenina"
      }]
    }
  },
  {
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "152",
        "display" : "Chile"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "152",
        "display" : "Chile"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:3166",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
        "code" : "1",
        "display" : "RUN"
      }]
    },
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
    "value" : "12345678-5"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Pérez",
    "given" : ["Ana"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56900000000",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1990-01-02",
  "deceasedBoolean" : false
}

```
