# Origen del Directorio de Proveedores de Atención Médica - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Origen del Directorio de Proveedores de Atención Médica**

## CapabilityStatement: Origen del Directorio de Proveedores de Atención Médica 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source | *Version*:0.4.8 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NID_IHE_HPD_Manager |

 
El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas. 
* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso condicional del Perfil "Prestador Administrativo", "Prestador Individual" y "Prestador Organizacional"
 

 [Raw OpenAPI-Swagger Definition file](NID.IHE.HPD.Source.openapi.json) | [Download](NID.IHE.HPD.Source.openapi.json) 

## Origen del Directorio de Proveedores de Atención Médica

* Implementation Guide Version: 0.4.8 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`, `application/fhir+json`, `application/fhir+xml`
* Published on: 2024-09-25 15:50:00-0300 
* Published by: Unidad de Interoperabilidad - MINSAL 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHOULD Support the Following Implementation Guides

* [https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore|1.9.4](https://hl7chile.cl/fhir/ig/clcore/1.9.4/index.html)

## FHIR RESTful Capabilities

### Mode: client

El servidor de "Origen del Directorio de Proveedores de Atención Médica" permite generar nuevos y/o eliminar prestadores

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Practitioner](#Practitioner1-1) | Supported Profiles  [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)  [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md) |  |  | y? |  | y? |  |  |  |  |
| [Organization](#Organization1-2) | Supported Profiles  [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md) |  |  | y? |  | y? |  |  |  |  |

-------

#### Resource Conformance: SHALL Practitioner

Core FHIR Resource

[Practitioner](http://hl7.org/fhir/R4/practitioner.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)
[Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)

#### Resource Conformance: SHALL Organization

Core FHIR Resource

[Organization](http://hl7.org/fhir/R4/organization.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NID.IHE.HPD.Source",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source",
  "version" : "0.4.8",
  "name" : "NID_IHE_HPD_Manager",
  "title" : "Origen del Directorio de Proveedores de Atención Médica",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-09-25T15:50:00-03:00",
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
    }
  ],
  "description" : "El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso condicional del Perfil \\\"Prestador Administrativo\\\", \\\"Prestador Individual\\\" y \\\"Prestador Organizacional\\\"\n",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml", "application/fhir+json", "application/fhir+xml"],
  "implementationGuide" : [
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore|1.9.4"
  ],
  "_implementationGuide" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }
      ]
    }
  ],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "El servidor de \\\"Origen del Directorio de Proveedores de Atención Médica\\\" permite generar nuevos y/o eliminar prestadores ",
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Practitioner",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo",
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
          ],
          "_supportedProfile" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ]
            }
          ],
          "interaction" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "code" : "update"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "code" : "delete"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Organization",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
          ],
          "interaction" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "code" : "update"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "code" : "delete"
            }
          ]
        }
      ]
    }
  ]
}

```
