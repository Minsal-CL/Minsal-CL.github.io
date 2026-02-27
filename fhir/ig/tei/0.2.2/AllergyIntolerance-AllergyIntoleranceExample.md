# Ejemplo de una Alergía - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de una Alergía**

## Example AllergyIntolerance: Ejemplo de una Alergía

Profile: [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md)

**clinicalStatus**: Activo

**verificationStatus**: Confirmado

**code**: Alergía a castaña de cajú

**patient**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyIntoleranceExample",
  "meta" : {
<<<<<<< HEAD
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }],
    "text" : "Activo"
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }],
    "text" : "Confirmado"
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "227493005"
    }],
=======
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ],
    "text" : "Activo"
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed",
        "display" : "Confirmed"
      }
    ],
    "text" : "Confirmado"
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "227493005"
      }
    ],
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
    "text" : "Alergía a castaña de cajú"
  },
  "patient" : {
    "reference" : "Patient/EjemploPatientLE"
  }
}

```
