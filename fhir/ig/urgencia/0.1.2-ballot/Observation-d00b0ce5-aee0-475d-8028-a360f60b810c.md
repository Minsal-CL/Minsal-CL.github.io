# Observación Reconsulta Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observación Reconsulta Urgencia**

## Example Observation: Observación Reconsulta Urgencia

Profile: [Observación Reconsulta Urgencia](StructureDefinition-ObservacionReconsultaUrgencia.md)

**status**: Registered

**code**: Reconsulta

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

**performer**: [Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "d00b0ce5-aee0-475d-8028-a360f60b810c",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionReconsultaUrgencia"
    ]
  },
  "status" : "registered",
  "code" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/CSCodigosUrgencia",
        "code" : "reconsulta"
      }
    ],
    "text" : "Reconsulta"
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "encounter" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  },
  "effectiveDateTime" : "2024-10-25T14:18:00-04:00",
  "performer" : [
    {
      "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
    }
  ],
  "valueBoolean" : true
}

```
