# Profesionales Autorizados - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesionales Autorizados**

## ValueSet: Profesionales Autorizados (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-profesional-autorizado-VS | *Version*:0.1.1-ballot |
| Draft as of 2025-12-12 | *Computable Name*:ProfesionalesAutorizadosR2BO |

 
Estos son los profesionales autorizados para realizar informes o solicitudes de anatomías patológicas 

 **References** 

* [Perfil de Rol Profesional](StructureDefinition-r2bo-rol-profesional-minsal.md)

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
  "id" : "r2bo-profesional-autorizado-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-profesional-autorizado-VS",
  "version" : "0.1.1-ballot",
  "name" : "ProfesionalesAutorizadosR2BO",
  "title" : "Profesionales Autorizados",
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
  "description" : "Estos son los profesionales autorizados para realizar informes o solicitudes de anatomías patológicas",
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
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
        "concept" : [
          {
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          },
          {
            "code" : "2",
            "display" : "CIRUJANO DENTISTA"
          },
          {
            "code" : "4",
            "display" : "ENFERMERAS(OS) MATRONAS(ES)"
          },
          {
            "code" : "5",
            "display" : "MATRONAS(ES)"
          }
        ]
      }
    ]
  }
}

```
