# Observacion de Ejemplo: Ganglios Linfáticos - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observacion de Ejemplo: Ganglios Linfáticos**

## Example Observation: Observacion de Ejemplo: Ganglios Linfáticos

Profile: [Perfil de Observación Ganglios Linfáticos](StructureDefinition-r2bo-observacion-ganglios-linfaticos.md)

**basedOn**: [ServiceRequest Pathologist report](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)

**status**: Final

**category**: Laboratory

**code**: Lymph nodes with metastasis [#] in Cancer specimen

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**effective**: 2021-06-01 12:00:00-0400

**performer**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**value**: true

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Number (attribute) | 4 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "r2bo-observacion-ganglios-linfaticos-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-ganglios-linfaticos"
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
        "system" : "http://loinc.org",
        "code" : "92831-7"
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
      "valueInteger" : 4
    }
  ]
}

```
