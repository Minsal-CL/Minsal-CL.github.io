# Busqueda Paciente por Segundo Apellido - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Busqueda Paciente por Segundo Apellido**

## SearchParameter: Busqueda Paciente por Segundo Apellido 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/SearchParameter/mpi-paciente-segundoApellido | *Version*:0.5.0 |
| Active as of 2023-04-06 | *Computable Name*:Paciente_Segundo_Apellido_NID |

 
Regresa los pacientes que cumplan con el criterio de segundo apellido. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mpi-paciente-segundoApellido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/SearchParameter/mpi-paciente-segundoApellido",
  "version" : "0.5.0",
  "name" : "Paciente_Segundo_Apellido_NID",
  "status" : "active",
  "date" : "2023-04-06",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Regresa los pacientes que cumplan con el criterio de segundo apellido.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "code" : "segundo-apellido",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "Patient.name.family.extension('https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido').value",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true,
  "modifier" : ["exact"],
  "_modifier" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  }]
}

```
