# Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR**

## ConceptMap: Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ConceptMap/MPIMaritalStatusMap | *Version*:0.4.8 |
| Draft as of 2024-08-27 | *Computable Name*:MPI_ConceptMap_MaritalStatusMap |

 
Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR. 

Mapping from [Estado Civil](ValueSet-VSEstadoCivil.md) to [MaritalStatus](http://hl7.org/fhir/R4/valueset-marital-status.html)

**Group 1**Mapping from [Estado Civil](CodeSystem-CSEstadoCivil.md) to [MaritalStatusversion: 3.0.0)](http://terminology.hl7.org/7.0.0/CodeSystem-v3-MaritalStatus.html)

* **Source Code**: 01 (Soltero(a))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: S (Never Married)
* **Source Code**: 02 (Casado(a))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: M (Married)
* **Source Code**: 03 (Viudo(a))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: W (Widowed)
* **Source Code**: 04 (Divorciado(a))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: D (Divorced)
* **Source Code**: 05 (Separado(a) judicialmente)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: A (Annulled)
* **Source Code**: 06 (Conviviente civil)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: T (Domestic partner)

-------

**Group 2**Mapping from [Estado Civil](CodeSystem-CSEstadoCivil.md) to [NullFlavorversion: 3.0.0)](http://terminology.hl7.org/7.0.0/CodeSystem-v3-NullFlavor.html)

* **Source Code**: 99 (Desconocido)
  * **Relationship**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: UNK (Unknown)



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "MPIMaritalStatusMap",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ConceptMap/MPIMaritalStatusMap",
  "version" : "0.4.8",
  "name" : "MPI_ConceptMap_MaritalStatusMap",
  "title" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR",
  "status" : "draft",
  "experimental" : true,
  "date" : "2024-08-27",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Mapeo de estados civiles entre el ValueSet DEIS y el ValueSet MaritalStatus de FHIR, necesario para interoperar con otros sistemas que utilizan el estándar FHIR.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "sourceCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSEstadoCivil",
  "targetCanonical" : "http://hl7.org/fhir/ValueSet/marital-status",
  "group" : [
    {
      "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil",
      "target" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "targetVersion" : "3.0.0",
      "element" : [
        {
          "code" : "01",
          "display" : "Soltero(a)",
          "target" : [
            {
              "code" : "S",
              "display" : "Never Married",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "02",
          "display" : "Casado(a)",
          "target" : [
            {
              "code" : "M",
              "display" : "Married",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "03",
          "display" : "Viudo(a)",
          "target" : [
            {
              "code" : "W",
              "display" : "Widowed",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "04",
          "display" : "Divorciado(a)",
          "target" : [
            {
              "code" : "D",
              "display" : "Divorced",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "05",
          "display" : "Separado(a) judicialmente",
          "target" : [
            {
              "code" : "A",
              "display" : "Annulled",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "06",
          "display" : "Conviviente civil",
          "target" : [
            {
              "code" : "T",
              "display" : "Domestic partner",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil",
      "target" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
      "targetVersion" : "3.0.0",
      "element" : [
        {
          "code" : "99",
          "display" : "Desconocido",
          "target" : [
            {
              "code" : "UNK",
              "display" : "Unknown",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    }
  ]
}

```
