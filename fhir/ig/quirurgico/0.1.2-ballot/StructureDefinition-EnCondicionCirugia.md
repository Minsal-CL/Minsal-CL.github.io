# En Condicion Cirugia - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **En Condicion Cirugia**

## Extension: En Condicion Cirugia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EnCondicionCirugia | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:EnCondicionCirugia |

En Condicion Cirugia

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md)
* Examples for this Extension: [Bundle/EjBundleEntrevista](Bundle-EjBundleEntrevista.md) and [Encounter/6c7dae68-552d-44cb-b414-e5024ae8e0a0](Encounter-6c7dae68-552d-44cb-b414-e5024ae8e0a0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/EnCondicionCirugia)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EnCondicionCirugia.csv), [Excel](StructureDefinition-EnCondicionCirugia.xlsx), [Schematron](StructureDefinition-EnCondicionCirugia.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EnCondicionCirugia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EnCondicionCirugia",
  "version" : "0.1.2-ballot",
  "name" : "EnCondicionCirugia",
  "title" : "En Condicion Cirugia",
  "status" : "draft",
  "date" : "2025-12-10T09:54:02-03:00",
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
  "description" : "En Condicion Cirugia",
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
      "expression" : "Encounter"
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
        "short" : "En Condicion Cirugia",
        "definition" : "En Condicion Cirugia"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EnCondicionCirugia"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "En Condicion Cirugia",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
