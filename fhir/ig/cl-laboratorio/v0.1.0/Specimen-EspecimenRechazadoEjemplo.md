# EspÃ©cimen rechazado por coagulaciÃ³n - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EspÃ©cimen rechazado por coagulaciÃ³n**

## Example Specimen: EspÃ©cimen rechazado por coagulaciÃ³n

Profile: [Espécimen de Laboratorio MINSAL](StructureDefinition-MinsalEspecimenLaboratorio.md)

**Specimen Reject Reason**: Clotting

**identifier**: `https://ejemplo.cl/identificadores/especimenes`/ESP-MULTIPLE-002-HEM

**status**: Unsatisfactory

**type**: Blood specimen (specimen)

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: 12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**request**: [ServiceRequest Hemograma](ServiceRequest-PrestacionHemogramaEjemplo.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2026-09-08 09:00:00-0400 | PunciÃ³n venosa |

### Containers

| | |
| :--- | :--- |
| - | **Type** |
| * | Tubo de vacÃ­o con EDTA potÃ¡sico |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "EspecimenRechazadoEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/specimen-reject-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0490",
        "code" : "RC",
        "display" : "Clotting"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://ejemplo.cl/identificadores/especimenes",
    "value" : "ESP-MULTIPLE-002-HEM"
  }],
  "status" : "unsatisfactory",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119297000",
      "display" : "Blood specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PacienteEjemplo"
  },
  "request" : [{
    "reference" : "ServiceRequest/PrestacionHemogramaEjemplo"
  }],
  "collection" : {
    "collectedDateTime" : "2026-09-08T09:00:00-04:00",
    "method" : {
      "text" : "PunciÃ³n venosa"
    }
  },
  "container" : [{
    "type" : {
      "text" : "Tubo de vacÃ­o con EDTA potÃ¡sico"
    }
  }]
}

```
