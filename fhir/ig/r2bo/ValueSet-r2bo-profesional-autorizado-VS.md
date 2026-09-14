# Profesionales Autorizados - Repositorio de Reportes de Biopsias Oncológicas v0.3.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesionales Autorizados**

## ValueSet: Profesionales Autorizados 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-profesional-autorizado-VS | *Version*:0.3.2 |
| Active as of 2026-09-14 | *Computable Name*:ProfesionalesAutorizadosR2BO |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8.48.13 | |

 
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
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-profesional-autorizado-VS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.40.8.48.13"
  }],
  "version" : "0.3.2",
  "name" : "ProfesionalesAutorizadosR2BO",
  "title" : "Profesionales Autorizados",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T12:54:10-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Estos son los profesionales autorizados para realizar informes o solicitudes de anatomías patológicas",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
      "concept" : [{
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
      }]
    }]
  }
}

```
