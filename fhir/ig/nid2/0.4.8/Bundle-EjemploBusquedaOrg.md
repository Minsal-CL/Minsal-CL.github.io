# Ejemplo de una Búsqueda de Prestador Institucional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Ejemplo de una Búsqueda de Prestador Institucional**

## Example Bundle: Ejemplo de una Búsqueda de Prestador Institucional

Profile: [MINSAL Bundle Resultado Consulta: Prestadores Institucinales](StructureDefinition-BundleSearchINSHPD.md)

Bundle EjemploBusquedaOrg of type searchset

-------

Entry 1 - fullUrl = https://interoperabilidad.minsal.cl/fhir/ig/nid/Organization/OrganizationLEEjemplo

Búsqueda:Mode = match

Rec}:

> 

Profile: [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)

**identifier**:`https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino`/120101**name**: Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)**alias**: Hospital de Los Ángeles

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | ph: (+56) 432336000 | Ricardo Vicuña 147 Los Ángeles 4451055 Chile |




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjemploBusquedaOrg",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/BundleSearchINSHPD"
    ]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Organization?identifier=120101&name=Hospital"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/Organization/OrganizationLEEjemplo",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "OrganizationLEEjemplo",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_OrganizationLEEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización OrganizationLEEjemplo</b></p><a name=\"OrganizationLEEjemplo\"> </a><a name=\"hcOrganizationLEEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MINSALPrestadorOrganizacional.html\">Prestador Institucional</a></p></div><p><b>identifier</b>: <code>https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino</code>/120101</p><p><b>name</b>: Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)</p><p><b>alias</b>: Hospital de Los Ángeles</p><p><b>telecom</b>: ph: (+56) 432336000</p><p><b>address</b>: Ricardo Vicuña 147 Los Ángeles 4451055 Chile </p></div>"
        },
        "identifier" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
            "value" : "120101"
          }
        ],
        "name" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
        "alias" : ["Hospital de Los Ángeles"],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "(+56) 432336000"
          }
        ],
        "address" : [
          {
            "line" : ["Ricardo Vicuña 147"],
            "city" : "Los Ángeles",
            "_city" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                        "code" : "08301",
                        "display" : "Los Ángeles"
                      }
                    ]
                  }
                }
              ]
            },
            "postalCode" : "4451055",
            "country" : "Chile",
            "_country" : {
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
              ]
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
