# Administrador del Directorio de Proveedores de Atención Médica - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Administrador del Directorio de Proveedores de Atención Médica**

## CapabilityStatement: Administrador del Directorio de Proveedores de Atención Médica 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Manager | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NID_IHE_HPD_Manager |

 
El CapabilityStatement del administador del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas. 
* Uso de FHIR R4
* Uso **PUEDE** devolver el recurso en JSON o XML
* **DEBE** Soportar Perfil "Prestador Administrativo", "Prestador Individual" y "Prestador Organizacional"
* Los parámetros de búsquedas de los Perfiles Practitioner **DEBEN** ser: 
* _id
* identifier
* family
* given
* identifier
 
* Los parámetros de búsquedas del Perfil Organization **DEBEN** ser: 
* _id
* identifier
* name
 
 

 [Raw OpenAPI-Swagger Definition file](NID.IHE.HPD.Manager.openapi.json) | [Download](NID.IHE.HPD.Manager.openapi.json) 

## Administrador del Directorio de Proveedores de Atención Médica

* Implementation Guide Version: 0.4.9 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`, `application/fhir+json`, `application/fhir+xml`
* Published on: 2024-09-25 15:50:00-0300 
* Published by: Unidad de Interoperabilidad - MINSAL 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHOULD Support the Following Implementation Guides

* [https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore](https://hl7chile.cl/fhir/ig/clcore/1.9.4/index.html)

## FHIR RESTful Capabilities

### Mode: server

El servidor de Administrador del Directorio de Proveedores de Atención Médica. Permite almacenar de manera segura e inequivoca tanto de los proveedores adminitrativos, institucionale e individuales.

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
| [Practitioner](#Practitioner1-1) | Supported Profiles  [Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)  [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md) | **Y** | **Y** | **Y** |  | **Y** | _id, active, given, given:exact, identifier, family, family:exact |  |  |  |
| [Organization](#Organization1-2) | Supported Profiles  [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md) | **Y** | **Y** | **Y** |  | **Y** | _id, identifier, active, name, name:exact |  |  |  |

-------

#### Resource Conformance: SHALL Practitioner

Core FHIR Resource

[Practitioner](http://hl7.org/fhir/R4/practitioner.html)

Reference Policy

Interaction summary

* **SHALL** support `search-type`, `update`, `delete`, `read`.

Supported Profiles
[Prestador Administrativo](StructureDefinition-MINSALPractitionerAdministrativo.md)
[Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)

Search Parameters


 

#### Resource Conformance: SHALL Organization

Core FHIR Resource

[Organization](http://hl7.org/fhir/R4/organization.html)

Reference Policy

Interaction summary

* **SHALL** support `search-type`, `read`, `update`, `delete`.

Supported Profiles
[Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)

Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NID.IHE.HPD.Manager",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Manager",
  "version" : "0.4.9",
  "name" : "NID_IHE_HPD_Manager",
  "title" : "Administrador del Directorio de Proveedores de Atención Médica",
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
  "description" : "El CapabilityStatement del administador del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso **PUEDE** devolver el recurso en JSON o XML\n* **DEBE** Soportar Perfil \\\"Prestador Administrativo\\\", \\\"Prestador Individual\\\" y \\\"Prestador Organizacional\\\"\n* Los parámetros de búsquedas de los Perfiles Practitioner **DEBEN** ser:\n  * _id\n  * identifier\n  * family\n  * given\n  * identifier\n* Los parámetros de búsquedas del Perfil Organization **DEBEN** ser:\n  * _id\n  * identifier\n  * name",
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
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore"
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
      "mode" : "server",
      "documentation" : "El servidor de Administrador del Directorio de Proveedores de Atención Médica. Permite almacenar de manera segura e inequivoca tanto de los proveedores adminitrativos, institucionale e individuales. ",
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
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "search-type"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "update"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "delete"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "read"
            }
          ],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico del Profesional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-active",
              "type" : "token",
              "documentation" : "Si el registro del profesional está activo."
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Nombre(s) del profesional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "given:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Nombre(s) del profesional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
              "type" : "token",
              "documentation" : "Un identificador del profesional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Primer apellido del profesional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "family:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Primer apellido del profesional"
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
          "_supportedProfile" : [
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
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "search-type"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "read"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "update"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "code" : "delete"
            }
          ],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico del Profesional Institucional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token",
              "documentation" : "Identificador del Profesional Institucional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-active",
              "type" : "token",
              "documentation" : "Si el registro del profesional está activo."
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string",
              "documentation" : "Nombre o alias del Profesional Institucional"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "name:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string",
              "documentation" : "Nombre o alias del Profesional Institucional exacto"
            }
          ]
        }
      ]
    }
  ]
}

```
