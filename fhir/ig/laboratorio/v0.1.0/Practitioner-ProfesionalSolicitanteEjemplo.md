# Profesional solicitante de ejemplo - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional solicitante de ejemplo**

## Example Practitioner: Profesional solicitante de ejemplo

Profile: [Profesional de Laboratorio MINSAL](StructureDefinition-MinsalPractitionerLaboratorio.md)

**identifier**: RUN/9876543-3 (use: official, )

**name**: María González 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ProfesionalSolicitanteEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "system" : "https://api.cl/system/run",
    "value" : "9876543-3"
  }],
  "name" : [{
    "family" : "González",
    "given" : ["María"]
  }]
}

```
