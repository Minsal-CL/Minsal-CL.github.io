# Rol de profesionales - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol de profesionales**

## CodeSystem: Rol de profesionales 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSPractitionerTipoRolLE |

 
CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la lista de espera quirúrgica 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPractitionerTipoRolLE](ValueSet-VSPractitionerTipoRolLE.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPractitionerTipoRolLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE",
  "version" : "0.1.2-ballot",
  "name" : "CSPractitionerTipoRolLE",
  "title" : "Rol de profesionales",
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
  "description" : "CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la lista de espera quirúrgica",
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
      "code" : "indicador",
      "display" : "Indicador",
      "definition" : "Médico cirujano u odontólogo con especialidad quirúrgica a cargo de realizar la indicación de cirugía, y la priorización. Actúa dentro del evento atender."
    },
    {
      "code" : "agendador",
      "display" : "Agendador",
      "definition" : "Profesional de enfermería / clínico o técnico de la salud a cargo de realizar el agendamiento de la entrevista prequirúrgica."
    },
    {
      "code" : "entrevistador",
      "display" : "Entrevistador",
      "definition" : "Profesional de enfermería o profesional clínico de la salud a cargo de realizar la encuesta prequirúrgica, exámenes prequirúrgicos, pases médicos cuando sean requeridos, así como realiza la indicación de los cuidados postoperatorios según el tipo de cirugía, definir si la cirugía será realizada en forma ambulatoria (CMA) o con el paciente hospitalizado (CMH) e informar al paciente de estas decisiones."
    },
    {
      "code" : "planificador",
      "display" : "Planificador",
      "definition" : "En el caso del agendamiento de la tabla quirúrgica será realizado para el profesional de enfermería encargada de los pabellones."
    },
    {
      "code" : "atendedor",
      "display" : "Atendedor",
      "definition" : "Primer cirujano a cargo de realizar la cirugía y todos los procedimientos a realizarse en el proceso."
    },
    {
      "code" : "terminador",
      "display" : "Terminador",
      "definition" : "Profesional Médico, no médico o administrativo a cargo de registrar la causal de egreso de la lista de espera quirúrgica."
    }
  ]
}

```
