# Mención profesional añadida al título profesional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Mención profesional añadida al título profesional**

## Extension: Mención profesional añadida al título profesional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:Mencion |

Mención profesional obtenida junto con el título, dato que se agrega en texto lible

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)
* Examples for this Extension: [Bundle/EjemploBusquedaProf](Bundle-EjemploBusquedaProf.md) and [Practitioner/EjemploPractiProf](Practitioner-EjemploPractiProf.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/Mencion)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Mencion.csv), [Excel](StructureDefinition-Mencion.xlsx), [Schematron](StructureDefinition-Mencion.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Mencion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion",
  "version" : "0.4.8",
  "name" : "Mencion",
  "title" : "Mención profesional añadida al título profesional",
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
  "description" : "Mención profesional obtenida junto con el título, dato que se agrega en texto lible",
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
      "expression" : "Practitioner.qualification"
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
        "short" : "Mención profesional añadida al título profesional",
        "definition" : "Mención profesional obtenida junto con el título, dato que se agrega en texto lible"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
