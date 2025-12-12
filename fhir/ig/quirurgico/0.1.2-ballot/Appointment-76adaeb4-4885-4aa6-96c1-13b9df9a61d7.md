# Agendamiento entrevista pre quirúrgica - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agendamiento entrevista pre quirúrgica**

## Example Appointment: Agendamiento entrevista pre quirúrgica

Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md)

**Medio de Contacto**: Llamada

> **Extension ContactadoLE**
* Contactado: true

**identifier**: CITA-20241027-001

**status**: Booked

**serviceType**: Entrevista Pre Quirúrgica

**start**: 2024-10-27 10:00:00-0400

**end**: 2024-10-27 10:30:00-0400

**created**: 2024-10-25 14:00:00-0400

**basedOn**: [ServiceRequest estructura del pulmón](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md)

> **participant****actor**:[Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)**status**: Accepted

> **participant****actor**:[PractitionerRole Entrevistador](PractitionerRole-0e5c9353-5f8e-4801-b7fc-59395f14344c.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "76adaeb4-4885-4aa6-96c1-13b9df9a61d7",
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
      "value" : "CITA-20241027-001"
    }
  ],
  "status" : "booked",
  "serviceType" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoServicioAgendamiento",
          "code" : "1",
          "display" : "Entrevista Pre Quirúrgica"
        }
      ]
    }
  ],
  "start" : "2024-10-27T10:00:00-04:00",
  "end" : "2024-10-27T10:30:00-04:00",
  "created" : "2024-10-25T14:00:00-04:00",
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
        "reference" : "PractitionerRole/0e5c9353-5f8e-4801-b7fc-59395f14344c",
        "type" : "PractitionerRole"
      },
      "status" : "accepted"
    }
  ]
}

```
