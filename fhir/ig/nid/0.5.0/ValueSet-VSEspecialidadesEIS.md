# Especialidades de EIS - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Especialidades de EIS**

## ValueSet: Especialidades de EIS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSEspecialidadesEIS | *Version*:0.5.0 |
| Active as of 2026-11-24 | *Computable Name*:VSEspecialidadesEIS |

 
Reúne los catálogos de especialidades que EIS publica por separado: médicas, odontológicas, farmacéuticas, bioquímicas y de enfermería. 

 **References** 

* [MINSAL Rol Profesional](StructureDefinition-MINSALRolProfesional.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VSEspecialidadesEIS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSEspecialidadesEIS",
  "version" : "0.5.0",
  "name" : "VSEspecialidadesEIS",
  "title" : "Especialidades de EIS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Reúne los catálogos de especialidades que EIS publica por separado: médicas, odontológicas, farmacéuticas, bioquímicas y de enfermería.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-EspecialidadesySubespecialidadesMedicas-VS"]
    },
    {
      "valueSet" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-especialidades-odontologicas-vs"]
    },
    {
      "valueSet" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-especialidades-farmaceuticas-vs"]
    },
    {
      "valueSet" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-especialidades-bioquimicas-vs"]
    },
    {
      "valueSet" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-especialidades-enfermeria-vs"]
    }]
  }
}

```
