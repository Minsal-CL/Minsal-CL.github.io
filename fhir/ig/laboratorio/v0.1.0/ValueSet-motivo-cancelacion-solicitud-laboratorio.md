# Motivo de Cancelación de Solicitud de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo de Cancelación de Solicitud de Laboratorio**

## ValueSet: Motivo de Cancelación de Solicitud de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/motivo-cancelacion-solicitud-laboratorio | *Version*:0.5.1 |
| Active as of 2026-09-22 | *Computable Name*:VSMotivoCancelacionSolicitudLaboratorio |

 
Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Referencia el código local `no-presentacion` del CodeSystem MINSAL `CSMotivoAdministrativoCancelacionLaboratorio`, creado porque el concepto SNOMED CT usado originalmente para este motivo (270426007) fue inactivado por SNOMED International sin reemplazo directo (ver descripción del CodeSystem). Binding extensible: permite agregar otros códigos, locales o de catálogos externos, si se identifican nuevos motivos de cancelación sin muestra. 

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
  "version" : "0.5.1",
  "name" : "VSMotivoCancelacionSolicitudLaboratorio",
  "title" : "Motivo de Cancelación de Solicitud de Laboratorio",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-22T09:29:02-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Referencia el código local `no-presentacion` del CodeSystem MINSAL `CSMotivoAdministrativoCancelacionLaboratorio`, creado porque el concepto SNOMED CT usado originalmente para este motivo (270426007) fue inactivado por SNOMED International sin reemplazo directo (ver descripción del CodeSystem). Binding extensible: permite agregar otros códigos, locales o de catálogos externos, si se identifican nuevos motivos de cancelación sin muestra.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/motivo-administrativo-cancelacion-laboratorio",
      "concept" : [{
        "code" : "no-presentacion",
        "display" : "Paciente no se presenta (sin motivo informado)"
      }]
    }]
  }
}

```
