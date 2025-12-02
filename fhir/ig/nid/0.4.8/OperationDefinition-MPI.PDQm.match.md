# MPI PDQm $Match - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MPI PDQm $Match**

## OperationDefinition: MPI PDQm $Match 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PDQm.match | *Version*:0.4.8 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MPI_PDQM_Matches |

 
Operación compatible con la operación[$match](http://hl7.org/fhir/R4/patient-operation-match.html)del estandar y la del operación[$match](https://profiles.ihe.net/ITI/PDQm/OperationDefinition-PDQmMatch.html)del PDQm. Los únicos cambios son restringir los parámetros de entrada para usar el perfil de[Paciente MPI Busqueda](./StructureDefinition-MINSALPacienteBusqueda.md)para el perfil de Entrada de $match y restringir los parámetros de salida para usar el perfil de[Paciente MPI](./StructureDefinition-MINSALPaciente.md)cuya respuesta es el[MINSAL Bundle Resultado Operación Match](./StructureDefinition-BundleSearchMPIMatch.md). 

URL: [base]/Patient/$match

Input parameters Profile:[MINSAL Parámetros Entrada $match PDQM](StructureDefinition-ParametrosEntradaPDQmMpi.md)

### Parameters

* **Use**: IN
  * **Name**: resource
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Patient](http://hl7.org/fhir/R4/patient.html)
  * **Binding**: 
  * **Documentation**: Utiliza esto para proporcionar un conjunto completo de detalles del paciente con los que el MPI debe hacer coincidir (por ejemplo, enviar un registro de paciente a Patient/$match mediante POST).
* **Use**: IN
  * **Name**: onlyCertainMatches
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [boolean](http://hl7.org/fhir/R4/datatypes.html#boolean)
  * **Binding**: 
  * **Documentation**: Si hay múltiples coincidencias potenciales, entonces **NO** se deberían devolver los resultados con esta bandera configurada en verdadero. Cuando es falso, el servidor **PUEDE** devolver múltiples resultados, con cada resultado calificado en consecuencia.
* **Use**: IN
  * **Name**: count
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [integer](http://hl7.org/fhir/R4/datatypes.html#integer)
  * **Binding**: 
  * **Documentation**: El número máximo de registros a devolver. Si no se proporciona un valor, el servidor decide cuántas coincidencias devolver. Ten en cuenta que los clientes **DEBERÍAN** ser cuidadosos al usar esto, ya que **PUEDE** evitar que se devuelvan coincidencias probables y válidas.
* **Use**: OUT
  * **Name**: return
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Bundle](http://hl7.org/fhir/R4/bundle.html)
  * **Binding**: 
  * **Documentation**: Un bundle contiene un conjunto de registros de Paciente que representan posibles coincidencias; opcionalmente, **PUEDE** contener también un OperationOutcome con información adicional sobre los resultados de la búsqueda (como advertencias o mensajes informativos, como un conteo de registros que estaban cerca pero fueron eliminados). Si la operación no tuvo éxito, entonces **PUEDE** devolverse un OperationOutcome junto con un código de estado BadRequest (por ejemplo, problema de seguridad o propiedades insuficientes en el fragmento de paciente, verificar contra el perfil).Nota: dado que este es el único parámetro de salida, es un recurso y tiene el nombre 'return'. El resultado de esta operación se devuelve directamente como un recurso.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MPI.PDQm.match",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition/MPI.PDQm.match",
  "version" : "0.4.8",
  "name" : "MPI_PDQM_Matches",
  "title" : "MPI PDQm $Match",
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
  "description" : "Operación compatible con la operación [$match](http://hl7.org/fhir/R4/patient-operation-match.html) del estandar y la del operación [$match](https://profiles.ihe.net/ITI/PDQm/OperationDefinition-PDQmMatch.html) del PDQm. Los únicos cambios son restringir los parámetros de entrada para usar el perfil de [Paciente MPI Busqueda](./StructureDefinition-MINSALPacienteBusqueda.html) para el perfil de Entrada de $match y restringir los parámetros de salida para usar el perfil de [Paciente MPI](./StructureDefinition-MINSALPaciente.html) cuya respuesta es el [MINSAL Bundle Resultado Operación Match](./StructureDefinition-BundleSearchMPIMatch.html).\n",
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
  "code" : "match",
  "base" : "http://hl7.org/fhir/OperationDefinition/Patient-match",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ParametrosEntradaPDQmMpi",
  "parameter" : [
    {
      "name" : "resource",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Utiliza esto para proporcionar un conjunto completo de detalles del paciente con los que el MPI debe hacer coincidir (por ejemplo, enviar un registro de paciente a Patient/$match mediante POST).",
      "type" : "Patient"
    },
    {
      "name" : "onlyCertainMatches",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Si hay múltiples coincidencias potenciales, entonces **NO** se deberían devolver los resultados con esta bandera configurada en verdadero. Cuando es falso, el servidor **PUEDE** devolver múltiples resultados, con cada resultado calificado en consecuencia.",
      "type" : "boolean"
    },
    {
      "name" : "count",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "El número máximo de registros a devolver. Si no se proporciona un valor, el servidor decide cuántas coincidencias devolver. Ten en cuenta que los clientes **DEBERÍAN** ser cuidadosos al usar esto, ya que **PUEDE** evitar que se devuelvan coincidencias probables y válidas.",
      "type" : "integer"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Un bundle contiene un conjunto de registros de Paciente que representan posibles coincidencias; opcionalmente, **PUEDE** contener también un OperationOutcome con información adicional sobre los resultados de la búsqueda (como advertencias o mensajes informativos, como un conteo de registros que estaban cerca pero fueron eliminados). Si la operación no tuvo éxito, entonces **PUEDE** devolverse un OperationOutcome junto con un código de estado BadRequest (por ejemplo, problema de seguridad o propiedades insuficientes en el fragmento de paciente, verificar contra el perfil).\n\nNota: dado que este es el único parámetro de salida, es un recurso y tiene el nombre 'return'. El resultado de esta operación se devuelve directamente como un recurso.",
      "type" : "Bundle"
    }
  ]
}

```
