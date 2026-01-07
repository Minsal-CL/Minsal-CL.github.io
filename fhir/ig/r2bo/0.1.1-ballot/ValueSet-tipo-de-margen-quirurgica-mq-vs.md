# Tipo de Margen Quirúrgico - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de Margen Quirúrgico**

## ValueSet: Tipo de Margen Quirúrgico (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/tipo-de-margen-quirurgica-mq-vs | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:TipoDeMargenQuirurgicaMQVS |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Conjunto de valores para el tipo de margen quirúrgico obtenido en el caso de un posible paciente con cáncer 

 **References** 

* [Perfil de Observación Margen Quirúrgico](StructureDefinition-r2bo-observacion-margen-quirurgico.md)

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
  "id" : "tipo-de-margen-quirurgica-mq-vs",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/tipo-de-margen-quirurgica-mq-vs",
  "version" : "0.1.1-ballot",
  "name" : "TipoDeMargenQuirurgicaMQVS",
  "title" : "Tipo de Margen Quirúrgico",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-07T10:16:22-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Conjunto de valores para el tipo de margen quirúrgico obtenido en el caso de un posible paciente con cáncer",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [
      {
        "valueSet" : ["http://loinc.org/vs/LL4348-0"]
      }
    ]
  }
}

```
