# Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)" - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)"**

## CapabilityStatement: Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)" 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_IHE_PDQm_Search_Cliente |

 
El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes. 
* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Soportar Perfil MINSAL Paciente
* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
* Los parámetros de búsquedas **PUEDEN** ser: 
* _id
* active
* family
* given
* identifier
* segundo-apellido
 
* **PUEDE** soportar los _revinclude que permitan traer la información adicional requerida.
 

 [Raw OpenAPI-Swagger Definition file](MPI.IHE.PDQm.Search.Cliente.openapi.json) | [Download](MPI.IHE.PDQm.Search.Cliente.openapi.json) 

## Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm)"

* Implementation Guide Version: 0.4.9 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`, `application/fhir+json`, `application/fhir+xml`
* Published on: 2024-08-07 09:44:00-0300 
* Published by: Unidad de Interoperabilidad - MINSAL 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHOULD Support the Following Implementation Guides

* [https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore](https://hl7chile.cl/fhir/ig/clcore/1.9.4/index.html)
* [https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm](https://profiles.ihe.net/ITI/PDQm/3.2.0/index.html)

## FHIR RESTful Capabilities

### Mode: client

El Proveedor de Demografía del Indice Maestro Paciente (PDQm) ofrece la capacidad de descubrir Identidades de Pacientes mediante demografía e identidades.

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | Supported Profiles  [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) | y? | y? |  |  | _id, active, given, identifier, family, segundo-apellido |  | `Coverage:beneficiary`,`Group:member`,`Observation:subject`,`RelatedPerson:patient` |  |

-------

#### Resource Conformance: SHALL Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* **MAY** support `search-type`, `read`.

Supported Profiles
[MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MPI.IHE.PDQm.Search.Cliente",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente",
  "version" : "0.4.9",
  "name" : "MPI_IHE_PDQm_Search_Cliente",
  "title" : "Indice Maestro Paciente: \"Cliente Buscador de Datos Demográficos (PDQm)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-08-07T09:44:00-03:00",
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
  "description" : "El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes.\n\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Soportar Perfil MINSAL Paciente\n* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida. \n* Los parámetros de búsquedas **PUEDEN** ser:\n  * _id\n  * active\n  * family\n  * given\n  * identifier\n  * segundo-apellido\n* **PUEDE** soportar los _revinclude que permitan traer la información adicional requerida.",
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
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
    "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm"
  ],
  "_implementationGuide" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }
      ]
    },
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
      "documentation" : "El Proveedor de Demografía del Indice Maestro Paciente (PDQm) ofrece la capacidad de descubrir Identidades de Pacientes mediante demografía e identidades.",
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Patient",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
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
                  "valueCode" : "MAY"
                }
              ],
              "code" : "search-type"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "code" : "read"
            }
          ],
          "searchRevInclude" : [
            "Coverage:beneficiary",
            "Group:member",
            "Observation:subject",
            "RelatedPerson:patient"
          ],
          "_searchRevInclude" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ]
            }
          ],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Id logico del Paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "active",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-active",
              "type" : "token",
              "documentation" : "Si el registro del paciente está activo."
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Nombre(s) del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token",
              "documentation" : "Un identificador del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Primer apellido del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "segundo-apellido",
              "definition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/SearchParameter/mpi-paciente-segundoApellido",
              "type" : "string",
              "documentation" : "Segundo apellido del paciente"
            }
          ]
        }
      ]
    }
  ]
}

```
