# Origen del Directorio de Proveedores de Atención Médica - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Origen del Directorio de Proveedores de Atención Médica**

## CapabilityStatement: Origen del Directorio de Proveedores de Atención Médica 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NID_IHE_HPD_Manager |

 
El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas. 
* Uso de FHIR R4
* Uso de estructura JSON o XML
* Uso condicional del Perfil "Prestador Administrativo", "Prestador Individual" y "Prestador Organizacional"
 

 [Raw OpenAPI-Swagger Definition file](NID.IHE.HPD.Source.openapi.json) | [Download](NID.IHE.HPD.Source.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NID.IHE.HPD.Source",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source",
  "version" : "0.5.0",
  "name" : "NID_IHE_HPD_Manager",
  "title" : "Origen del Directorio de Proveedores de Atención Médica",
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
  "description" : "El CapabilityStatement del origen del directorio de proveedores de atención médica debe cumplir con las siguientes especificiones normadas.\n\n* Uso de FHIR R4\n* Uso de estructura JSON o XML\n* Uso condicional del Perfil \\\"Prestador Administrativo\\\", \\\"Prestador Individual\\\" y \\\"Prestador Organizacional\\\"\n",
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
    "documentation" : "El servidor de \\\"Origen del Directorio de Proveedores de Atención Médica\\\" permite generar nuevos y/o eliminar prestadores ",
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
        "code" : "update"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "delete"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Organization",
      "supportedProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "delete"
      }]
    }]
  }]
}

```
