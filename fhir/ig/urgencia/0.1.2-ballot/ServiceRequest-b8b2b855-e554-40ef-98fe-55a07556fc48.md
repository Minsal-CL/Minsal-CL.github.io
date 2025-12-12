# Solicitud de Examen de Laboratorio - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud de Examen de Laboratorio**

## Example ServiceRequest: Solicitud de Examen de Laboratorio

Profile: [Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios](StructureDefinition-ServiceRequestSolicitudes.md)

**identifier**: SOL-20241025-001

**status**: Draft

**intent**: Order

**code**: Hemograma completo

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**authoredOn**: 2024-10-25 14:00:00-0400

**requester**: [Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

**reasonCode**: Control de rutina



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "b8b2b855-e554-40ef-98fe-55a07556fc48",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ServiceRequestSolicitudes"
    ]
  },
  "identifier" : [
    {
      "value" : "SOL-20241025-001"
    }
  ],
  "status" : "draft",
  "intent" : "order",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "24356-8"
      }
    ],
    "text" : "Hemograma completo"
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "encounter" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  },
  "authoredOn" : "2024-10-25T14:00:00-04:00",
  "requester" : {
    "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
  },
  "reasonCode" : [
    {
      "text" : "Control de rutina"
    }
  ]
}

```
