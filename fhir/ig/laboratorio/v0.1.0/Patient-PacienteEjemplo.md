# Paciente de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de ejemplo**

## Example Patient: Paciente de ejemplo

Profile: [Paciente de Laboratorio](StructureDefinition-PacienteLaboratorio.md)

Ana Pérez (official) Female, DoB: 1990-01-02 ( Run: RunPacienteNid#12345678-5 (use: official, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "Run"
      }]
    },
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
    "value" : "12345678-5"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Pérez",
    "given" : ["Ana"]
  }],
  "gender" : "female",
  "birthDate" : "1990-01-02"
}

```
