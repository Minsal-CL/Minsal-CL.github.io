# Agendamiento cirugía - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agendamiento cirugía**

## Example Appointment: Agendamiento cirugía

Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md)

**Medio de Contacto**: Llamada

> **Extension ContactadoLE**
* Contactado: true

**identifier**: CITA-20241130-001

**status**: Booked

**serviceType**: Agendamiento de quirófano

**appointmentType**: Electivo Normal

**start**: 2024-11-12 10:00:00-0400

**end**: 2024-11-12 11:00:00-0400

**created**: 2024-10-27 14:00:00-0400

**basedOn**: [ServiceRequest estructura del pulmón](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md)

> **participant****actor**:[Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)**status**: Accepted

> **participant****actor**:[PractitionerRole Atendedor](PractitionerRole-4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "0708a908-fc3a-48ea-90e7-b5cd0e516e30",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/AppointmentAgendarLE"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionMediodeContacto",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMediodeContacto",
            "code" : "3",
            "display" : "Llamada"
          }
        ]
      }
    },
    {
      "extension" : [
        {
          "url" : "Contactado",
          "valueBoolean" : true
        }
      ],
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Contactado"
    }
  ],
  "identifier" : [
    {
      "value" : "CITA-20241130-001"
    }
  ],
  "status" : "booked",
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoServicioAgendamiento",
          "code" : "2",
          "display" : "Agendamiento de quirófano"
        }
      ]
    }
  ],
  "appointmentType" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoAgendamiento",
        "code" : "1",
        "display" : "Electivo Normal"
      }
    ]
  },
  "start" : "2024-11-12T10:00:00-04:00",
  "end" : "2024-11-12T11:00:00-04:00",
  "created" : "2024-10-27T14:00:00-04:00",
  "basedOn" : [
    {
      "reference" : "ServiceRequest/38a17703-0731-4c3f-88fd-1202dc99d7ce"
    }
  ],
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3",
        "type" : "Patient"
      },
      "status" : "accepted"
    },
    {
      "actor" : {
        "reference" : "PractitionerRole/4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa",
        "type" : "PractitionerRole"
      },
      "status" : "accepted"
    }
  ]
}

```
