# Ley Previsional - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ley Previsional**

## CodeSystem: Ley Previsional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/LeyPrevisional | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSLeyPrevisional |

 
Códigos para la ley previsional 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSLeyPrevisional](ValueSet-LeyPrevisional.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LeyPrevisional",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/LeyPrevisional",
  "version" : "0.1.2-ballot",
  "name" : "CSLeyPrevisional",
  "title" : "Ley Previsional",
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
  "description" : "Códigos para la ley previsional",
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
  "count" : 10,
  "concept" : [
    {
      "code" : "1",
      "display" : "Ley Nº18.490:  Accidentes de Transporte"
    },
    {
      "code" : "2",
      "display" : "Ley Nº 16.744: Accidentes del Trabajo y Enfermedades Profesionales"
    },
    {
      "code" : "3",
      "display" : "Ley Nº 16.744: Accidente Escolar"
    },
    {
      "code" : "4",
      "display" : "Ley Nº 19.650/99 de Urgencia"
    },
    {
      "code" : "5",
      "display" : "Ley 19.992 PRAIS"
    },
    {
      "code" : "6",
      "display" : "Ley Nº 19.966 Régimen General de Garantías en Salud GES"
    },
    {
      "code" : "7",
      "display" : "Ley Nº20.850  Ricarte Soto"
    },
    {
      "code" : "8",
      "display" : "Ley N° 21.030 de Despenalización de la Interrupción Voluntaria del Embarazo en Tres Causales."
    },
    {
      "code" : "96",
      "display" : "Ninguna"
    },
    {
      "code" : "97",
      "display" : "No Recuerda"
    }
  ]
}

```
