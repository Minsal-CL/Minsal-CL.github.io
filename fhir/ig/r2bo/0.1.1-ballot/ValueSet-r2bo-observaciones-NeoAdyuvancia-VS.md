# Set de Valores de Resultados de Observación Post Neoadyuvancia - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores de Resultados de Observación Post Neoadyuvancia**

## ValueSet: Set de Valores de Resultados de Observación Post Neoadyuvancia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-observaciones-NeoAdyuvancia-VS | *Version*:0.1.1-ballot |
| Draft as of 2025-12-23 | *Computable Name*:ObservacionNeoAdyuvanciaVS |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Posibles valores para las observaciones realizadas en la evaluación post neoadyuvancia de un reporte de biopsia 

 **References** 

* [Perfil de Observación Evaluación Post Neoadyuvancia](StructureDefinition-r2bo-observacion-post-tratamiento-neoadjuvancia.md)

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
  "id" : "r2bo-observaciones-NeoAdyuvancia-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-observaciones-NeoAdyuvancia-VS",
  "version" : "0.1.1-ballot",
  "name" : "ObservacionNeoAdyuvanciaVS",
  "title" : "Set de Valores de Resultados de Observación Post Neoadyuvancia",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-23T17:10:55-03:00",
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
  "description" : "Posibles valores para las observaciones realizadas en la evaluación post neoadyuvancia de un reporte de biopsia",
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
        "system" : "http://loinc.org",
        "version" : "2.81",
        "concept" : [
          {
            "code" : "LA26537-3",
            "display" : "No prior treatment"
          },
          {
            "code" : "LA26538-1",
            "display" : "Complete response (Grade 0 - No viable cancer cells)"
          },
          {
            "code" : "LA26539-9",
            "display" : "Moderate response (Grade 1 - Single cells or small groups of cancer cells)"
          },
          {
            "code" : "LA26540-7",
            "display" : "Mminimal response (Grade 2 - Residual cancer outgrown by fibrosis)"
          },
          {
            "code" : "LA26541-5",
            "display" : "Poor response (Grade 3 - Minimal or no tumor kill; extensive)"
          }
        ]
      }
    ]
  }
}

```
