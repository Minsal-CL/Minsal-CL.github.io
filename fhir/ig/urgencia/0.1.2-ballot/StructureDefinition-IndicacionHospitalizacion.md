# Indicación Hospitalización - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indicación Hospitalización**

## Extension: Indicación Hospitalización 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionHospitalizacion | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:IndicacionHospitalizacion |

Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Extension: [Bundle/EjBundleEgreso](Bundle-EjBundleEgreso.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/IndicacionHospitalizacion)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IndicacionHospitalizacion.csv), [Excel](StructureDefinition-IndicacionHospitalizacion.xlsx), [Schematron](StructureDefinition-IndicacionHospitalizacion.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IndicacionHospitalizacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionHospitalizacion",
  "version" : "0.1.2-ballot",
  "name" : "IndicacionHospitalizacion",
  "title" : "Indicación Hospitalización",
  "status" : "draft",
  "date" : "2025-12-10T16:35:01-03:00",
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
    },
    {
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia.",
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
      "expression" : "Encounter.hospitalization.dischargeDisposition"
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
        "short" : "Indicación Hospitalización",
        "definition" : "Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia.",
        "constraint" : [
          {
            "key" : "unidad-destino-hosp",
            "severity" : "error",
            "human" : "Si la indicación es 'Hospitalización mismo establecimiento', la unidad de destino es obligatoria",
            "expression" : "extension.where(url='Indicacion' and value as code = 1).exists() implies extension.where(url='UnidadDestino').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionHospitalizacion"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:Indicacion",
        "path" : "Extension.extension",
        "sliceName" : "Indicacion",
        "short" : "Indicación de hospitalización",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:Indicacion.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:Indicacion.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "Indicacion"
      },
      {
        "id" : "Extension.extension:Indicacion.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/indicacion-hospitalizacion"
        }
      },
      {
        "id" : "Extension.extension:UnidadDestino",
        "path" : "Extension.extension",
        "sliceName" : "UnidadDestino",
        "short" : "Unidad Hospitalaria Destino",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:UnidadDestino.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:UnidadDestino.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "UnidadDestino"
      },
      {
        "id" : "Extension.extension:UnidadDestino.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/unidad-hospitalaria-destino"
        }
      },
      {
        "id" : "Extension.extension:FechaIndicacion",
        "path" : "Extension.extension",
        "sliceName" : "FechaIndicacion",
        "short" : "Fecha de indicación de hospitalización",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:FechaIndicacion.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:FechaIndicacion.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "FechaIndicacion"
      },
      {
        "id" : "Extension.extension:FechaIndicacion.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/IndicacionHospitalizacion"
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
