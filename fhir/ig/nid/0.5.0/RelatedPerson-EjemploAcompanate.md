# Acompañante de un Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Acompañante de un Paciente**

## Example RelatedPerson: Acompañante de un Paciente

Perfil: [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md)

Pedro Castilla (official) - Emergency Contact

-------

| | |
| :--- | :--- |
| Valid Period: | 2024-01-23 16:30:00-0300 --> 2024-01-23 18:00:00-0300 |
| Patient: | [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official))](Patient-MinsalPacienteEjemplo.md) |
| Relationship: | Emergency Contact |
| Contact Detail | [+56987654321](tel:+56987654321) |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "EjemploAcompanate",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante"]
  },
  "patient" : {
    "reference" : "Patient/MinsalPacienteEjemplo"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "code" : "C",
      "display" : "Emergency Contact"
    }]
  }],
  "name" : [{
    "use" : "official",
    "family" : "Castilla",
    "given" : ["Pedro"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56987654321",
    "use" : "mobile"
  }],
  "period" : {
    "start" : "2024-01-23T16:30:00-03:00",
    "end" : "2024-01-23T18:00:00-03:00"
  }
}

```
