# RUN de Prestador Individual (dominio HPD/MPI) - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RUN de Prestador Individual (dominio HPD/MPI)**

## NamingSystem: RUN de Prestador Individual (dominio HPD/MPI) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSRunPrestador | *Version*:0.6.0 |
| Active as of 2026-09-21 | *Computable Name*:RunPrestador |

 
Dominio de identificador para el RUN (Rol Único Nacional) de un prestador individual (profesional o administrativo de salud), tal como lo usa el repositorio real `IG_hpd` (Maestro de Prestadores Individuales, MPI de MINSAL) en sus propios ejemplos de prestador. No debe confundirse con el dominio del RUN de paciente (ver `NSRunPacienteNid`), gestionado por un registro distinto (NID): un mismo número de RUN puede corresponder a un dominio u otro según el rol de la persona (ver Arquitectura). La definición y gobernanza de este dominio corresponde al MPI/IG_hpd, no a esta guía. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NSRunPrestador",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/NamingSystem/NSRunPrestador"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.6.0"
  }],
  "name" : "RunPrestador",
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
  "description" : "Dominio de identificador para el RUN (Rol Único Nacional) de un prestador individual (profesional o administrativo de salud), tal como lo usa el repositorio real `IG_hpd` (Maestro de Prestadores Individuales, MPI de MINSAL) en sus propios ejemplos de prestador. No debe confundirse con el dominio del RUN de paciente (ver `NSRunPacienteNid`), gestionado por un registro distinto (NID): un mismo número de RUN puede corresponder a un dominio u otro según el rol de la persona (ver Arquitectura). La definición y gobernanza de este dominio corresponde al MPI/IG_hpd, no a esta guía.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://api.cl/system/run",
    "preferred" : true,
    "comment" : "Mismo valor usado por el repositorio real Minsal-CL/IG_hpd en sus ejemplos de prestador (ejemplosPrestadorAdm.fsh, ejemplosPrestadorProf.fsh)."
  }]
}

```
