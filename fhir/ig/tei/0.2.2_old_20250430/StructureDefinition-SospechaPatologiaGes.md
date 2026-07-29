# Sospecha Patologia Ges - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Sospecha Patologia Ges**

## Extension: Sospecha Patologia Ges 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes | *Version*:0.2.2 |
| Draft as of 2026-02-27 | *Computable Name*:SospechaPatologiaGes |

Indica si corresponde a GES

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Extension: [Bundle/BundleAgendarEjemplo](Bundle-BundleAgendarEjemplo.md), [Bundle/BundleAtenderEjemplo](Bundle-BundleAtenderEjemplo.md), [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Bundle/BundleIniciarEjemplo2](Bundle-BundleIniciarEjemplo2.md)... Show 5 more, [Bundle/BundlePriorizarEjemplo](Bundle-BundlePriorizarEjemplo.md), [Bundle/BundleReferenciarEjemplo](Bundle-BundleReferenciarEjemplo.md), [Bundle/BundleRevisarEjemplo](Bundle-BundleRevisarEjemplo.md), [Bundle/BundleTerminarEjemplo](Bundle-BundleTerminarEjemplo.md) and [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/SospechaPatologiaGes)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SospechaPatologiaGes.csv), [Excel](StructureDefinition-SospechaPatologiaGes.xlsx), [Schematron](StructureDefinition-SospechaPatologiaGes.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SospechaPatologiaGes",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes",
  "version" : "0.2.2",
  "name" : "SospechaPatologiaGes",
  "title" : "Sospecha Patologia Ges",
  "status" : "draft",
  "date" : "2026-02-27T12:08:03-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Indica si corresponde a GES",
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
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Sospecha Patologia Ges",
      "definition" : "Indica si corresponde a GES"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
