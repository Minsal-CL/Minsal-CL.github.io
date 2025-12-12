# Especialidad Odontológica - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidad Odontológica**

## CodeSystem: Especialidad Odontológica 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/especialidad-odontologica | *Version*:0.1.2-ballot |
| Active as of 2025-12-10 | *Computable Name*:CSEspecialidadOdontologica |

 
Especialidades odontológicas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadOdontologica](ValueSet-especialidad-odontologica.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "especialidad-odontologica",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/especialidad-odontologica",
  "version" : "0.1.2-ballot",
  "name" : "CSEspecialidadOdontologica",
  "title" : "Especialidad Odontológica",
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
  "description" : "Especialidades odontológicas",
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
