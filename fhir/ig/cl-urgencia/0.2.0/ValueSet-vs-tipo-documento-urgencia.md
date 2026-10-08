# Tipo de documento de urgencia - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Tipo de documento de urgencia**

## ValueSet: Tipo de documento de urgencia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-tipo-documento-urgencia | *Version*:0.2.0 |
| Draft as of 2026-10-08 | *Computable Name*:VSTipoDocumentoUrgencia |

 
Tipo del documento clínico de la atención: resumen de alta de urgencia (alta) o nota de urgencia (abandono, en que no hay alta). 

 **References** 

* [Documento de la atención de urgencia](StructureDefinition-documento-urgencia.md)

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
  "id" : "vs-tipo-documento-urgencia",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ValueSet/vs-tipo-documento-urgencia",
  "version" : "0.2.0",
  "name" : "VSTipoDocumentoUrgencia",
  "title" : "Tipo de documento de urgencia",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T00:02:21-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Tipo del documento clínico de la atención: resumen de alta de urgencia (alta) o nota de urgencia (abandono, en que no hay alta).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "59258-4",
        "display" : "Emergency department Discharge summary"
      },
      {
        "code" : "34111-5",
        "display" : "Emergency department Note"
      }]
    }]
  }
}

```
