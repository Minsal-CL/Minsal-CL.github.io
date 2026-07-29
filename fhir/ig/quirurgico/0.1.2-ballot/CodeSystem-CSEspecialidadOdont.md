# Especialidades Odontológicas - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades Odontológicas**

## CodeSystem: Especialidades Odontológicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEspecialidadOdont | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadOdont |

 
Especialidades Odontológicas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadOdont](ValueSet-VSEspecialidadOdont.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadOdont",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEspecialidadOdont",
  "version" : "0.1.2-ballot",
  "name" : "CSEspecialidadOdont",
  "title" : "Especialidades Odontológicas",
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
  "description" : "Especialidades Odontológicas",
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
      "display" : "Cirugía y Traumatología Buco Maxilofacial"
    },
    {
      "code" : "2",
      "display" : "Cirugía Bucal"
    },
    {
      "code" : "3",
      "display" : "Endodoncia"
    },
    {
      "code" : "4",
      "display" : "Imagenología Oral y Maxilofacial"
    },
    {
      "code" : "5",
      "display" : "Implantología Buco Maxilofacial"
    },
    {
      "code" : "6",
      "display" : "Odontología legal"
    },
    {
      "code" : "7",
      "display" : "Odontopediatría"
    },
    {
      "code" : "8",
      "display" : "Ortodoncia y Ortopedia Dento Máxilo Facial"
    },
    {
      "code" : "9",
      "display" : "Patología Oral"
    },
    {
      "code" : "10",
      "display" : "Periodoncia"
    },
    {
      "code" : "11",
      "display" : "Rehabilitación Oral"
    },
    {
      "code" : "12",
      "display" : "Salud Pública"
    },
    {
      "code" : "13",
      "display" : "Somato-Prótesis"
    },
    {
      "code" : "14",
      "display" : "Trastornos Temporomandibulares Y Dolor Orofacial"
    }
  ]
}

```
