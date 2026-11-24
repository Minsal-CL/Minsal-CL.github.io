# Ejemplo de una Búsqueda de Prestador Administrativo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de una Búsqueda de Prestador Administrativo**

## Example Bundle: Ejemplo de una Búsqueda de Prestador Administrativo



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjemploBusquedaAdm",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchProfHPD"]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner?_profile=StructureDefinition/MINSALPractitionerAdministrativo&identifier=90000000-6&birthdate=1980-01-01&given=Caludio&family=Parra"
  }],
  "entry" : [{
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Practitioner/EjemploPractiAdmin",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "EjemploPractiAdmin",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_EjemploPractiAdmin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional EjemploPractiAdmin</b></p><a name=\"EjemploPractiAdmin\"> </a><a name=\"hcEjemploPractiAdmin\"> </a><div style=\"display: inline-block; background-color: #fbffeb; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-MINSALPractitionerAdministrativo.html\">Prestador Administrativo</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Caludio Parra (official) (RUN: 90000000-6 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Administrative gender\">Gender:</td><td>Male</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Date of birth\">Date of Birth:</td><td colspan=\"3\">1980-01-01</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Practitioner\">Contact Detail</td><td colspan=\"3\">null (work)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Certification, licensure, or training pertaining to the provision of care\">Qualification:</td><td colspan=\"3\"><span title=\"Codes:\">Secretario</span><ul><li>Identifier: cert</li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }],
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }]
        },
        "value" : "90000000-6",
        "assigner" : {
          "display" : "Republica de Chile"
        }
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Parra",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Sandoval"
          }]
        },
        "given" : ["Caludio"]
      }],
      "address" : [{
        "use" : "work",
        "_state" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                "code" : "13",
                "display" : "Metropolitana de Santiago"
              }]
            }
          }]
        }
      }],
      "gender" : "male",
      "birthDate" : "1980-01-01",
      "qualification" : [{
        "identifier" : [{
          "value" : "cert"
        }],
        "code" : {
          "text" : "Secretario"
        }
      }]
    },
    "search" : {
      "mode" : "match"
    }
  }]
}

```
