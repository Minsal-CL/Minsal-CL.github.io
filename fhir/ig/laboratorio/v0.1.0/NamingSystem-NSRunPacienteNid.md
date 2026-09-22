# RUN de Paciente (dominio NID) - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RUN de Paciente (dominio NID)**

## NamingSystem: RUN de Paciente (dominio NID) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSRunPacienteNid | *Version*:0.5.1 |
| Active as of 2026-09-21 | *Computable Name*:RunPacienteNid |

 
Dominio de identificador para el RUN (Rol Único Nacional) de un paciente, propio de la guía NID (Núcleo de Identificación) de MINSAL. No debe confundirse con el dominio del RUN de prestador individual (ver `NSRunPrestador`), gestionado por un registro distinto (MPI/IG_hpd). La definición y gobernanza de este dominio corresponde a NID, no a esta guía. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSRunPacienteNid",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSRunPacienteNid"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.5.1"
  }],
  "name" : "RunPacienteNid",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-09-21",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Dominio de identificador para el RUN (Rol Único Nacional) de un paciente, propio de la guía NID (Núcleo de Identificación) de MINSAL. No debe confundirse con el dominio del RUN de prestador individual (ver `NSRunPrestador`), gestionado por un registro distinto (MPI/IG_hpd). La definición y gobernanza de este dominio corresponde a NID, no a esta guía.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
    "preferred" : true
  }]
}

```
