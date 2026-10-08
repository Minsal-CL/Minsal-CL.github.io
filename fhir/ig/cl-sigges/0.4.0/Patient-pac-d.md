# Paciente Rosa Elena Tapia Vidal - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Rosa Elena Tapia Vidal**

## Example Patient: Paciente Rosa Elena Tapia Vidal

Perfil: [Paciente GES](StructureDefinition-paciente-ges.md)

Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Contact Detail | * [+56 2 2345 6789](tel:+56223456789)
* Walker Martínez 2890 La Florida Metropolitana de Santiago (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "pac-d",
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
    "value" : "10987654-2"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Tapia",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Vidal"
      }]
    },
    "given" : ["Rosa", "Elena"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56 2 2345 6789",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1970-01-30",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "line" : ["Walker Martínez 2890"],
    "city" : "La Florida",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "13110",
            "display" : "La Florida"
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
