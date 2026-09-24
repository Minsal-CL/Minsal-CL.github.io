# Paciente de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de urgencia**

## Example Patient: Paciente de urgencia

Profile: [MINSAL Paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPaciente.html)

María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Contact Detail | [+56912345678](tel:+56912345678) | | |
| [Sexo Biologico del paciente](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-SexoBiologico.html) | Female | | |
| [País de origen del paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-PaisOrigenMPI.html) | Chile | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-CodigoPaises.html) | Chile | | |
| [Identidad De Género](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-IdentidadDeGenero.html) | Femenina | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteUrgenciaEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
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
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "female",
        "display" : "Female"
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
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
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
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
    "value" : "11111111-1"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Carmona",
    "given" : ["María"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56912345678",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1975-04-12",
  "deceasedBoolean" : false
}

```
