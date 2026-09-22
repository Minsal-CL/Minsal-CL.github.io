# Espécimen de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Espécimen de ejemplo**

## Example Specimen: Espécimen de ejemplo

Profile: [Espécimen de Laboratorio MINSAL](StructureDefinition-MinsalEspecimenLaboratorio.md)

**identifier**: `https://ejemplo.cl/identificadores/especimenes`/ESP-MULTIPLE-001-HEM

**status**: Available

**type**: Blood specimen (specimen)

**subject**: [Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: RunPacienteNid#12345678-5 (use: official, ))](Patient-PacienteEjemplo.md)

**request**: [ServiceRequest Hemograma](ServiceRequest-PrestacionHemogramaEjemplo.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2026-08-28 10:15:00-0400 | Punción venosa |

### Containers

| | |
| :--- | :--- |
| - | **Type** |
| * | Tubo de vacío con EDTA potásico |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "EspecimenEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"]
  },
  "identifier" : [{
    "system" : "https://ejemplo.cl/identificadores/especimenes",
    "value" : "ESP-MULTIPLE-001-HEM"
  }],
  "status" : "available",
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
    "collectedDateTime" : "2026-08-28T10:15:00-04:00",
    "method" : {
      "text" : "Punción venosa"
    }
  },
  "container" : [{
    "type" : {
      "text" : "Tubo de vacío con EDTA potásico"
    }
  }]
}

```
