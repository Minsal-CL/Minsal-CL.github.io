# Pueblos Originarios - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Pueblos Originarios**

## Extension: Pueblos Originarios 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:PueblosOriginariosMPI |

Extensión para describir si el paciente pertenece algún pueblo originario

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md) and [MINSAL Paciente Busqueda](StructureDefinition-MINSALPacienteBusqueda.md)
* Examples for this Extension: [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md), [Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/PueblosOriginariosMPI)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PueblosOriginariosMPI.csv), [Excel](StructureDefinition-PueblosOriginariosMPI.xlsx), [Schematron](StructureDefinition-PueblosOriginariosMPI.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PueblosOriginariosMPI",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI",
  "version" : "0.4.8",
  "name" : "PueblosOriginariosMPI",
  "title" : "Pueblos Originarios",
  "status" : "draft",
  "date" : "2025-11-28T16:21:53-03:00",
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
  "description" : "Extensión para describir si el paciente pertenece algún pueblo originario",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Pueblos Originarios",
        "definition" : "Extensión para describir si el paciente pertenece algún pueblo originario",
        "constraint" : [
          {
            "key" : "mpi-PueblosOriginarios",
            "severity" : "error",
            "human" : "Si pertenece a un pueblo originario debe especificar, cúal",
            "expression" : "extension.where(url = 'pertenece' and value.ofType(boolean).where(true)).exists() implies extension.where(url = 'perteneciente').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:pertenece",
        "path" : "Extension.extension",
        "sliceName" : "pertenece",
        "short" : "Pregunta de si pertenece o no a un pueblo originario",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:pertenece.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:pertenece.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "pertenece"
      },
      {
        "id" : "Extension.extension:pertenece.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:perteneciente",
        "path" : "Extension.extension",
        "sliceName" : "perteneciente",
        "short" : "Define al Pueblo Originario perteneciente",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:perteneciente.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:perteneciente.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "perteneciente"
      },
      {
        "id" : "Extension.extension:perteneciente.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/PueblosOriginariosVS"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
