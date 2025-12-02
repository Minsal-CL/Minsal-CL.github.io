# Ejemplo de una Búsqueda de Prestador Administrativo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de una Búsqueda de Prestador Administrativo**

## Example Bundle: Ejemplo de una Búsqueda de Prestador Administrativo

Profile: [MINSAL Bundle Resultado Consulta: Prestadores Profesional y Administrativos](StructureDefinition-BundleSearchProfHPD.md)

Bundle EjemploBusquedaAdm of type searchset

-------

Entry 1 - fullUrl = https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner/EjemploPractiAdmin

Búsqueda:Mode = match

Rec}:

> 

Profile: [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)

**identifier**: RUN/90000000-6 (use: official, )**active**: true**name**: Caludio Parra (Official)**gender**: Male**birthDate**: 1980-01-01**address**: null (work)

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | Secretario |




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjemploBusquedaAdm",
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
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner?_profile=StructureDefinition/MINSALPractitionerAdministrativo&identifier=90000000-6&birthdate=1980-01-01&given=Caludio&family=Parra"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner/EjemploPractiAdmin",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "EjemploPractiAdmin",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_EjemploPractiAdmin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional EjemploPractiAdmin</b></p><a name=\"EjemploPractiAdmin\"> </a><a name=\"hcEjemploPractiAdmin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MINSALPractitionerAdministrativo.html\">Prestador Administrativo</a></p></div><p><b>identifier</b>: RUN/90000000-6 (use: official, )</p><p><b>active</b>: true</p><p><b>name</b>: Caludio Parra (Official)</p><p><b>address</b>: null (work)</p><p><b>gender</b>: Male</p><p><b>birthDate</b>: 1980-01-01</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:\">Secretario</span></td></tr></table></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "type" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "urn:iso:std:iso:3166",
                        "code" : "152",
                        "display" : "Chile"
                      }
                    ]
                  }
                }
              ],
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
                  "code" : "01",
                  "display" : "RUN"
                }
              ]
            },
            "value" : "90000000-6",
            "assigner" : {
              "display" : "Republica de Chile"
            }
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Parra",
            "_family" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
                  "valueString" : "Sandoval"
                }
              ]
            },
            "given" : ["Caludio"]
          }
        ],
        "address" : [
          {
            "use" : "work",
            "_state" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                        "code" : "13",
                        "display" : "Metropolitana de Santiago"
                      }
                    ]
                  }
                }
              ]
            }
          }
        ],
        "gender" : "male",
        "birthDate" : "1980-01-01",
        "qualification" : [
          {
            "identifier" : [
              {
                "value" : "cert"
              }
            ],
            "code" : {
              "text" : "Secretario"
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
