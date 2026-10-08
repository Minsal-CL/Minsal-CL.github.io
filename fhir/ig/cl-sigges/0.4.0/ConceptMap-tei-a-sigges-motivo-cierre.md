# Motivo de cierre de interconsulta TEI → causal SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo de cierre de interconsulta TEI → causal SIGGES**

## ConceptMap: Motivo de cierre de interconsulta TEI → causal SIGGES (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-motivo-cierre | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:TEIASIGGESMotivoCierre |

 
CSMotivoCierreInterconsulta de TEI a CSCausalSIGGES. Cerrar una interconsulta no es cerrar el caso GES: sólo los motivos que también cierran el caso tienen equivalente. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "tei-a-sigges-motivo-cierre",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ConceptMap/tei-a-sigges-motivo-cierre",
  "version" : "0.4.0",
  "name" : "TEIASIGGESMotivoCierre",
  "title" : "Motivo de cierre de interconsulta TEI → causal SIGGES",
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
  "description" : "CSMotivoCierreInterconsulta de TEI a CSCausalSIGGES. Cerrar una interconsulta no es cerrar el caso GES: sólo los motivos que también cierran el caso tienen equivalente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "group" : [{
    "source" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta",
    "target" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges",
    "element" : [{
      "code" : "1",
      "display" : "GES (0)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "«GES (0)»: TEI cierra la interconsulta porque pasa al flujo GES. No cierra el caso GES; al contrario, lo abre. Ver P-23."
      }]
    },
    {
      "code" : "2",
      "display" : "Atención Realizada (1)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "La atención realizada cumple una garantía (PO), no cierra el caso."
      }]
    },
    {
      "code" : "3",
      "display" : "Corresponde a la realización del examen procedimiento ejecutado (2)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "4",
      "display" : "Atención Otorgada en el Extra sistema (4)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "5",
      "display" : "No beneficiario (5)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "6",
      "display" : "Renuncia o rechazo voluntario (6)",
      "target" : [{
        "code" : "15",
        "display" : "Rechazo de la Prestación",
        "equivalence" : "inexact",
        "comment" : "Renuncia o rechazo voluntario ↔ «Rechazo de la Prestación». Confirmar con FONASA si corresponde a cierre de caso o a EXGO."
      }]
    },
    {
      "code" : "7",
      "display" : "Recuperación espontánea (7)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "8",
      "display" : "Inasistencia (2 NSP) (8)",
      "target" : [{
        "code" : "202",
        "display" : "Inasistencia",
        "equivalence" : "inexact",
        "comment" : "En SIGGES la inasistencia se registra como excepción de garantía (EXGO, causal 202), no como cierre de caso."
      }]
    },
    {
      "code" : "9",
      "display" : "Fallecimiento (9)",
      "target" : [{
        "code" : "1",
        "display" : "Fallecimiento",
        "equivalence" : "equivalent",
        "comment" : "Fallecimiento cierra el caso (CC causal 1)."
      }]
    },
    {
      "code" : "10",
      "display" : "Solicitud de indicación duplicada (10)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "11",
      "display" : "Contacto no corresponde (11)",
      "target" : [{
        "code" : "323",
        "display" : "Contacto No Corresponde",
        "equivalence" : "equivalent",
        "comment" : "Contacto no corresponde (CC causal 323)."
      }]
    },
    {
      "code" : "12",
      "display" : "Traslado coordinado (12)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "13",
      "display" : "No pertinencia (13)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "14",
      "display" : "Error de digitación(15)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "15",
      "display" : "Atención por resolutividad (16)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "16",
      "display" : "Atención por telemedicina (17)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "17",
      "display" : "Modificación de condicion clínica del paciente (18)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    },
    {
      "code" : "18",
      "display" : "Atención hospital digital (19)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Motivo administrativo de la interconsulta; no cierra el caso GES."
      }]
    }]
  }]
}

```
