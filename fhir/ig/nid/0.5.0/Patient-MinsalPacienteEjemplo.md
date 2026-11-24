# Paciente Ejemplo MPI - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Paciente Ejemplo MPI**

## Example Patient: Paciente Ejemplo MPI

Perfil: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Marital Status: | Soltero/a | | |
| Other Id: | Número de Pasaporte/ACL123456789876 (use: secondary) | | |
| Contact Detail | * [+56912387678](tel:+56912387678)
* Avenida Las Torres 3456, Departamento 702 Macul Metropolitana de Santiago Chile (home)
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
  "id" : "MinsalPacienteEjemplo",
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
  },
  {
    "use" : "secondary",
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
        "code" : "3",
        "display" : "Número de Pasaporte"
      }]
    },
    "system" : "urn:oid:2.16.840.1.113883.2.22.0.2.102100.50.10",
    "value" : "ACL123456789876"
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
    "given" : ["Javiera"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56912387678",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1995-12-12",
  "deceasedBoolean" : false,
  "address" : [{
    "extension" : [{
      "extension" : [{
        "url" : "latitude",
        "valueDecimal" : -33.4265
      },
      {
        "url" : "longitude",
        "valueDecimal" : -70.56652
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/geolocation"
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle",
      "valueBoolean" : false
    }],
    "use" : "home",
    "line" : ["Avenida Las Torres 3456, Departamento 702"],
    "city" : "Macul",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "13118",
            "display" : "Macul"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-comunas-cs",
            "code" : "13118",
            "display" : "Macul"
          }]
        }
      }]
    },
    "district" : "Santiago",
    "_district" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
            "code" : "131",
            "display" : "Santiago"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-provincias-cs",
            "code" : "131",
            "display" : "Santiago"
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
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-regiones-cs",
            "code" : "13",
            "display" : "Metropolitana de Santiago"
          }]
        }
      }]
    },
    "country" : "Chile",
    "_country" : {
      "extension" : [{
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
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }]
    }
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS",
      "code" : "1",
      "display" : "Soltero/a"
    }]
  }
}

```
