# Administrador del Indice Maestro Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Administrador del Indice Maestro Paciente**

## CapabilityStatement: Administrador del Indice Maestro Paciente 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.PDQm.Manager | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_IHE_PIXm_Consumidor |

 
El CapabilityStatement del administador del Indice Maestro Paciente debe cumplir con las siguientes especificiones normadas. 
* Uso de FHIR R4
* Uso **PUEDE** devolver el recurso en JSON o XML
* **DEBE** Soportar Perfil MINSAL Paciente
* **DEBE** Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida.
* Los parámetros de búsquedas **DEBEN** ser: 
* _id
* active
* family
* given
* identifier
* segundo-apellido
* segundo-apellido:exact
 
* **DEBE** soportar los _revinclude que permitan traer la información adicional requerida.
* **DEBE** soportar el uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix) descrita en está guía.
* **DEBE** soportar el uso de la operación [$match](OperationDefinition-MPI.PDQm.match.md) descrita en está guía.
 

 [Raw OpenAPI-Swagger Definition file](MPI.IHE.PIXm.PDQm.Manager.openapi.json) | [Download](MPI.IHE.PIXm.PDQm.Manager.openapi.json) 

## Administrador del Indice Maestro Paciente

* Implementation Guide Version: 0.4.9 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`, `application/fhir+json`, `application/fhir+xml`
* Published on: 2024-08-07 09:44:00-0300 
* Published by: Unidad de Interoperabilidad - MINSAL 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHOULD Support the Following Implementation Guides

* [https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore](https://hl7chile.cl/fhir/ig/clcore/1.9.4/index.html)
* [https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm](https://profiles.ihe.net/ITI/PIXm/3.1.0/index.html)
* [https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm](https://profiles.ihe.net/ITI/PDQm/3.2.0/index.html)

## FHIR RESTful Capabilities

### Mode: server

El servidor como administrador PIXm ofrece la capacidad de consultar la "Referencia Cruzada de Identidad del Paciente" que coincida con los parámetros de la consulta del Indice Maestro Paciente. Además de ser proveedor demografico del paciente (PDQm) ofrece la capacidad de descubrir identidades de pacientes mediante demografía e identificadores.

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
| [Patient](#Patient1-1) | Supported Profiles  [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) | **Y** | **Y** | **Y** |  | **Y** | _id, active, given, given:exact, identifier, family, family:exact, segundo-apellido, segundo-apellido:exact |  | `Coverage:beneficiary`,`Group:member`,`Observation:subject`,`RelatedPerson:patient` | `$ihe-pix`,`$match` |
| [Coverage](#Coverage1-2) | Supported Profiles  [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md) |  |  | **Y** |  | **Y** |  |  |  |  |
| [Group](#Group1-3) | Supported Profiles  [MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md) |  |  | **Y** |  | **Y** |  |  |  |  |
| [Observation](#Observation1-4) | Supported Profiles  [MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)  [MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)  [MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md) |  |  | **Y** |  | **Y** |  |  |  |  |
| [RelatedPerson](#RelatedPerson1-5) | Supported Profiles  [MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md) |  |  | **Y** |  | **Y** |  |  |  |  |

-------

#### Resource Conformance: SHALL Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* **SHALL** support `search-type`, `update`, `delete`, `read`.

Supported Profiles
[MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

Search Parameters


 

Extended Operations


#### Resource Conformance: SHALL Coverage

Core FHIR Resource

[Coverage](http://hl7.org/fhir/R4/coverage.html)

Reference Policy

Interaction summary

* **SHALL** support `update`, `delete`.

Supported Profiles
[MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)

#### Resource Conformance: SHALL Group

Core FHIR Resource

[Group](http://hl7.org/fhir/R4/group.html)

Reference Policy

Interaction summary

* **SHALL** support `update`, `delete`.

Supported Profiles
[MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md)

#### Resource Conformance: SHALL Observation

Core FHIR Resource

[Observation](http://hl7.org/fhir/R4/observation.html)

Reference Policy

Interaction summary

* **SHALL** support `update`, `delete`.

Supported Profiles
[MINSAL Nivel Educacional](StructureDefinition-MINSALNivelEducacional.md)
[MINSAL Ocupación](StructureDefinition-MINSALOcupacion.md)
[MINSAL Situacion Discapacidad](StructureDefinition-MINSALSituacionDiscapacidad.md)

#### Resource Conformance: SHALL RelatedPerson

Core FHIR Resource

[RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)

Reference Policy

Interaction summary

* **SHALL** support `update`, `delete`.

Supported Profiles
[MINSAL Acompañante](StructureDefinition-MINSALAcompanante.md)



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MPI.IHE.PIXm.PDQm.Manager",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.PDQm.Manager",
  "version" : "0.4.9",
  "name" : "MPI_IHE_PIXm_Consumidor",
  "title" : "Administrador del Indice Maestro Paciente",
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
  "description" : "El CapabilityStatement del administador del Indice Maestro Paciente debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso **PUEDE** devolver el recurso en JSON o XML\n* **DEBE** Soportar Perfil MINSAL Paciente\n* **DEBE** Soportar los perfiles MPI MINSAL que permiten completar con la información normativa requerida. \n* Los parámetros de búsquedas **DEBEN** ser:\n  * _id\n  * active\n  * family\n  * given\n  * identifier\n  * segundo-apellido\n  * segundo-apellido:exact\n* **DEBE** soportar los _revinclude que permitan traer la información adicional requerida.\n* **DEBE** soportar el uso de la operación [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix) descrita en está guía.\n* **DEBE** soportar el uso de la operación [$match](OperationDefinition-MPI.PDQm.match.html) descrita en está guía. ",
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
    "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm",
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
      "mode" : "server",
      "documentation" : "El servidor como administrador PIXm ofrece la capacidad de consultar la \\\"Referencia Cruzada de Identidad del Paciente\\\" que coincida con los parámetros de la consulta del Indice Maestro Paciente. Además de ser proveedor demografico del paciente (PDQm) ofrece la capacidad de descubrir identidades de pacientes mediante demografía e identificadores.",
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
              "documentation" : "Id logico del Paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
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
                  "valueCode" : "SHALL"
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
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "given:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Nombre(s) del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
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
                  "valueCode" : "SHALL"
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
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "family:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Primer apellido del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "segundo-apellido",
              "definition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/SearchParameter/mpi-paciente-segundoApellido",
              "type" : "string",
              "documentation" : "Segundo apellido del paciente"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "segundo-apellido:exact",
              "definition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/SearchParameter/mpi-paciente-segundoApellido",
              "type" : "string",
              "documentation" : "Segundo apellido del paciente"
            }
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "ihe-pix",
              "definition" : "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "match",
              "definition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PDQm.match"
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
          ]
        }
      ]
    }
  ]
}

```
