# Encuentro de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Encuentro de urgencia**

## Resource Profile: Encuentro de urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:EncuentroUrgencia |

 
Episodio de atención en una unidad de urgencia, desde la admisión hasta el alta o el abandono. Basado en EncounterCL de CL-Core. Es el recurso que la red usa para saber que el paciente estuvo en urgencia, cuándo y cómo terminó. 

**Usages:**

* Derived from this Profile: [Encuentro de urgencia - estado en el abandono](StructureDefinition-encuentro-urgencia-abandono.md), [Encuentro de urgencia - estado en la admisión](StructureDefinition-encuentro-urgencia-admision.md) and [Encuentro de urgencia - estado en el alta](StructureDefinition-encuentro-urgencia-alta.md)
* Refer to this Profile: [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md), [Documento de la atención de urgencia](StructureDefinition-documento-urgencia.md) and [Indicación de medicamento al alta](StructureDefinition-indicacion-medicamento-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-encuentro-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encuentro-urgencia.csv), [Excel](StructureDefinition-encuentro-urgencia.xlsx), [Schematron](StructureDefinition-encuentro-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encuentro-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia",
  "version" : "0.2.0",
  "name" : "EncuentroUrgencia",
  "title" : "Encuentro de urgencia",
  "status" : "draft",
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Episodio de atención en una unidad de urgencia, desde la admisión hasta el alta o el abandono. Basado en EncounterCL de CL-Core. Es el recurso que la red usa para saber que el paciente estuvo en urgencia, cuándo y cómo terminó.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "short" : "Episodio de atención de urgencia",
      "constraint" : [{
        "key" : "urg-enc-1",
        "severity" : "error",
        "human" : "Un episodio finalizado debe informar la fecha y hora de término (period.end).",
        "expression" : "status = 'finished' implies period.end.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia"
      },
      {
        "key" : "urg-enc-2",
        "severity" : "error",
        "human" : "Un episodio finalizado debe informar el destino de egreso o el tipo de abandono.",
        "expression" : "status = 'finished' implies hospitalization.dischargeDisposition.exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/encuentro-urgencia"
      }]
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Datos del CMBD sin elemento FHIR (previsión, leyes, clasificación, pronóstico, pertinencia)"
    },
    {
      "id" : "Encounter.extension:prevision",
      "path" : "Encounter.extension",
      "sliceName" : "prevision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/prevision"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:leyPrevisional",
      "path" : "Encounter.extension",
      "sliceName" : "leyPrevisional",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/ley-previsional"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:clasificacionConsulta",
      "path" : "Encounter.extension",
      "sliceName" : "clasificacionConsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/clasificacion-consulta"]
      }]
    },
    {
      "id" : "Encounter.extension:pronosticoMedicoLegal",
      "path" : "Encounter.extension",
      "sliceName" : "pronosticoMedicoLegal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pronostico-medico-legal"]
      }]
    },
    {
      "id" : "Encounter.extension:pertinencia",
      "path" : "Encounter.extension",
      "sliceName" : "pertinencia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pertinencia"]
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "ID DAU: identificador único del episodio en el establecimiento",
      "definition" : "Identificador único del episodio de urgencia (ID DAU del CMBD). Debe ser el mismo en los mensajes de admisión, alta y abandono: es la llave con que la red correlaciona los eventos.",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier.system",
      "path" : "Encounter.identifier.system",
      "short" : "Sistema del ID DAU; identifica al establecimiento",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier.value",
      "path" : "Encounter.identifier.value",
      "short" : "ID DAU",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "in-progress (admitido) | finished (alta o abandono) | entered-in-error",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-estado-encuentro-urgencia"
      }
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Clase de encuentro: EMER (urgencia)",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EMER"
      }
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "short" : "Unidad de atención: pediatría, adulto, gineco-obstétrica, odontológica...",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-unidad-atencion"
      }
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Paciente atendido",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }]
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Profesional que da el alta o atiende"
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "short" : "Profesional",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Inicio (admisión) y término (alta o abandono) del episodio",
      "min" : 1
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "Fecha y hora de admisión",
      "min" : 1
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "Fecha y hora de alta o de detección del abandono"
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "short" : "Motivo de consulta (texto libre, hasta 200 caracteres)",
      "max" : "1"
    },
    {
      "id" : "Encounter.reasonCode.text",
      "path" : "Encounter.reasonCode.text",
      "short" : "Motivo de consulta en texto libre",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "short" : "Hipótesis diagnóstica (AD) y diagnóstico de egreso (DD)"
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "short" : "Referencia a un Diagnóstico de urgencia incluido en el mismo mensaje"
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
      "short" : "AD (hipótesis de ingreso) | DD (diagnóstico de egreso)",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-uso-diagnostico"
      }
    },
    {
      "id" : "Encounter.diagnosis.rank",
      "path" : "Encounter.diagnosis.rank",
      "short" : "Orden del diagnóstico (1 = principal)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "short" : "Datos de llegada y egreso de la urgencia",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.extension",
      "path" : "Encounter.hospitalization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Medio de llegada"
    },
    {
      "id" : "Encounter.hospitalization.extension:medioLlegada",
      "path" : "Encounter.hospitalization.extension",
      "sliceName" : "medioLlegada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/medio-llegada"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "short" : "Procedencia del paciente",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-procedencia"
      }
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "short" : "Establecimiento de destino (traslado o derivación)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "Destino de alta o tipo de abandono",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-destino-egreso"
      }
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "Establecimiento que realiza la atención",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }]
    }]
  }
}

```
