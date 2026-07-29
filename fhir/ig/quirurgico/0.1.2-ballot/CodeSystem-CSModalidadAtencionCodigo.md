# Modalidad Atencion Codigo - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modalidad Atencion Codigo**

## CodeSystem: Modalidad Atencion Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSModalidadAtencionCodigo |

 
Modalidad Atencion Codigo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSModalidadAtencionCodigo](ValueSet-VSModalidadAtencionCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSModalidadAtencionCodigo",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo",
  "version" : "0.1.2-ballot",
  "name" : "CSModalidadAtencionCodigo",
  "title" : "Modalidad Atencion Codigo",
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
  "description" : "Modalidad Atencion Codigo",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "1",
      "display" : "Presencial"
    },
    {
      "code" : "2",
      "display" : "Remota"
    },
    {
      "code" : "3",
      "display" : "Telemedicina"
    }
  ]
}

```
