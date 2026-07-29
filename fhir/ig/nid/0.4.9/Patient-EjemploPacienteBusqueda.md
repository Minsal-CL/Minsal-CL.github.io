# Ejemplo de Paciente para Busqueda - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de Paciente para Busqueda**

## Example Patient: Ejemplo de Paciente para Busqueda

Profile: [MINSAL Paciente Busqueda](StructureDefinition-MINSALPacienteBusqueda.md)

Andres Martinez (official) Male, DoB: 1981-11-10 ( RUN: 12216373-3 (use: official, ))

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | [+5694332547](tel:+5694332547) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPacienteBusqueda",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
            "code" : "1",
            "display" : "RUN"
          }
        ]
      },
      "value" : "12216373-3"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Martinez",
      "given" : ["Andres"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+5694332547"
    }
  ],
  "gender" : "male",
  "birthDate" : "1981-11-10"
}

```
