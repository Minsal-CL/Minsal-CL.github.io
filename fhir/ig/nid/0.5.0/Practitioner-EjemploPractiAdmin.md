# Profesional Administrativo de Ejemplo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Profesional Administrativo de Ejemplo**

## Example Practitioner: Profesional Administrativo de Ejemplo

Perfil: [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)

Caludio Parra (official) (RUN: 90000000-6 (use: official))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Male |
| Date of Birth: | 1980-01-01 | | |
| Contact Detail | null (work) | | |
| Qualification: | Secretario* Identifier: cert
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "EjemploPractiAdmin",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo"]
  },
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
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "value" : "90000000-6",
    "assigner" : {
      "display" : "Republica de Chile"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Parra",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Sandoval"
      }]
    },
    "given" : ["Caludio"]
  }],
  "address" : [{
    "use" : "work",
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
  }],
  "gender" : "male",
  "birthDate" : "1980-01-01",
  "qualification" : [{
    "identifier" : [{
      "value" : "cert"
    }],
    "code" : {
      "text" : "Secretario"
    }
  }]
}

```
