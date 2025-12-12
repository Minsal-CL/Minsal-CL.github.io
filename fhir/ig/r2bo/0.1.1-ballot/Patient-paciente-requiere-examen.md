# Paciente Que Requiere un Examen - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Que Requiere un Examen**

## Example Patient: Paciente Que Requiere un Examen

Profile: [MINSAL Paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPaciente.html)

Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Marital Status: | Soltero(a) | | |
| Other Id: | RUN/16182522-0 (use: official, ) | | |
| Contact Detail | * [+56912387678](tel:+56912387678)
* Avenida Las Torres 3456, Departamento 702 null null null (home)
 | | |
| [Sexo Biologico del paciente](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-SexoBiologico.html) | Femenina | | |
| [País de origen del paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PaisOrigenMPI.html) | Uruguay | | |
| Pueblos Originarios: | * pertenece: false
 | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html) | Chile | | |
| [Religión](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-Religion.html) | Ninguna, ateo, agnóstico | | |
| [Identidad De Género](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html) | Femenina | | |
| [Pueblos Afrodescendiente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PueblosAfrodescendiente.html) | false | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-requiere-examen",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
            "code" : "2",
            "display" : "Femenina"
          }
        ]
      }
    },
    {
      "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/administrative-gender",
            "code" : "female",
            "display" : "Female"
          }
        ],
        "text" : "Femenina"
      }
    },
    {
      "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:3166",
            "code" : "152",
            "display" : "Chile"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:3166",
            "code" : "858",
            "display" : "Uruguay"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Religion",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSReligion",
            "code" : "9",
            "display" : "Ninguna, ateo, agnóstico"
          }
        ]
      }
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosAfrodescendiente",
      "valueBoolean" : false
    },
    {
      "extension" : [
        {
          "url" : "pertenece",
          "valueBoolean" : false
        }
      ],
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "urn:iso:std:iso:3166",
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          }
        ],
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
            "code" : "1",
            "display" : "RUN"
          }
        ]
      },
      "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
      "value" : "16182522-0"
    },
    {
      "use" : "official",
      "type" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "urn:iso:std:iso:3166",
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          }
        ],
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
            "code" : "5",
            "display" : "PPN"
          }
        ]
      },
      "system" : "urn:oid:2.16.840.1.113883.2.22.0.2.102100.50.10",
      "value" : "ACL123456789876"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Castilla",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Muñoz"
          }
        ]
      },
      "given" : ["Javiera"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+56912387678",
      "use" : "mobile"
    }
  ],
  "gender" : "female",
  "birthDate" : "1995-12-12",
  "deceasedBoolean" : false,
  "address" : [
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "latitude",
              "valueDecimal" : -33.4265
            },
            {
              "url" : "longitude",
              "valueDecimal" : -70.56652
            }
          ],
          "url" : "http://hl7.org/fhir/StructureDefinition/geolocation"
        },
        {
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle",
          "valueBoolean" : false
        }
      ],
      "use" : "home",
      "line" : ["Avenida Las Torres 3456, Departamento 702"],
      "_city" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                  "code" : "13118",
                  "display" : "Macul"
                }
              ]
            }
          }
        ]
      },
      "_district" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
                  "code" : "131",
                  "display" : "Santiago"
                }
              ]
            }
          }
        ]
      },
      "_state" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                  "code" : "13",
                  "display" : "Metropolitana de Santiago"
                }
              ]
            }
          }
        ]
      },
      "_country" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "urn:iso:std:iso:3166",
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          }
        ]
      }
    }
  ],
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil",
        "code" : "01",
        "display" : "Soltero(a)"
      }
    ]
  }
}

```
