# Solicitud Examen - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud Examen**

## Example ServiceRequest: Solicitud Examen

Profile: [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)

**identifier**: EX-2024-0001

**status**: Active

**intent**: Order

**code**: Multisección:Abdomen :Punto temporal:Tipo:Documento:US

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**encounter**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)

**authoredOn**: 2024-12-02 10:00:00-0400

**requester**: [Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

**reasonCode**: Dolor abdominal crónico

**note**: 

> 

Paciente con dolor abdominal crónico




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "aecacd57-d7cf-4cb7-8bfd-339dc53d6e83",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestExamenLE"
    ]
  },
  "identifier" : [
    {
      "value" : "EX-2024-0001"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "24558-9"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "encounter" : {
    "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
  },
  "authoredOn" : "2024-12-02T10:00:00-04:00",
  "requester" : {
    "reference" : "Practitioner/fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  },
  "reasonCode" : [
    {
      "text" : "Dolor abdominal crónico"
    }
  ],
  "note" : [
    {
      "text" : "Paciente con dolor abdominal crónico"
    }
  ]
}

```
