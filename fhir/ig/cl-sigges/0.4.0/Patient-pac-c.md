# Paciente Luis Alberto Muñoz Díaz - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Luis Alberto Muñoz Díaz**

## Example Patient: Paciente Luis Alberto Muñoz Díaz

Perfil: [Paciente GES](StructureDefinition-paciente-ges.md)

Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Contact Detail | * [+56 9 6655 4433](tel:+56966554433)
* Calle El Roble 455 La Pintana Metropolitana de Santiago (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "pac-c",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
  },
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
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run",
    "value" : "12345670-K"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Muñoz",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Díaz"
      }]
    },
    "given" : ["Luis", "Alberto"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56 9 6655 4433",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1975-11-20",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "line" : ["Calle El Roble 455"],
    "city" : "La Pintana",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "13112",
            "display" : "La Pintana"
          }]
        }
      }]
    },
    "state" : "Metropolitana de Santiago",
    "_state" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
            "code" : "13",
            "display" : "Metropolitana de Santiago"
          }]
        }
      }]
    }
  }]
}

```
