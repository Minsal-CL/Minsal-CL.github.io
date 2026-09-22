# Motivo Administrativo de Cancelación de Solicitud de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo Administrativo de Cancelación de Solicitud de Laboratorio**

## CodeSystem: Motivo Administrativo de Cancelación de Solicitud de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/motivo-administrativo-cancelacion-laboratorio | *Version*:0.5.1 |
| Active as of 2026-09-22 | *Computable Name*:CSMotivoAdministrativoCancelacionLaboratorio |

 

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| CodeSystem local MINSAL para motivos administrativos de cancelación de una solicitud de laboratorio antes de la toma de muestra. Se crea porque el concepto SNOMED CT 270426007 | Did not attend - no reason (finding) | , usado originalmente para este propósito, fue inactivado por SNOMED International (release GP/FP de enero de 2024) sin reemplazo directo ("No replacement"): SNOMED International considera este tipo de concepto "Did not attend X" como administrativo, fuera del foco de la jerarquía de hallazgos clínicos (Clinical finding), y no publica un concepto activo equivalente con el significado exacto "no se presentó, sin motivo informado". El concepto SNOMED CT activo más próximo, 410543007 | Did not attend (qualifier value) | , no cubre por sí solo la ausencia de motivo; puede agregarse como codificación SNOMED CT aproximada adicional en el mismo`CodeableConcept`, pero no reemplaza el código local. |

 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Motivo de Cancelación de Solicitud de Laboratorio](ValueSet-motivo-cancelacion-solicitud-laboratorio.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "motivo-administrativo-cancelacion-laboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/motivo-administrativo-cancelacion-laboratorio",
  "version" : "0.5.1",
  "name" : "CSMotivoAdministrativoCancelacionLaboratorio",
  "title" : "Motivo Administrativo de Cancelación de Solicitud de Laboratorio",
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
  "description" : "CodeSystem local MINSAL para motivos administrativos de cancelación de una solicitud de laboratorio antes de la toma de muestra. Se crea porque el concepto SNOMED CT 270426007 |Did not attend - no reason (finding)|, usado originalmente para este propósito, fue inactivado por SNOMED International (release GP/FP de enero de 2024) sin reemplazo directo (\"No replacement\"): SNOMED International considera este tipo de concepto \"Did not attend X\" como administrativo, fuera del foco de la jerarquía de hallazgos clínicos (Clinical finding), y no publica un concepto activo equivalente con el significado exacto \"no se presentó, sin motivo informado\". El concepto SNOMED CT activo más próximo, 410543007 |Did not attend (qualifier value)|, no cubre por sí solo la ausencia de motivo; puede agregarse como codificación SNOMED CT aproximada adicional en el mismo `CodeableConcept`, pero no reemplaza el código local.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "no-presentacion",
    "display" : "Paciente no se presenta (sin motivo informado)",
    "definition" : "El paciente no concurrió a la toma de muestra y no se registró un motivo específico. Sin `Specimen` asociado."
  }]
}

```
