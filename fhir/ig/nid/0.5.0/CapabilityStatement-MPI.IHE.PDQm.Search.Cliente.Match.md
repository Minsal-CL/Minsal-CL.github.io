# Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match" - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match"**

## CapabilityStatement: Indice Maestro Paciente: "Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match" 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente.Match | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_IHE_PDQm_Search_Cliente_Match |

 
El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes mediante la operación Match. 
* Uso de FHIR R4
* Uso **PUEDE** traer el recurso en JSON o XML
* Los parámetros de entrada y salida deben ser conforme a los perfiles MPI Paciente
* Invoca la operación $match en un endpoint FHIR
 

 [Raw OpenAPI-Swagger Definition file](MPI.IHE.PDQm.Search.Cliente.Match.openapi.json) | [Download](MPI.IHE.PDQm.Search.Cliente.Match.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MPI.IHE.PDQm.Search.Cliente.Match",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente.Match",
  "version" : "0.5.0",
  "name" : "MPI_IHE_PDQm_Search_Cliente_Match",
  "title" : "Indice Maestro Paciente: \"Cliente Buscador de Datos Demográficos (PDQm) con implementación de Match\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-08-07T09:44:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "El CapabilityStatement de los requisitos del Actor Consumidor de Demografía del Indice Maestro Paciente(cliente) expresa los requisitos que pueden ser utilizados mientras se cumple con la normativa. Este CapabilityStatement implementa la Opción de Búsqueda de Pacientes mediante la operación Match.\n\n* Uso de FHIR R4\n* Uso **PUEDE** traer el recurso en JSON o XML\n* Los parámetros de entrada y salida deben ser conforme a los perfiles MPI Paciente\n* Invoca la operación $match en un endpoint FHIR",
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
  "implementationGuide" : ["https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
  "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm"],
  "_implementationGuide" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "SHOULD"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "SHOULD"
    }]
  }],
  "rest" : [{
    "mode" : "client",
    "documentation" : "El Proveedor de Demografía del Indice Maestro Paciente (PDQm) ofrece la capacidad de descubrir Identidades de Pacientes mediante la invocación de la operación $match.",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Patient",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPacienteBusqueda"],
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
      "operation" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "match",
        "definition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PDQm.match"
      }]
    }]
  }]
}

```
