# Operación para Obtener Identificadores Correspondientes - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Operación para Obtener Identificadores Correspondientes**

## OperationDefinition: Operación para Obtener Identificadores Correspondientes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PIXm.pix | *Version*:0.4.9 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_PIXM_pix |

 
Operación compatible con la[$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition-IHE.PIXm.pix.html)para obtener los identificadores correspondientes de cada recurso paciente 
* Input: sourceIdentifier, targetSystem, and _format
* Output: targetIdentifier, targetId
 

URL: [base]/Patient/$ihe-pix

### Parameters

* **Use**: IN
  * **Name**: sourceIdentifier
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([token](https://hl7.org/fhir/R4/search.html#token))
  * **Binding**: 
  * **Documentation**: El parámetro de búsqueda del identificador del Paciente que será utilizado por el Administrador de Referencia Cruzada de Identificadores de Pacientes para encontrar identificadores cruzados asociados con el Recurso Paciente.
* **Use**: IN
  * **Name**: targetSystem
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([uri](https://hl7.org/fhir/R4/search.html#uri))
  * **Binding**: 
  * **Documentation**: La Autoridad Asignadora de Identificadores del Paciente objetivo de la cual se deben seleccionar los identificadores devueltos.
* **Use**: IN
  * **Name**: _format
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([token](https://hl7.org/fhir/R4/search.html#token))
  * **Binding**: 
  * **Documentation**: El formato solicitado de la respuesta.
* **Use**: OUT
  * **Name**: targetIdentifier
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
  * **Binding**: 
  * **Documentation**: El identificador encontrado.
* **Use**: OUT
  * **Name**: targetId
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [Reference](http://hl7.org/fhir/R4/references.html#Reference)
  * **Binding**: 
  * **Documentation**: La URL del Recurso Paciente.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MPI.PIXm.pix",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PIXm.pix",
  "version" : "0.4.9",
  "name" : "MPI_PIXM_pix",
  "title" : "Operación para Obtener Identificadores Correspondientes",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2024-08-27",
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
  "description" : "Operación compatible con la [$ihe-pix](https://profiles.ihe.net/ITI/PIXm/OperationDefinition-IHE.PIXm.pix.html) para obtener los identificadores correspondientes de cada recurso paciente\n  * Input: sourceIdentifier, targetSystem, and _format\n  * Output: targetIdentifier, targetId",
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
  "code" : "ihe-pix",
  "base" : "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "sourceIdentifier",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "El parámetro de búsqueda del identificador del Paciente que será utilizado por el Administrador de Referencia Cruzada de Identificadores de Pacientes para encontrar identificadores cruzados asociados con el Recurso Paciente.",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "targetSystem",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "La Autoridad Asignadora de Identificadores del Paciente objetivo de la cual se deben seleccionar los identificadores devueltos.",
      "type" : "string",
      "searchType" : "uri"
    },
    {
      "name" : "_format",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "El formato solicitado de la respuesta.",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "targetIdentifier",
      "use" : "out",
      "min" : 0,
      "max" : "*",
      "documentation" : "El identificador encontrado.",
      "type" : "Identifier"
    },
    {
      "name" : "targetId",
      "use" : "out",
      "min" : 0,
      "max" : "*",
      "documentation" : "La URL del Recurso Paciente.",
      "type" : "Reference"
    }
  ]
}

```
