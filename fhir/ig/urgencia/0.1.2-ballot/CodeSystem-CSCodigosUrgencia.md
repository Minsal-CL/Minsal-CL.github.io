# Códigos de Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Códigos de Urgencia**

## CodeSystem: Códigos de Urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/CSCodigosUrgencia | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSCodigosUrgencia |

 
Códigos creados para registrar información dentro de la atención de urgencia 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCodigosUrgencia](ValueSet-VSCodigosUrgencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSCodigosUrgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/CSCodigosUrgencia",
  "version" : "0.1.2-ballot",
  "name" : "CSCodigosUrgencia",
  "title" : "Códigos de Urgencia",
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
  "description" : "Códigos creados para registrar información dentro de la atención de urgencia",
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
      "code" : "hosp-reciente",
      "display" : "Hospitalización Reciente",
      "definition" : "Código que indica si el paciente ha sido hospitalizado recientemente"
    },
    {
      "code" : "reconsulta",
      "display" : "Reconsulta",
      "definition" : "Se considera reconsulta si es que el paciente ha tenido un evento previo  en el período de 15-21 días"
    },
    {
      "code" : "ml-lesiones",
      "display" : "Informe ML Lesiones",
      "definition" : "Informe Médico Legal de lesiones"
    },
    {
      "code" : "ml-vs",
      "display" : "Informe ML Violencia Sexual",
      "definition" : "Informe Médico Legal de Violencia Sexual"
    },
    {
      "code" : "ml-cert",
      "display" : "Informe ML Certificado",
      "definition" : "Informe Médico Legal de Certificación de Riesgo Vital o Secuela Grave"
    }
  ]
}

```
