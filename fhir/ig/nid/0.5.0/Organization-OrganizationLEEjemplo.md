# Hospital de Ejemplo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Hospital de Ejemplo**

## Example Organization: Hospital de Ejemplo

Perfil: [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)

Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles) (Establecimiento asistencial, Hospitales de tercer nivel) (https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento#CodigoDEIS#120101)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | * Establecimiento asistencial
* Hospitales de tercer nivel
 |
| Alias: | Hospital de Los Ángeles |
| Contact Detail | * ph: (+56) 432336000
* Ricardo Vicuña 147 Los Ángeles 4451055 Chile 
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationLEEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento",
    "value" : "120101"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs",
      "code" : "establecimiento-asistencial",
      "display" : "Establecimiento asistencial"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-especifico-prestador-cs",
      "code" : "3",
      "display" : "Hospitales de tercer nivel"
    }]
  }],
  "name" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
  "alias" : ["Hospital de Los Ángeles"],
  "telecom" : [{
    "system" : "phone",
    "value" : "(+56) 432336000"
  }],
  "address" : [{
    "line" : ["Ricardo Vicuña 147"],
    "city" : "Los Ángeles",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "08301",
            "display" : "Los Ángeles"
          }]
        }
      }]
    },
    "postalCode" : "4451055",
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
      }]
    }
  }]
}

```
