# Estado del informe radiológico: HL7 v2 a FHIR - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estado del informe radiológico: HL7 v2 a FHIR**

## ConceptMap: Estado del informe radiológico: HL7 v2 a FHIR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ConceptMap/EstadoInformeRadiologicoV2AFhir | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:EstadoInformeRadiologicoV2AFhir |

 
Equivalencias entre los estados del informe enviados por el RIS en OBR-25 / OBX-11 y los valores de DiagnosticReport.status. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "EstadoInformeRadiologicoV2AFhir",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ConceptMap/EstadoInformeRadiologicoV2AFhir",
  "version" : "0.3.0",
  "name" : "EstadoInformeRadiologicoV2AFhir",
  "title" : "Estado del informe radiológico: HL7 v2 a FHIR",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Equivalencias entre los estados del informe enviados por el RIS en OBR-25 / OBX-11 y los valores de DiagnosticReport.status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "targetCanonical" : "http://hl7.org/fhir/ValueSet/diagnostic-report-status",
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/EstadoInformeRadiologicoHl7v2",
    "target" : "http://hl7.org/fhir/diagnostic-report-status",
    "element" : [{
      "code" : "P",
      "display" : "Preliminar",
      "target" : [{
        "code" : "preliminary",
        "display" : "Preliminary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "F",
      "display" : "Final",
      "target" : [{
        "code" : "final",
        "display" : "Final",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "C",
      "display" : "Corrección",
      "target" : [{
        "code" : "corrected",
        "display" : "Corrected",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "A",
      "display" : "Corrección (Addendum)",
      "target" : [{
        "code" : "amended",
        "display" : "Amended",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "D",
      "display" : "Eliminado",
      "target" : [{
        "code" : "entered-in-error",
        "display" : "Entered in Error",
        "equivalence" : "relatedto",
        "comment" : "El RIS elimina el informe; en FHIR el recurso no se borra, se marca como entered-in-error y se conserva para trazabilidad."
      }]
    }]
  }]
}

```
