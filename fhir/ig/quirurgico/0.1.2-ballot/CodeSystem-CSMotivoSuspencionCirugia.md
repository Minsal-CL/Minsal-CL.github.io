# Motivo Suspensión Cirugía - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo Suspensión Cirugía**

## CodeSystem: Motivo Suspensión Cirugía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoSuspencionCirugia | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoSuspencionCirugia |

 
Motivo Suspensión Cirugía 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoSuspencionCirugia](ValueSet-VSMotivoSuspencionCirugia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoSuspencionCirugia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoSuspencionCirugia",
  "version" : "0.1.2-ballot",
  "name" : "CSMotivoSuspencionCirugia",
  "title" : "Motivo Suspensión Cirugía",
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
  "description" : "Motivo Suspensión Cirugía",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "1",
      "display" : "Paciente"
    },
    {
      "code" : "2",
      "display" : "Administrativas"
    },
    {
      "code" : "3",
      "display" : "Unidad de Apoyo Clínico"
    },
    {
      "code" : "4",
      "display" : "Equipo Quirúrgico"
    },
    {
      "code" : "5",
      "display" : "Infraestructura"
    },
    {
      "code" : "6",
      "display" : "Emergencias"
    },
    {
      "code" : "7",
      "display" : "Gremiales"
    }
  ]
}

```
