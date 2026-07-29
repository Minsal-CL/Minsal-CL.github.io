# Ejemplo de Cobertura FONASA - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de Cobertura FONASA**

## Example Coverage: Ejemplo de Cobertura FONASA

Profile: [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)

**status**: Active

**type**: FONASA

**policyHolder**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official, ))](Patient-MinsalPacienteEjemplo.md)

**beneficiary**: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official, ))](Patient-MinsalPacienteEjemplo.md)

**period**: 2024-01-12 --> (ongoing)

**payor**: [Organization Fondo Nacional De Salud](Organization-FONASA.md)

### Classes

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value** |
| * | Tramos de FONASA | `Valor de la Clase:`[Tramos de FONASA: A](CodeSystem-CSTramosFONASA.md#CSTramosFONASA-A)(FONASA A) |



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "CoberturaFONASAEjemplo",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura"
    ]
  },
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSPrevision",
        "code" : "1",
        "display" : "FONASA"
      }
    ]
  },
  "policyHolder" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "beneficiary" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "period" : {
    "start" : "2024-01-12"
  },
  "payor" : [
    {
      "reference" : "Organization/FONASA"
    }
  ],
  "class" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSClasesDeCobertura",
            "code" : "1",
            "display" : "Tramos de FONASA"
          }
        ]
      },
      "_value" : {
        "extension" : [
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase",
            "valueCoding" : {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTramosFONASA",
              "code" : "A",
              "display" : "FONASA A"
            }
          }
        ]
      }
    }
  ]
}

```
