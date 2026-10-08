# Causales SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Causales SIGGES**

## CodeSystem: Causales SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSCausalSIGGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Causales de cierre de caso, excepción de garantía y cierre de garantía de oportunidad (hoja CAUSALES). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Causales de cierre de caso](ValueSet-vs-causal-cierre-caso.md)
* [Causales de excepción de garantía](ValueSet-vs-causal-excepcion-garantia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "causal-sigges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/causal-sigges",
  "version" : "0.4.0",
  "name" : "CSCausalSIGGES",
  "title" : "Causales SIGGES",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Causales de cierre de caso, excepción de garantía y cierre de garantía de oportunidad (hoja CAUSALES).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 64,
  "property" : [{
    "code" : "tipo",
    "description" : "cierre-caso | excepcion-garantia | cierre-go",
    "type" : "string"
  },
  {
    "code" : "status",
    "uri" : "http://hl7.org/fhir/concept-properties#status",
    "description" : "Estado del concepto",
    "type" : "code"
  },
  {
    "code" : "effectiveDate",
    "uri" : "http://hl7.org/fhir/concept-properties#effectiveDate",
    "description" : "Inicio de vigencia",
    "type" : "dateTime"
  },
  {
    "code" : "retirementDate",
    "uri" : "http://hl7.org/fhir/concept-properties#retirementDate",
    "description" : "Fin de vigencia",
    "type" : "dateTime"
  }],
  "concept" : [{
    "code" : "21",
    "display" : "Alta Médica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "16",
    "display" : "Alta (Preventiva, Educativa, Integral)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "22",
    "display" : "Cierre Automático de Casos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "12",
    "display" : "Criterios de Inclusión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "11",
    "display" : "Derivación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "8",
    "display" : "Descarte",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "27",
    "display" : "Indicación Médica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "18",
    "display" : "Nueva Descompensación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "17",
    "display" : "Nuevo Infarto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "19",
    "display" : "Paciente No asiste y No es ubicable",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "9",
    "display" : "Parto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "25",
    "display" : "Por Otra Causa",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "13",
    "display" : "Rechazo al Tratamiento - Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "15",
    "display" : "Rechazo de la Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "20",
    "display" : "Término de Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "108",
    "display" : "Decisión del Profesional Tratante - Indicación Médica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "4",
    "display" : "Cambio de Previsión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "107",
    "display" : "Causa Expresada por el Paciente",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "316",
    "display" : "Cerrada por Cierre Automático de Caso",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2015-01-01T00:00:00-03:00"
    }]
  },
  {
    "code" : "26",
    "display" : "Cierre de Caso por Otra Causa",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "323",
    "display" : "Contacto No Corresponde",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2017-09-08T00:00:00-03:00"
    }]
  },
  {
    "code" : "102",
    "display" : "Criterios de Inclusión/Exclusión (según protocolos)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "7",
    "display" : "Criterios de Inclusión/Exclusión (según protocolos)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "322",
    "display" : "Cumple con Criterios de Exclusión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2017-09-08T00:00:00-03:00"
    }]
  },
  {
    "code" : "317",
    "display" : "EVENTOS AISLADOS",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2015-01-01T00:00:00-03:00"
    }]
  },
  {
    "code" : "109",
    "display" : "Excepción de Garantía por Otra Causa",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "1",
    "display" : "Fallecimiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "24",
    "display" : "Inasistencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "2",
    "display" : "Inasistencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "328",
    "display" : "Indicación Médica Definitiva",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2018-05-11T00:00:00-03:00"
    }]
  },
  {
    "code" : "326",
    "display" : "No Cumple Criterios de Inclusión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2017-09-08T00:00:00-03:00"
    }]
  },
  {
    "code" : "35",
    "display" : "Por no pertinencia de la especialidad",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "34",
    "display" : "Por no pertinencia del establecimiento de salud",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "329",
    "display" : "Rechazo al Prestador Asignado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2018-05-11T00:00:00-03:00"
    }]
  },
  {
    "code" : "3",
    "display" : "Rechazo del Prestador Designado o Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "14",
    "display" : "Rechazo del Prestador Designado o Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "330",
    "display" : "Rechazo del tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2018-05-11T00:00:00-03:00"
    }]
  },
  {
    "code" : "6",
    "display" : "Término de Garantía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "101",
    "display" : "Término del Tratamiento Garantizado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "5",
    "display" : "Término del Tratamiento Garantizado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-caso"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "206",
    "display" : "Excepción de Garantía por Otra Causa",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "207",
    "display" : "No cumple Criterios de Inclusión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "314",
    "display" : "Bono GES",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "205",
    "display" : "Causa Expresada por el Paciente",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "321",
    "display" : "Contacto No Corresponde",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2016-01-01T00:00:00-03:00"
    }]
  },
  {
    "code" : "208",
    "display" : "Evento de Excepción Criterio de Excepción por Indicación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "318",
    "display" : "Exclusión de la Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2015-01-01T00:00:00-03:00"
    }]
  },
  {
    "code" : "202",
    "display" : "Inasistencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "313",
    "display" : "No gestionable por SS",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "315",
    "display" : "Por Cierre de Caso",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "201",
    "display" : "Postergación de la Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "209",
    "display" : "Postergación de la Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2020-04-23T18:28:16-03:00"
    }]
  },
  {
    "code" : "200",
    "display" : "Postergación de la Prestación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2020-04-23T18:28:16-03:00"
    }]
  },
  {
    "code" : "203",
    "display" : "Rechazo del Prestador Designado o Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2020-04-23T18:28:16-03:00"
    }]
  },
  {
    "code" : "204",
    "display" : "Rechazo del Prestador Designado o Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "99",
    "display" : "Término de Vigencia del Decreto nº 170",
    "property" : [{
      "code" : "tipo",
      "valueString" : "excepcion-garantia"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "327",
    "display" : "Contacto No Corresponde",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    }]
  },
  {
    "code" : "337",
    "display" : "Contacto no Corresponde",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2019-11-05T00:00:00-03:00"
    }]
  },
  {
    "code" : "335",
    "display" : "Cumple con criterios de exclusión",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2019-11-05T00:00:00-03:00"
    }]
  },
  {
    "code" : "336",
    "display" : "Inasistencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2019-11-05T00:00:00-03:00"
    }]
  },
  {
    "code" : "319",
    "display" : "Indicación Médica Definitiva",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2015-12-01T00:00:00-03:00"
    }]
  },
  {
    "code" : "324",
    "display" : "Rechazo del Prestador Designado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2017-09-08T00:00:00-03:00"
    }]
  },
  {
    "code" : "320",
    "display" : "Rechazo del Prestador Designado o Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "retired"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2015-12-01T00:00:00-03:00"
    },
    {
      "code" : "retirementDate",
      "valueDateTime" : "2017-10-11T17:40:10-03:00"
    }]
  },
  {
    "code" : "325",
    "display" : "Rechazo del Tratamiento",
    "property" : [{
      "code" : "tipo",
      "valueString" : "cierre-go"
    },
    {
      "code" : "status",
      "valueCode" : "active"
    },
    {
      "code" : "effectiveDate",
      "valueDateTime" : "2017-09-08T00:00:00-03:00"
    }]
  }]
}

```
