# Paciente NN - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Paciente NN**

## Example Patient: Paciente NN

Profile: [MINSAL Paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPaciente.html)

Anonymous Patient Unknown, DoB: ( Número de Ficha Clínica Sistema Local: NN-2026-0042 (use: temp, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Contact Detail | ph: -unknown- | | |
| [País de origen del paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-PaisOrigenMPI.html) | Valor provisorio NN: nacionalidad desconocida | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-CodigoPaises.html) | Valor provisorio NN: nacionalidad desconocida | | |
| [Identidad De Género](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-IdentidadDeGenero.html) | No Revelado | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteNNEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
  },
  "extension" : [{
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
        "code" : "7",
        "display" : "No Revelado"
      }]
    }
  },
  {
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
        "code" : "152",
        "display" : "Chile"
      }],
      "text" : "Valor provisorio NN: nacionalidad desconocida"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
        "code" : "152",
        "display" : "Chile"
      }],
      "text" : "Valor provisorio NN: nacionalidad desconocida"
    }
  }],
  "identifier" : [{
    "use" : "temp",
    "type" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "12",
        "display" : "Número de Ficha Clínica Sistema Local"
      }]
    },
    "system" : "https://hospital-ejemplo.cl/fhir/sid/fichas",
    "value" : "NN-2026-0042"
  }],
  "active" : true,
  "telecom" : [{
    "system" : "phone",
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }]
    }
  }],
  "gender" : "unknown",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  },
  "deceasedBoolean" : false
}

```
