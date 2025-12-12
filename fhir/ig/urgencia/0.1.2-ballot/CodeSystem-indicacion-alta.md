# Indicación Alta - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indicación Alta**

## CodeSystem: Indicación Alta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/indicacion-alta | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSIndicacionAlta |

 
Códigos asociados al destino de alta dados por parte del profesional médico al usuario posterior a su atención de urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSIndicacionAlta](ValueSet-indicacion-alta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "indicacion-alta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/indicacion-alta",
  "version" : "0.1.2-ballot",
  "name" : "CSIndicacionAlta",
  "title" : "Indicación Alta",
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
  "description" : "Códigos asociados al destino de alta dados por parte del profesional médico al usuario posterior a su atención de urgencia.",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "1",
      "display" : "Alta a domicilio"
    },
    {
      "code" : "2",
      "display" : "Alta a residencia (Servicio Mejor Niñez, SENAME, ELEAM, Hospital de Día"
    },
    {
      "code" : "3",
      "display" : "Alta con escolta policial (Carabineros, PDI, Gendarmería)"
    },
    {
      "code" : "4",
      "display" : "Otra"
    }
  ]
}

```
