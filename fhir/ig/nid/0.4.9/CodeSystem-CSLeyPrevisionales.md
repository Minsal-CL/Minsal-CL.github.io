# Leyes Previsionales - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Leyes Previsionales**

## CodeSystem: Leyes Previsionales 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyPrevisionales | *Version*:0.4.9 |
| Active as of 2023-01-15 | *Computable Name*:CSLeyPrevisionales |

 
Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSLeyPrevisionales](ValueSet-VSLeyPrevisionales.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSLeyPrevisionales",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyPrevisionales",
  "version" : "0.4.9",
  "name" : "CSLeyPrevisionales",
  "title" : "Leyes Previsionales",
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
    }
  ],
  "description" : "Código asociados a Leyes Previsonales que modifican o eximen los montos de copagos de las prestaciones específica, señaladas en la ley respectiva",
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
  "count" : 9,
  "concept" : [
    {
      "code" : "1",
      "display" : "Ley Nº18.490: Accidentes de Transporte"
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
      "code" : "6",
      "display" : "Ley Nº 19.966 Régimen General de Garantías en Salud GES"
    },
    {
      "code" : "7",
      "display" : "Ley Nº20.850 Ricarte Soto"
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
      "display" : "No recuerda"
    }
  ]
}

```
