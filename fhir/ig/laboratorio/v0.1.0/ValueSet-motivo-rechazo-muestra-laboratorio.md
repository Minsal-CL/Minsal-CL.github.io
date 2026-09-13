# Motivo de Rechazo de Muestra de Laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo de Rechazo de Muestra de Laboratorio**

## ValueSet: Motivo de Rechazo de Muestra de Laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/motivo-rechazo-muestra-laboratorio | *Version*:0.2.1 |
| Active as of 2026-09-10 | *Computable Name*:VSMotivoRechazoMuestraLaboratorio |

 
Subconjunto del catálogo oficial HL7 v2 Tabla 0490 (Specimen Reject Reason) con los motivos de rechazo de muestra reconocidos por esta guía: cantidad insuficiente, coagulación y problema de etiquetado. Este ValueSet no define códigos propios; selecciona un subconjunto del CodeSystem externo `http://terminology.hl7.org/CodeSystem/v2-0490`, el mismo catálogo que usa HL7 v2 en el segmento SPM-21. Binding extensible: si en el futuro se identifica un motivo de rechazo no incluido aquí (por ejemplo hemólisis o contaminación), puede usarse cualquier otro código válido del mismo CodeSystem. 

 **References** 

* [Espécimen de Laboratorio MINSAL](StructureDefinition-MinsalEspecimenLaboratorio.md)

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
  "id" : "motivo-rechazo-muestra-laboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/motivo-rechazo-muestra-laboratorio",
  "version" : "0.2.1",
  "name" : "VSMotivoRechazoMuestraLaboratorio",
  "title" : "Motivo de Rechazo de Muestra de Laboratorio",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T11:13:46-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Subconjunto del catálogo oficial HL7 v2 Tabla 0490 (Specimen Reject Reason) con los motivos de rechazo de muestra reconocidos por esta guía: cantidad insuficiente, coagulación y problema de etiquetado. Este ValueSet no define códigos propios; selecciona un subconjunto del CodeSystem externo `http://terminology.hl7.org/CodeSystem/v2-0490`, el mismo catálogo que usa HL7 v2 en el segmento SPM-21. Binding extensible: si en el futuro se identifica un motivo de rechazo no incluido aquí (por ejemplo hemólisis o contaminación), puede usarse cualquier otro código válido del mismo CodeSystem.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0490",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "QS",
        "display" : "Quantity not sufficient",
        "designation" : [{
          "language" : "es",
          "value" : "Cantidad insuficiente"
        }]
      },
      {
        "code" : "RC",
        "display" : "Clotting",
        "designation" : [{
          "language" : "es",
          "value" : "Muestra coagulada"
        }]
      },
      {
        "code" : "RM",
        "display" : "Labeling",
        "designation" : [{
          "language" : "es",
          "value" : "Muestra mal etiquetada"
        }]
      }]
    }]
  }
}

```
