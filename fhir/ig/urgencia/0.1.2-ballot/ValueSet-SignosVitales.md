# Signos Vitales - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Signos Vitales**

## ValueSet: Signos Vitales 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/SignosVitales | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:VSSignosVitales |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Códigos empleados para registrar los diferentes signos vitales de un paciente en un servicio de urgencia. 

 **References** 

* [Observación Signos Vitales](StructureDefinition-ObservationSignosVitales.md)

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
  "id" : "SignosVitales",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/SignosVitales",
  "version" : "0.1.2-ballot",
  "name" : "VSSignosVitales",
  "title" : "Signos Vitales",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-10T16:35:01-03:00",
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
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Códigos empleados para registrar los diferentes signos vitales de un paciente en un servicio de urgencia.",
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
        "concept" : [
          {
            "code" : "9279-1"
          },
          {
            "code" : "8867-4"
          },
          {
            "code" : "2708-6"
          },
          {
            "code" : "8310-5"
          },
          {
            "code" : "8302-2"
          },
          {
            "code" : "29463-7"
          },
          {
            "code" : "39156-5"
          },
          {
            "code" : "85354-9"
          },
          {
            "code" : "8480-6"
          },
          {
            "code" : "8462-4"
          },
          {
            "code" : "8478-0"
          },
          {
            "code" : "72514-3"
          },
          {
            "code" : "9269-2"
          },
          {
            "code" : "15074-8"
          }
        ]
      }
    ]
  }
}

```
