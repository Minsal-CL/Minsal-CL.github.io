# Observacion de Ejemplo: Multifocalidad - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observacion de Ejemplo: Multifocalidad**

## Example Observation: Observacion de Ejemplo: Multifocalidad

Profile: [Perfil de Observación Focalidad](StructureDefinition-r2bo-observacion-focalidad.md)

**basedOn**: [ServiceRequest Pathologist report](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)

**status**: Final

**category**: Laboratory

**code**: Status of specimen involvement by multifocal invasion (observable entity)

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**effective**: 2021-06-01 12:00:00-0400

**performer**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**value**: true

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Number (attribute) | 2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "r2bo-observacion-multifocalidad-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-focalidad"
    ]
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "444696007"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/paciente-requiere-examen"
  },
  "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
  "performer" : [
    {
      "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
    }
  ],
  "valueBoolean" : true,
  "specimen" : {
    "reference" : "Specimen/r2bo-specimen-example"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "410680006"
          }
        ]
      },
      "valueInteger" : 2
    }
  ]
}

```
