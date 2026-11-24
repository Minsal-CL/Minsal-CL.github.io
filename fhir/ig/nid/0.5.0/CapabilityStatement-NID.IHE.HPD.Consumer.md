# Consumidor del Directorio de Proveedores de Atención Médica - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Consumidor del Directorio de Proveedores de Atención Médica**

## CapabilityStatement: Consumidor del Directorio de Proveedores de Atención Médica 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Consumer | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_IHE_PDQm_Search_Cliente |

 
El CapabilityStatement de los requisitos del consumidor del directorio de proveedores de atención médica expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Profesionales. 
* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Soportar Perfiles de Prestador Administrativo, Prestador Profesional y Prestador Institucional
* Los parámetros de búsquedas de los Perfiles Practitioner **PUEDEN** ser: 
* _id
* identifier
* family
* given
* identifier
 
* Los parámetros de búsquedas del Perfil Organization **PUEDEN** ser: 
* _id
* identifier
* name
* type
 
 

 [Raw OpenAPI-Swagger Definition file](NID.IHE.HPD.Consumer.openapi.json) | [Download](NID.IHE.HPD.Consumer.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NID.IHE.HPD.Consumer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Consumer",
  "version" : "0.5.0",
  "name" : "MPI_IHE_PDQm_Search_Cliente",
  "title" : "Consumidor del Directorio de Proveedores de Atención Médica",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-09-25T15:50:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "El CapabilityStatement de los requisitos del consumidor del directorio de proveedores de atención médica expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Profesionales.\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Soportar Perfiles de Prestador Administrativo, Prestador Profesional y Prestador Institucional\n* Los parámetros de búsquedas de los Perfiles Practitioner **PUEDEN** ser:\n  * _id\n  * identifier\n  * family\n  * given\n  * identifier\n* Los parámetros de búsquedas del Perfil Organization **PUEDEN** ser:\n  * _id\n  * identifier\n  * name\n  * type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml", "application/fhir+json", "application/fhir+xml"],
  "implementationGuide" : ["https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore"],
  "_implementationGuide" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "SHOULD"
    }]
  }],
  "rest" : [{
    "mode" : "client",
    "documentation" : "El Consumidor del Directorio de proveedores de atención médica ofrece la capacidad de descubrir profesionales e instituciones, mediante datos demográficos.",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Practitioner",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPractitionerAdministrativo",
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "read"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Id logico del Profesional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "active",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-active",
        "type" : "token",
        "documentation" : "Si el registro del profesional está activo."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
        "type" : "string",
        "documentation" : "Nombre(s) del profesional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
        "type" : "token",
        "documentation" : "Un identificador del profesional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
        "type" : "string",
        "documentation" : "Primer apellido del profesional"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Organization",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "read"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Id logico del prestador institucional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
        "type" : "token",
        "documentation" : "Identificador del prestador institucional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "active",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-active",
        "type" : "token",
        "documentation" : "Si el registro del prestador está activo."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
        "type" : "string",
        "documentation" : "Nombre o alias del prestador institucional"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-type",
        "type" : "token",
        "documentation" : "Tipo de prestador institucional"
      }]
    }]
  }]
}

```
