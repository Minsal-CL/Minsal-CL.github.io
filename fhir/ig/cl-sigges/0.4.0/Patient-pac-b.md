# Paciente María Isabel González Rojas - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente María Isabel González Rojas**

## Example Patient: Paciente María Isabel González Rojas

Perfil: [Paciente GES](StructureDefinition-paciente-ges.md)

María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Contact Detail | * [+56 9 7788 1122](tel:+56977881122)
* [maria.gonzalez@correo.cl](mailto:maria.gonzalez@correo.cl)
* Pasaje Los Aromos 1234 Puente Alto Metropolitana de Santiago (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "pac-b",
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
    "value" : "7654321-6"
  }],
  "name" : [{
    "use" : "official",
    "family" : "González",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Rojas"
      }]
    },
    "given" : ["María", "Isabel"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56 9 7788 1122",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "maria.gonzalez@correo.cl",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1958-07-02",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "line" : ["Pasaje Los Aromos 1234"],
    "city" : "Puente Alto",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "13201",
            "display" : "Puente Alto"
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
