# Problema GES - Tiempos de Espera Interoperable v0.2.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Problema GES**

## Extension: Problema GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ProblemaSaludGESTEI | *Version*:0.2.2-ballot |
| Draft as of 2026-02-19 | *Computable Name*:ProblemaSaludGES |

Indica si corresponde a que problema de salud GES

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Extension: [Bundle/BundleIniciarEjemplo2](Bundle-BundleIniciarEjemplo2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/ProblemaSaludGESTEI)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ProblemaSaludGESTEI.csv), [Excel](StructureDefinition-ProblemaSaludGESTEI.xlsx), [Schematron](StructureDefinition-ProblemaSaludGESTEI.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ProblemaSaludGESTEI",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ProblemaSaludGESTEI",
  "version" : "0.2.2-ballot",
  "name" : "ProblemaSaludGES",
  "title" : "Problema GES",
  "status" : "draft",
  "date" : "2026-02-19T11:18:25-03:00",
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
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Indica si corresponde a que problema de salud GES",
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
      "expression" : "ServiceRequest"
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
        "short" : "Problema GES",
        "definition" : "Indica si corresponde a que problema de salud GES"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:ProblemaSaludGES",
        "path" : "Extension.extension",
        "sliceName" : "ProblemaSaludGES",
        "short" : "Indica el problema de salud GES",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ProblemaSaludGES.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:ProblemaSaludGES.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "ProblemaSaludGES"
      },
      {
        "id" : "Extension.extension:ProblemaSaludGES.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei"
        }
      },
      {
        "id" : "Extension.extension:RamaGES",
        "path" : "Extension.extension",
        "sliceName" : "RamaGES",
        "short" : "Indica una especificación sobre el problema de salud GES",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:RamaGES.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:RamaGES.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "RamaGES"
      },
      {
        "id" : "Extension.extension:RamaGES.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ProblemaSaludGESTEI"
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
