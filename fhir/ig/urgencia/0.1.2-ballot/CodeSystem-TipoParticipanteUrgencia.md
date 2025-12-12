# Tipo Participante Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Participante Urgencia**

## CodeSystem: Tipo Participante Urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSTipoParticipanteUrgencia |

 
Tipo de participante en un evento de urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoParticipanteEncuentroUrgencia](ValueSet-TipoParticipanteEncuentroUrgencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TipoParticipanteUrgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoParticipanteUrgencia",
  "title" : "Tipo Participante Urgencia",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-10T16:35:01-03:00",
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
    },
    {
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Tipo de participante en un evento de urgencia.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "triage",
      "display" : "Categorizador",
      "definition" : "Profesional que realiza la categorización del paciente"
    }
  ]
}

```
