# Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR**

## ConceptMap: Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ConceptMap/MPIMaritalStatusMap | *Version*:0.5.0 |
| Draft as of 2024-08-27 | *Computable Name*:MPI_ConceptMap_MaritalStatusMap |

 
Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "MPIMaritalStatusMap",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ConceptMap/MPIMaritalStatusMap",
  "version" : "0.5.0",
  "name" : "MPI_ConceptMap_MaritalStatusMap",
  "title" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR",
  "status" : "draft",
  "experimental" : true,
  "date" : "2024-08-27",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "sourceCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-EstadoCivil-VS",
  "targetCanonical" : "http://hl7.org/fhir/ValueSet/marital-status",
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS",
    "target" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
    "targetVersion" : "3.0.0",
    "element" : [{
      "code" : "1",
      "display" : "Soltero/a",
      "target" : [{
        "code" : "S",
        "display" : "Never Married",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "Casado/a",
      "target" : [{
        "code" : "M",
        "display" : "Married",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "Viudo/a",
      "target" : [{
        "code" : "W",
        "display" : "Widowed",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "Divorciado/a",
      "target" : [{
        "code" : "D",
        "display" : "Divorced",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "5",
      "display" : "Separado/a Judicialmente",
      "target" : [{
        "code" : "A",
        "display" : "Annulled",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "6",
      "display" : "Conviviente (con acuerdo de unión civil)",
      "target" : [{
        "code" : "T",
        "display" : "Domestic partner",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EstadoCivil-CS",
    "target" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
    "targetVersion" : "3.0.0",
    "element" : [{
      "code" : "99",
      "display" : "Desconocido",
      "target" : [{
        "code" : "UNK",
        "display" : "Unknown",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
