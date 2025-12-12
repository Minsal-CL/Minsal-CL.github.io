# Motivo No Contactabilidad - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo No Contactabilidad**

## CodeSystem: Motivo No Contactabilidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoNoContactabilidad | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoNoContactabilidad |

 
Motivo No Contactabilidad 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoNoContactabilidad](ValueSet-VSMotivoNoContactabilidad.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoNoContactabilidad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoNoContactabilidad",
  "version" : "0.1.2-ballot",
  "name" : "CSMotivoNoContactabilidad",
  "title" : "Motivo No Contactabilidad",
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
  "description" : "Motivo No Contactabilidad",
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
      "display" : "No contesta teléfono."
    },
    {
      "code" : "2",
      "display" : "No contesta correo"
    },
    {
      "code" : "3",
      "display" : "Datos de contactos incorrectos"
    },
    {
      "code" : "4",
      "display" : "Otro"
    }
  ]
}

```
