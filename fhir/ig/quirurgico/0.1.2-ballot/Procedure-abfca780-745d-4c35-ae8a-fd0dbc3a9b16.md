# Cirugía Hernia Ventral - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cirugía Hernia Ventral**

## Example Procedure: Cirugía Hernia Ventral

Profile: [Procedure Cirugia LE](StructureDefinition-ProcedureCirugiaLE.md)

**basedOn**: [ServiceRequest estructura del pulmón](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md)

**status**: Completed

**category**: Cirugía Mayor Electiva

**code**: Cirugía de hernia ventral

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**performed**: 2024-12-02 10:00:00-0400

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Atendedor](PractitionerRole-4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa.md) |

**outcome**: Vivo



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "abfca780-745d-4c35-ae8a-fd0dbc3a9b16",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ProcedureCirugiaLE"
    ]
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/38a17703-0731-4c3f-88fd-1202dc99d7ce"
    }
  ],
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta",
        "code" : "1",
        "display" : "Cirugía Mayor Electiva"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "39607008"
      }
    ],
    "text" : "Cirugía de hernia ventral"
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "performedDateTime" : "2024-12-02T10:00:00-04:00",
  "performer" : [
    {
      "actor" : {
        "reference" : "PractitionerRole/4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa"
      }
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSCondicionSalidaCirugia",
        "code" : "1",
        "display" : "Vivo"
      }
    ]
  }
}

```
