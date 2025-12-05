# Tipos de Identificadores de Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipos de Identificadores de Paciente**

## ValueSet: Tipos de Identificadores de Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTiposIdentificadorPaciente | *Version*:0.4.9 |
| Active as of 2024-09-25 | *Computable Name*:VSTiposIdentificadorPaciente |

 
Tipos de Identificadores de Paciente 

 **References** 

* [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)
* [MINSAL Paciente Busqueda](StructureDefinition-MINSALPacienteBusqueda.md)

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
  "id" : "VSTiposIdentificadorPaciente",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSTiposIdentificadorPaciente",
  "version" : "0.4.9",
  "name" : "VSTiposIdentificadorPaciente",
  "title" : "Tipos de Identificadores de Paciente",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-25",
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
    }
  ],
  "description" : "Tipos de Identificadores de Paciente",
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
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
        "concept" : [
          {
            "code" : "1",
            "display" : "RUN"
          },
          {
            "code" : "2",
            "display" : "RUN Provisorio"
          },
          {
            "code" : "3",
            "display" : "RUN Madre"
          },
          {
            "code" : "4",
            "display" : "Número Folio"
          },
          {
            "code" : "5",
            "display" : "PPN"
          },
          {
            "code" : "6",
            "display" : "Documento de identificación del país de origen"
          },
          {
            "code" : "7",
            "display" : "Acta de nacimiento del país de origen"
          },
          {
            "code" : "8",
            "display" : "NIP"
          },
          {
            "code" : "10",
            "display" : "IPA"
          },
          {
            "code" : "11",
            "display" : "IPE"
          },
          {
            "code" : "12",
            "display" : "Número de Ficha Clínica Sistema Local"
          },
          {
            "code" : "14",
            "display" : "OTRO"
          }
        ]
      }
    ]
  }
}

```
