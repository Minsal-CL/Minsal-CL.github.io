# Tipo Egreso - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo Egreso**

## CodeSystem: Tipo Egreso 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/tipo-egreso | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSTipoEgreso |

 
Corresponde a códigos asociados a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoEgreso](ValueSet-tipo-egreso.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-egreso",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/tipo-egreso",
  "version" : "0.1.2-ballot",
  "name" : "CSTipoEgreso",
  "title" : "Tipo Egreso",
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
  "description" : "Corresponde a códigos asociados a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia. ",
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
      "display" : "Hospitalización"
    },
    {
      "code" : "2",
      "display" : "Traslado a otra Unidad Hospitalaria"
    },
    {
      "code" : "3",
      "display" : "Alta"
    },
    {
      "code" : "4",
      "display" : "Derivación o traslado a otro centro"
    },
    {
      "code" : "5",
      "display" : "Abandono"
    },
    {
      "code" : "6",
      "display" : "Fallecido"
    }
  ]
}

```
