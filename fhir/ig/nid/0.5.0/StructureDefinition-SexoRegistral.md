# Sexo Registral - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Sexo Registral**

## Extension: Sexo Registral 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SexoRegistral | *Version*:0.5.0 |
| Draft as of 2026-11-24 | *Computable Name*:SexoRegistral |

Sexo registral del paciente según el Registro Civil, con los códigos de EIS 0.2.0.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)
* Examples for this Extension: [Bundle/EjemploBusqueda](Bundle-EjemploBusqueda.md), [Bundle/EjemploBusquedaMatch](Bundle-EjemploBusquedaMatch.md), [Patient/DuplicadoMPIPaciente](Patient-DuplicadoMPIPaciente.md) and [Patient/MinsalPacienteEjemplo](Patient-MinsalPacienteEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-SexoRegistral.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SexoRegistral.csv), [Excel](StructureDefinition-SexoRegistral.xlsx), [Schematron](StructureDefinition-SexoRegistral.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SexoRegistral",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SexoRegistral",
  "version" : "0.5.0",
  "name" : "SexoRegistral",
  "title" : "Sexo Registral",
  "status" : "draft",
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Sexo registral del paciente según el Registro Civil, con los códigos de EIS 0.2.0.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Sexo Registral",
      "definition" : "Sexo registral del paciente según el Registro Civil, con los códigos de EIS 0.2.0."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SexoRegistral"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Sexo registral (EIS)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/SexoRegistralVS"
      }
    }]
  }
}

```
