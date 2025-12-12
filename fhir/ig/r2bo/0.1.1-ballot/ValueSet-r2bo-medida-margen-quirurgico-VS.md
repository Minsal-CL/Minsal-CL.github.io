# Set de Valores de la Medida de Margen Quirúrgico - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores de la Medida de Margen Quirúrgico**

## ValueSet: Set de Valores de la Medida de Margen Quirúrgico (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-medida-margen-quirurgico-VS | *Version*:0.1.1-ballot |
| Draft as of 2025-12-12 | *Computable Name*:MedidaMargenQuirurgicoVS |

 
Valores aceptados para la medida del margen quirúrgico en un reporte de biopsia 

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
  "id" : "r2bo-medida-margen-quirurgico-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-medida-margen-quirurgico-VS",
  "version" : "0.1.1-ballot",
  "name" : "MedidaMargenQuirurgicoVS",
  "title" : "Set de Valores de la Medida de Margen Quirúrgico",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-12T16:54:01-03:00",
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
  "description" : "Valores aceptados para la medida del margen quirúrgico en un reporte de biopsia",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://unitsofmeasure.org",
        "concept" : [
          {
            "code" : "cm",
            "display" : "Centimeter"
          },
          {
            "code" : "mm",
            "display" : "Millimeter"
          }
        ]
      }
    ]
  }
}

```
