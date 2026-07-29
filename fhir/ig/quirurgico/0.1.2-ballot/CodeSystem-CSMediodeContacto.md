# Medio Notificación - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medio Notificación**

## CodeSystem: Medio Notificación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMediodeContacto | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSMediodeContacto |

 
Medio Notificación 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMediodeContacto](ValueSet-VSMediodeContacto.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMediodeContacto",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMediodeContacto",
  "version" : "0.1.2-ballot",
  "name" : "CSMediodeContacto",
  "title" : "Medio Notificación",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
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
  "description" : "Medio Notificación",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "1",
      "display" : "Correo electronico y/o carta certificada"
    },
    {
      "code" : "2",
      "display" : "SMS"
    },
    {
      "code" : "3",
      "display" : "Llamada"
    },
    {
      "code" : "4",
      "display" : "Whatsapp"
    },
    {
      "code" : "5",
      "display" : "Presencial"
    },
    {
      "code" : "6",
      "display" : "Otro"
    }
  ]
}

```
