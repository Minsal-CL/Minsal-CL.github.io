# Lesión Autoinflingida - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lesión Autoinflingida**

## CodeSystem: Lesión Autoinflingida 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/lesion-autoinflingida | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSLesionAutoinflingida |

 
Códigos de lesión autoinflingida 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSLesionAutoinflingida](ValueSet-lesion-autoinflingida.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lesion-autoinflingida",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/lesion-autoinflingida",
  "version" : "0.1.2-ballot",
  "name" : "CSLesionAutoinflingida",
  "title" : "Lesión Autoinflingida",
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
  "description" : "Códigos de lesión autoinflingida",
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
      "display" : "No"
    },
    {
      "code" : "2",
      "display" : "Sí, con intención suicida"
    },
    {
      "code" : "3",
      "display" : "Sí, sin intención suicida"
    },
    {
      "code" : "4",
      "display" : "No se puede determinar"
    }
  ]
}

```
