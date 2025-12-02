# Indice Maestro Paciente: "Cliente de Origen PIXm" - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Indice Maestro Paciente: "Cliente de Origen PIXm"**

## CapabilityStatement: Indice Maestro Paciente: "Cliente de Origen PIXm" 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.Origen | *Version*:0.4.8 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_IHE_PIXm_Origen |

 
El CapabilityStatement del Actor Cliente de Origen del MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. 
* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso condicional para actualizar Paciente
* Soportar Perfil MINSAL Paciente
* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
 

 [Raw OpenAPI-Swagger Definition file](MPI.IHE.PIXm.Origen.openapi.json) | [Download](MPI.IHE.PIXm.Origen.openapi.json) 

## Indice Maestro Paciente: "Cliente de Origen PIXm"

* Implementation Guide Version: 0.4.8 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`, `application/fhir+json`, `application/fhir+xml`
* Published on: 2014-08-14 12:00:00-0300 
* Published by: Unidad de Interoperabilidad - MINSAL 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHOULD Support the Following Implementation Guides

* [https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore|1.9.4](https://hl7chile.cl/fhir/ig/clcore/1.9.4/index.html)
* [https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm](https://profiles.ihe.net/ITI/PIXm/3.0.4/ImplementationGuide-ihe.iti.pixm.html)

## FHIR RESTful Capabilities

### Mode: client

El cliente de origen es el productor y publicador de los datos de la entidad paciente.

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
| [Patient](#Patient1-1) | Supported Profiles  [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) |  |  | y? |  | y? |  |  |  |  |
| [Coverage](#Coverage1-2) | Supported Profiles  [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md) |  |  | y? |  | y? |  |  |  |  |
| [Group](#Group1-3) | Supported Profiles  [MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md) |  |  | y? |  | y? |  |  |  |  |
| [Observation](#Observation1-4) | Supported Profiles  [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)  [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)  [MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md) |  |  | y? |  | y? |  |  |  |  |
| [RelatedPerson](#RelatedPerson1-5) | Supported Profiles  [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md) |  |  | y? |  | y? |  |  |  |  |

-------

#### Resource Conformance: SHALL Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

#### Resource Conformance: SHALL Coverage

Core FHIR Resource

[Coverage](http://hl7.org/fhir/R4/coverage.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)

#### Resource Conformance: SHALL Group

Core FHIR Resource

[Group](http://hl7.org/fhir/R4/group.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md)

#### Resource Conformance: SHALL Observation

Core FHIR Resource

[Observation](http://hl7.org/fhir/R4/observation.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)
[MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)
[MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md)

#### Resource Conformance: SHALL RelatedPerson

Core FHIR Resource

[RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)

Reference Policy

Interaction summary

* **MAY** support `update`, `delete`.

Supported Profiles
[MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md)



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MPI.IHE.PIXm.Origen",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.Origen",
  "version" : "0.4.8",
  "name" : "MPI_IHE_PIXm_Origen",
  "title" : "Indice Maestro Paciente: \"Cliente de Origen PIXm\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2014-08-14T12:00:00-03:00",
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
  "description" : "El CapabilityStatement del Actor Cliente de Origen del MPI expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso condicional para actualizar Paciente\n* Soportar Perfil MINSAL Paciente\n* Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida. \n",
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
    "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore|1.9.4",
    "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm"
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
      "documentation" : "El cliente de origen es el productor y publicador de los datos de la entidad paciente.",
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
          "type" : "Coverage",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALCobertura"
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
          "type" : "Group",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAgrupacionPorMarcas"
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
          "type" : "Observation",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALNivelEducacional",
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOcupacion",
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALSituacionDiscapacidad"
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
          "type" : "RelatedPerson",
          "supportedProfile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante"
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
