# Valor de la Clase - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Valor de la Clase**

## Extension: Valor de la Clase 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase | *Version*:0.4.9 |
| Draft as of 2025-12-05 | *Computable Name*:ValorDeLaClase |

Da el valor de class del Coverage, de manera codificada

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MINSAL Cobertura de Salud del Paciente](StructureDefinition-MINSALCobertura.md)
* Examples for this Extension: [Coverage/CoberturaFONASAEjemplo](Coverage-CoberturaFONASAEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/ValorDeLaClase)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ValorDeLaClase.csv), [Excel](StructureDefinition-ValorDeLaClase.xlsx), [Schematron](StructureDefinition-ValorDeLaClase.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ValorDeLaClase",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase",
  "version" : "0.4.9",
  "name" : "ValorDeLaClase",
  "title" : "Valor de la Clase",
  "status" : "draft",
  "date" : "2025-12-05T14:30:03-03:00",
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
  "description" : "Da el valor de class del Coverage, de manera codificada",
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
      "expression" : "Coverage.class.value"
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
        "short" : "Valor de la Clase",
        "definition" : "Da el valor de class del Coverage, de manera codificada"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/ValorDeLaClase"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Valor de la Clase del Coverage",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      }
    ]
  }
}

```
