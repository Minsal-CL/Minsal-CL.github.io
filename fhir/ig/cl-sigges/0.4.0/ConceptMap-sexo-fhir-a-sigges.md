# Sexo FHIR → SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexo FHIR → SIGGES**

## ConceptMap: Sexo FHIR → SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/sexo-fhir-a-sigges | *Version*:0.4.0 |
| Draft as of 2026-09-25 | *Computable Name*:CMSexoAdministrativoASIGGES |

 
Traducción de Patient.gender (administrative-gender) al código SIGGES del campo sexoPaciente. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "sexo-fhir-a-sigges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/sexo-fhir-a-sigges",
  "version" : "0.4.0",
  "name" : "CMSexoAdministrativoASIGGES",
  "title" : "Sexo FHIR → SIGGES",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-25T16:17:15-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Traducción de Patient.gender (administrative-gender) al código SIGGES del campo sexoPaciente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "http://hl7.org/fhir/administrative-gender",
    "target" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/sexo-sigges",
    "element" : [{
      "code" : "female",
      "target" : [{
        "code" : "1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "male",
      "target" : [{
        "code" : "2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "target" : [{
        "code" : "3",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "unknown",
      "target" : [{
        "code" : "3",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
