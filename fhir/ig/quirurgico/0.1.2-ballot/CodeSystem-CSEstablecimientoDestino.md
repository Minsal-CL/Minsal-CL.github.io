# Establecimiento Destino Código - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento Destino Código**

## CodeSystem: Establecimiento Destino Código 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEstablecimientoDestino | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSEstablecimientoDestino |

 
Establecimiento destino código ejemplos hechos en base a este documento con los[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEstablecimientoDestino](ValueSet-VSEstablecimientoDestino.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEstablecimientoDestino",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEstablecimientoDestino",
  "version" : "0.1.2-ballot",
  "name" : "CSEstablecimientoDestino",
  "title" : "Establecimiento Destino Código",
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
  "description" : "Establecimiento destino código ejemplos hechos en base a este documento con los [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "200556",
      "display" : "Hospital Digital"
    },
    {
      "code" : "201435",
      "display" : "Departamento de Asistencia Remota en Salud"
    },
    {
      "code" : "133558",
      "display" : "Posta de Salud Rural Inio"
    },
    {
      "code" : "133529",
      "display" : "Posta de Salud Rural Piedras Blancas"
    },
    {
      "code" : "133527",
      "display" : "Posta de Salud Rural Punta Liles o Laitec"
    }
  ]
}

```
