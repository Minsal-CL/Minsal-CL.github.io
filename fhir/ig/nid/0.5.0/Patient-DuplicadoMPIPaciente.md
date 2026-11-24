# Paciente Ejemplo MPI Duplicado - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Paciente Ejemplo MPI Duplicado**

## Example Patient: Paciente Ejemplo MPI Duplicado

Perfil: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

Javiera Carolina Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Marital Status: | Soltero/a | | |
| Contact Detail | [javiera@example.com](mailto:javiera@example.com) | | |
| Emergency Contact: | * Pedro Castilla (Official)
 | | |
| [Sexo Biologico del paciente](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-SexoBiologico.html) | Femenina | | |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | Uruguay | | |
| Pueblos Originarios: | * pertenece: false
 | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html) | Chile | | |
| [Sexo Registral](StructureDefinition-SexoRegistral.md) | Femenino | | |
| [Religión](StructureDefinition-Religion.md) | Ninguna | | |
| Individual Gender Identity: | * value: Femenina
 | | |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | false | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DuplicadoMPIPaciente",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SexoRegistral",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoRegistral-CS",
        "code" : "F",
        "display" : "Femenino"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-identidadgenero-cs",
          "code" : "2",
          "display" : "Femenina"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
  },
  {
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-SexoBiologico-CS",
        "code" : "2",
        "display" : "Mujer"
      }],
      "text" : "Femenina"
    }
  },
  {
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
        "code" : "152",
        "display" : "Chile"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
        "code" : "858",
        "display" : "Uruguay"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Religion",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-religion-cs",
        "code" : "9",
        "display" : "Ninguna"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosAfrodescendiente",
    "valueBoolean" : false
  },
  {
    "extension" : [{
      "url" : "pertenece",
      "valueBoolean" : false
    }],
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-identificador-cs",
        "code" : "1",
        "display" : "RUN"
      }]
    },
    "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
    "value" : "16182522-0"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Castilla",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Muñoz"
      }]
    },
    "given" : ["Javiera", "Carolina"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "javiera@example.com",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1995-12-12",
  "deceasedBoolean" : false,
  "maritalStatus" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS",
      "code" : "1",
      "display" : "Soltero/a"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "C",
        "display" : "Emergency Contact"
      }]
    }],
    "name" : {
      "use" : "official",
      "family" : "Castilla",
      "given" : ["Pedro"]
    }
  }]
}

```
