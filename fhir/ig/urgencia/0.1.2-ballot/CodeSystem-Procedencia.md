# Procedencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedencia**

## CodeSystem: Procedencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/Procedencia | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSProcedencia |

 
Corresponde al lugar físico desde donde proviene el paciente cuando consulta en un servicio de atención de urgencia 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSProcedencia](ValueSet-Procedencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "Procedencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/Procedencia",
  "version" : "0.1.2-ballot",
  "name" : "CSProcedencia",
  "title" : "Procedencia",
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
  "description" : "Corresponde al lugar físico desde donde proviene el paciente cuando consulta en un servicio de atención de urgencia",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "1",
      "display" : "Referido de Unidad de Emergencia"
    },
    {
      "code" : "2",
      "display" : "Referido de APS"
    },
    {
      "code" : "3",
      "display" : "Referido de atención de especialidades"
    },
    {
      "code" : "4",
      "display" : "Referido de establecimientos No Pertenecientes al SNSS"
    },
    {
      "code" : "5",
      "display" : "SAPU"
    },
    {
      "code" : "6",
      "display" : "SAR"
    },
    {
      "code" : "7",
      "display" : "SUR"
    },
    {
      "code" : "8",
      "display" : "Vía Pública"
    },
    {
      "code" : "9",
      "display" : "Domicilio"
    },
    {
      "code" : "10",
      "display" : "Referido desde Hospitalización Domiciliaria"
    },
    {
      "code" : "11",
      "display" : "Referido desde entidad de seguridad pública"
    },
    {
      "code" : "12",
      "display" : "Referido de Programa de Servicio de Protección Especializada Mejor Niñez"
    },
    {
      "code" : "13",
      "display" : "Referido de Servicio Nacional de Menores (SENAME)"
    },
    {
      "code" : "99",
      "display" : "Desconocido"
    }
  ]
}

```
