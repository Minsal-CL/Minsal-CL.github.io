# Medio de Llegada - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medio de Llegada**

## CodeSystem: Medio de Llegada 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/MedioDeLlegada | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSMedioDeLlegada |

 
Corresponde a las posibles formas de llegada de un paciente a un servicio de atención de urgencia 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMedioDeLlegada](ValueSet-MedioDeLlegada.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MedioDeLlegada",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/MedioDeLlegada",
  "version" : "0.1.2-ballot",
  "name" : "CSMedioDeLlegada",
  "title" : "Medio de Llegada",
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
  "description" : "Corresponde a las posibles formas de llegada de un paciente a un servicio de atención de urgencia",
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
      "display" : "Ambulancia SAMU"
    },
    {
      "code" : "2",
      "display" : "Ambulancia APS"
    },
    {
      "code" : "3",
      "display" : "Otra Ambulancia"
    },
    {
      "code" : "4",
      "display" : "Vehículo de Carabineros o PDI."
    },
    {
      "code" : "5",
      "display" : "Vehículo particular"
    },
    {
      "code" : "6",
      "display" : "Transporte marítimo"
    },
    {
      "code" : "7",
      "display" : "Transporte aéreo"
    },
    {
      "code" : "8",
      "display" : "Otros vehículos no motorizados"
    },
    {
      "code" : "9",
      "display" : "A pie"
    },
    {
      "code" : "10",
      "display" : "Gendarmería"
    },
    {
      "code" : "11",
      "display" : "Bomberos"
    },
    {
      "code" : "12",
      "display" : "Transporte público"
    },
    {
      "code" : "13",
      "display" : "Otros"
    },
    {
      "code" : "99",
      "display" : "Desconocido"
    }
  ]
}

```
