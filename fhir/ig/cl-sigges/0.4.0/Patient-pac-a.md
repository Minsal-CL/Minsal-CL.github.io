# Paciente Juan Carlos Pérez Soto - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Juan Carlos Pérez Soto**

## Example Patient: Paciente Juan Carlos Pérez Soto

Perfil: [Paciente GES](StructureDefinition-paciente-ges.md)

Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Contact Detail | * [+56 9 8123 4567](tel:+56981234567)
* Av. Vicuña Mackenna 7110, depto 402 La Florida Metropolitana de Santiago (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "pac-a",
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
    "value" : "9876543-3"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Pérez",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Soto"
      }]
    },
    "given" : ["Juan", "Carlos"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56 9 8123 4567",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1961-03-14",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "line" : ["Av. Vicuña Mackenna 7110, depto 402"],
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
