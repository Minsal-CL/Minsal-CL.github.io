# Observacion de Ejemplo: Grupo Estadificación TNM - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observacion de Ejemplo: Grupo Estadificación TNM**

## Example Observation: Observacion de Ejemplo: Grupo Estadificación TNM

Profile: [Perfil de Grupo Estadificación TNM](StructureDefinition-r2bo-estadificacion-tnm.md)

**basedOn**: [ServiceRequest Pathologist report](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)

**status**: Final

**category**: Laboratory

**code**: Pathologic TNM stage grouping (observable entity)

**subject**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))](Patient-paciente-requiere-examen.md)

**effective**: 2021-06-01 12:00:00-0400

**performer**: [PractitionerRole MÉDICO CIRUJANO](PractitionerRole-r2bo-anatopatologo-hospital.md)

**specimen**: [Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma](Specimen-r2bo-specimen-example.md)

**hasMember**: 

* [Observation pT category (observable entity)](Observation-r2bo-tnm-categoria-tumor-primario-ex.md)
* [Observation Stage of tumour involvement of regional lymph nodes](Observation-r2bo-tnm-categoria-nodo-regional-ex.md)
* [Observation Stage of distant metastasis of tumour](Observation-r2bo-tnm-categoria-metastasis-distantel-ex.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "r2bo-estadificacion-tnm-ex",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"
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
        "code" : "399588009"
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
  "specimen" : {
    "reference" : "Specimen/r2bo-specimen-example"
  },
  "hasMember" : [
    {
      "reference" : "Observation/r2bo-tnm-categoria-tumor-primario-ex"
    },
    {
      "reference" : "Observation/r2bo-tnm-categoria-nodo-regional-ex"
    },
    {
      "reference" : "Observation/r2bo-tnm-categoria-metastasis-distantel-ex"
    }
  ]
}

```
