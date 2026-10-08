# Derivado para: TEI → SIGGES (SIC) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Derivado para: TEI → SIGGES (SIC)**

## ConceptMap: Derivado para: TEI → SIGGES (SIC) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-derivado-para | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:TEIASIGGESDerivadoPara |

 
CSDerivadoParaCodigo de TEI a CSDerivadaParaGES de SIGGES en contexto SIC. Los códigos 2, 3 y 4 significan cosas distintas en cada sistema. SIGGES 11 (Rehabilitación) no tiene origen en TEI 0.2.3. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "tei-a-sigges-derivado-para",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-derivado-para",
  "version" : "0.4.0",
  "name" : "TEIASIGGESDerivadoPara",
  "title" : "Derivado para: TEI → SIGGES (SIC)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "CSDerivadoParaCodigo de TEI a CSDerivadaParaGES de SIGGES en contexto SIC. Los códigos 2, 3 y 4 significan cosas distintas en cada sistema. SIGGES 11 (Rehabilitación) no tiene origen en TEI 0.2.3.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo",
    "target" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
    "element" : [{
      "code" : "1",
      "display" : "Confirmación",
      "target" : [{
        "code" : "1",
        "display" : "Confirmación Diagnóstica",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "Control Especialista",
      "target" : [{
        "code" : "4",
        "display" : "Control de Especialidad",
        "equivalence" : "equivalent",
        "comment" : "En TEI 2 = Control Especialista; en SIGGES 2 = Realizar Tratamiento. El mapeo directo código a código es un error silencioso."
      }]
    },
    {
      "code" : "3",
      "display" : "Realiza Tratamiento",
      "target" : [{
        "code" : "2",
        "display" : "Realizar Tratamiento",
        "equivalence" : "equivalent",
        "comment" : "En TEI 3 = Realiza Tratamiento; en SIGGES 3 = A Seguimiento."
      }]
    },
    {
      "code" : "4",
      "display" : "Seguimiento",
      "target" : [{
        "code" : "3",
        "display" : "A Seguimiento",
        "equivalence" : "equivalent",
        "comment" : "En TEI 4 = Seguimiento; en SIGGES 4 = Control de Especialidad."
      }]
    },
    {
      "code" : "5",
      "display" : "Otro",
      "target" : [{
        "code" : "5",
        "display" : "Otro",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
