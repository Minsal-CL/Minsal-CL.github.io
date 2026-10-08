# Datos específicos por problema de salud - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Datos específicos por problema de salud**

## CodeSystem: Datos específicos por problema de salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSDatoEspecialGES |

 
Códigos para Observation que reemplazan los campos ad hoc de la API v1.5 (enfermedadRenalVfg1..3, cuartoTurnoEspecial, parametroEspecial). Agregar un dato nuevo = agregar un código aquí; la API y los perfiles no cambian. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Datos específicos por PS](ValueSet-vs-dato-especial-ges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dato-especial-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/dato-especial-ges",
  "version" : "0.4.0",
  "name" : "CSDatoEspecialGES",
  "title" : "Datos específicos por problema de salud",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Códigos para Observation que reemplazan los campos ad hoc de la API v1.5 (enfermedadRenalVfg1..3, cuartoTurnoEspecial, parametroEspecial). Agregar un dato nuevo = agregar un código aquí; la API y los perfiles no cambian.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "vfg",
    "display" : "Velocidad de filtración glomerular estimada",
    "definition" : "VFG en mL/min/1.73m2 (PS 1 Enfermedad renal crónica etapa 4 y 5). Equivalente sugerido LOINC 62238-1 (validar)."
  },
  {
    "code" : "vfg-fecha",
    "display" : "Fecha del examen de VFG",
    "definition" : "Fecha de la VFG usada para la confirmación."
  },
  {
    "code" : "cuarto-turno",
    "display" : "Requiere cuarto turno de diálisis",
    "definition" : "Indica que el beneficiario requiere cupo en cuarto turno de hemodiálisis."
  },
  {
    "code" : "etapa-erc",
    "display" : "Etapa de enfermedad renal crónica",
    "definition" : "Etapa KDIGO informada (4 o 5)."
  }]
}

```
