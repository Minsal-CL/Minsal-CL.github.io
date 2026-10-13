# Motivo de Cancelación de Solicitud de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo de Cancelación de Solicitud de Laboratorio**

## ValueSet: Motivo de Cancelación de Solicitud de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/motivo-cancelacion-solicitud-laboratorio | *Version*:0.5.0 |
| Active as of 2026-09-21 | *Computable Name*:VSMotivoCancelacionSolicitudLaboratorio |

 
Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Este ValueSet no define códigos propios; referencia el CodeSystem externo SNOMED CT. Binding extensible: permite agregar otros códigos SNOMED CT si se identifican nuevos motivos de cancelación sin muestra. 

 **References** 

* [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md)

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
  "id" : "motivo-cancelacion-solicitud-laboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/motivo-cancelacion-solicitud-laboratorio",
  "version" : "0.5.0",
  "name" : "VSMotivoCancelacionSolicitudLaboratorio",
  "title" : "Motivo de Cancelación de Solicitud de Laboratorio",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-21T17:12:23-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Este ValueSet no define códigos propios; referencia el CodeSystem externo SNOMED CT. Binding extensible: permite agregar otros códigos SNOMED CT si se identifican nuevos motivos de cancelación sin muestra.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "270426007",
        "display" : "Did not attend - no reason",
        "designation" : [{
          "language" : "es",
          "value" : "Paciente no se presenta"
        }]
      }]
    }]
  }
}

```
