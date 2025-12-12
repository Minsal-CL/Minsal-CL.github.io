# Profesional Anatopatologó - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional Anatopatologó**

## Example Practitioner: Profesional Anatopatologó

Profile: [Prestador Profesional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPrestadorProfesional.html)

**identifier**: RUN/19283789-2 (use: official, )

**name**: Patricia Gutierrez 

**gender**: Female

**birthDate**: 1983-11-18

> **qualification****identifier**: cert**code**:MÉDICO CIRUJANO

> **qualification****identifier**: esp**code**:MEDICINA INTERNA

> **qualification****identifier**: subesp**code**:ANATOMÍA PATOLÓGICA



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "profesional-hospital-anatopatologo",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }
        ]
      },
      "value" : "19283789-2"
    }
  ],
  "name" : [
    {
      "family" : "Gutierrez",
      "given" : ["Patricia"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1983-11-18",
  "qualification" : [
    {
      "identifier" : [
        {
          "value" : "cert"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          }
        ],
        "text" : "MÉDICO CIRUJANO"
      }
    },
    {
      "identifier" : [
        {
          "value" : "esp"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
            "code" : "30",
            "display" : "MEDICINA INTERNA"
          }
        ],
        "text" : "MEDICINA INTERNA"
      }
    },
    {
      "identifier" : [
        {
          "value" : "subesp"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
            "code" : "1",
            "display" : "ANATOMÍA PATOLÓGICA"
          }
        ],
        "text" : "ANATOMÍA PATOLÓGICA"
      }
    }
  ]
}

```
