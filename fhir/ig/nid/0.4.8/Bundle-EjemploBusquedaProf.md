# Ejemplo de una Búsqueda de Prestador Profesional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de una Búsqueda de Prestador Profesional**

## Example Bundle: Ejemplo de una Búsqueda de Prestador Profesional

Profile: [MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos](StructureDefinition-BundleSearchProfHPD.md)

Bundle EjemploBusquedaProf of type searchset

-------

Entry 1 - fullUrl = https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner/EjemploPractiProf

Búsqueda:Mode = match

Rec}:

> 

Profile: [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)

**identifier**: Rol Único Nacional/19949350-7 (use: official, ), Registro Nacional de Prestadores Individuales/1234543 (use: secondary, )**active**: true**name**: María Gonzalez**gender**: Female**birthDate**: 1991-04-01
> **qualification****identifier**: cert**code**:MÉDICO CIRUJANO**period**: 2007-11-01 --> (ongoing)**issuer**: Universidad de Chile

> **qualification****identifier**: esp**code**:MEDICINA INTERNA**period**: 2010-11-01 --> (ongoing)**issuer**: Pontificia Universidad Católica de Chile

> **qualification****Mención profesional añadida al título profesional**: Linfoma**identifier**: subesp**code**:HEMATOLOGÍA**period**: 2014-11-01 --> (ongoing)**issuer**: Universidad de Valparaíso



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjemploBusquedaProf",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD"
    ]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner?_profile=StructureDefinition/MINSALPrestadorProfesional&identifier=19949350-7&birthdate=1991-04-01&given=María&family=Gonzalez"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner/EjemploPractiProf",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "EjemploPractiProf",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_EjemploPractiProf\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional EjemploPractiProf</b></p><a name=\"EjemploPractiProf\"> </a><a name=\"hcEjemploPractiProf\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MINSALPrestadorProfesional.html\">Prestador Profesional</a></p></div><p><b>identifier</b>: Rol Único Nacional/19949350-7 (use: official, ), Registro Nacional de Prestadores Individuales/1234543 (use: secondary, )</p><p><b>active</b>: true</p><p><b>name</b>: María Gonzalez </p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1991-04-01</p><blockquote><p><b>qualification</b></p><p><b>identifier</b>: cert</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></p><p><b>period</b>: 2007-11-01 --&gt; (ongoing)</p><p><b>issuer</b>: Universidad de Chile</p></blockquote><blockquote><p><b>qualification</b></p><p><b>identifier</b>: esp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed 30}\">MEDICINA INTERNA</span></p><p><b>period</b>: 2010-11-01 --&gt; (ongoing)</p><p><b>issuer</b>: Pontificia Universidad Católica de Chile</p></blockquote><blockquote><p><b>qualification</b></p><p><b>Mención profesional añadida al título profesional</b>: Linfoma</p><p><b>identifier</b>: subesp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed 23}\">HEMATOLOGÍA</span></p><p><b>period</b>: 2014-11-01 --&gt; (ongoing)</p><p><b>issuer</b>: Universidad de Valparaíso</p></blockquote></div>"
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
      },
      "search" : {
        "mode" : "match"
      }
    }
  ]
}

```
