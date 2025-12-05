# Profesional de Salud de Ejemplo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Profesional de Salud de Ejemplo**

## Example Practitioner: Profesional de Salud de Ejemplo

Profile: [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)

**identifier**: Rol Único Nacional/19949350-7 (use: official, ), Registro Nacional de Prestadores Individuales/1234543 (use: secondary, )

**active**: true

**name**: María Gonzalez 

**gender**: Female

**birthDate**: 1991-04-01

> **qualification****identifier**: cert**code**:MÉDICO CIRUJANO**period**: 2007-11-01 --> (ongoing)**issuer**: Universidad de Chile

> **qualification****identifier**: esp**code**:MEDICINA INTERNA**period**: 2010-11-01 --> (ongoing)**issuer**: Pontificia Universidad Católica de Chile

> **qualification****Mención profesional añadida al título profesional**: Linfoma**identifier**: subesp**code**:HEMATOLOGÍA**period**: 2014-11-01 --> (ongoing)**issuer**: Universidad de Valparaíso



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "EjemploPractiProf",
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
        ],
        "text" : "Rol Único Nacional"
      },
      "value" : "19949350-7",
      "assigner" : {
        "display" : "Republica de Chile"
      }
    },
    {
      "use" : "secondary",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "13",
            "display" : "RNPI"
          }
        ],
        "text" : "Registro Nacional de Prestadores Individuales"
      },
      "value" : "1234543",
      "assigner" : {
        "display" : "Intendencia de prestadores individuales - Superintendencia de Salud"
      }
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Gonzalez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Gutierrez"
          }
        ]
      },
      "given" : ["María"],
      "prefix" : ["Dra"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1991-04-01",
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
      },
      "period" : {
        "start" : "2007-11-01"
      },
      "issuer" : {
        "display" : "Universidad de Chile"
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
      },
      "period" : {
        "start" : "2010-11-01"
      },
      "issuer" : {
        "display" : "Pontificia Universidad Católica de Chile"
      }
    },
    {
      "extension" : [
        {
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion",
          "valueString" : "Linfoma"
        }
      ],
      "identifier" : [
        {
          "value" : "subesp"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
            "code" : "23",
            "display" : "HEMATOLOGÍA"
          }
        ],
        "text" : "HEMATOLOGÍA"
      },
      "period" : {
        "start" : "2014-11-01"
      },
      "issuer" : {
        "display" : "Universidad de Valparaíso"
      }
    }
  ]
}

```
