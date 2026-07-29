# Unidad Hospitalaria Destino - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unidad Hospitalaria Destino**

## CodeSystem: Unidad Hospitalaria Destino 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-hospitalaria-destino | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSUnidadHospitalariaDestino |

 
Códigos asociados a Unidad Funcional de destino si es que el paciente requiere hospitalización en el mismo establecimiento. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSUnidadHospitalariaDestino](ValueSet-unidad-hospitalaria-destino.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "unidad-hospitalaria-destino",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-hospitalaria-destino",
  "version" : "0.1.2-ballot",
  "name" : "CSUnidadHospitalariaDestino",
  "title" : "Unidad Hospitalaria Destino",
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
  "description" : "Códigos asociados a Unidad Funcional de destino si es que el paciente requiere hospitalización en el mismo establecimiento.",
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
  "count" : 29,
  "concept" : [
    {
      "code" : "401",
      "display" : "Área Médica Adulto Cuidados Básicos"
    },
    {
      "code" : "402",
      "display" : "Área Médica Adulto Cuidados Medios"
    },
    {
      "code" : "403",
      "display" : "Área Médico-Quirúrgico Cuidados Básicos"
    },
    {
      "code" : "404",
      "display" : "Área Médico-Quirúrgico Cuidados Medios"
    },
    {
      "code" : "405",
      "display" : "Área Cuidados Intensivos Adultos"
    },
    {
      "code" : "406",
      "display" : "Área Cuidados Intermedios Adultos"
    },
    {
      "code" : "407",
      "display" : "Área Médica Pediátrica Cuidados Básicos"
    },
    {
      "code" : "408",
      "display" : "Área Médica Pediátrica Cuidados Medios"
    },
    {
      "code" : "409",
      "display" : "Área Médico-Quirúrgico Pediátrica Cuidados Básicos"
    },
    {
      "code" : "410",
      "display" : "Área Médico-Quirúrgico Pediátrica Cuidados Medios"
    },
    {
      "code" : "411",
      "display" : "Área Cuidados Intensivos Pediátricos"
    },
    {
      "code" : "412",
      "display" : "Área Cuidados Intermedios Pediátricos"
    },
    {
      "code" : "413",
      "display" : "Área Neonatología Cuidados Básicos"
    },
    {
      "code" : "414",
      "display" : "Área Neonatología Cuidados Intensivos"
    },
    {
      "code" : "415",
      "display" : "Área Neonatología Cuidados Intermedios"
    },
    {
      "code" : "416",
      "display" : "Área Obstetricia"
    },
    {
      "code" : "330",
      "display" : "Área Pensionado"
    },
    {
      "code" : "418",
      "display" : "Área Psiquiatría Adulto Corta estadía"
    },
    {
      "code" : "419",
      "display" : "Área Psiquiatría Adulto Mediana estadía"
    },
    {
      "code" : "420",
      "display" : "Área Psiquiatría Adulto Larga estadía"
    },
    {
      "code" : "421",
      "display" : "Área Psiquiatría Infanto-adolescente corta estadía"
    },
    {
      "code" : "422",
      "display" : "Área Psiquiatría Infanto-adolescente mediana estadía"
    },
    {
      "code" : "423",
      "display" : "Área Psiquiatría Forense Adulto evaluación e inicio tto."
    },
    {
      "code" : "424",
      "display" : "Área Psiquiatría Forense Adulto tratamiento"
    },
    {
      "code" : "425",
      "display" : "Área Psiquiatría Forense Infanto Adolescente evaluación e inicio tto."
    },
    {
      "code" : "426",
      "display" : "Área Psiquiatría Forense Infanto Adolescente tratamiento"
    },
    {
      "code" : "427",
      "display" : "Área Sociosanitaria Adulto"
    },
    {
      "code" : "428",
      "display" : "Área de Hospitalización de Cuidados Intensivos en Psiquiatría Adulto"
    },
    {
      "code" : "429",
      "display" : "Área de Hospitalización de Cuidados Intensivos en Psiquiatría Infanto Adolescente"
    }
  ]
}

```
