# ExtBool Atención Preferente - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **ExtBool Atención Preferente**

## Extension: ExtBool Atención Preferente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente | *Version*:0.2.2 |
<<<<<<< HEAD
| Draft as of 2026-02-27 | *Computable Name*:ExtensionBoolAtencionPreferente |
=======
| Draft as of 2026-02-19 | *Computable Name*:ExtensionBoolAtencionPreferente |
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a

ExtBool ¿Hace uso de atención preferente?

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Extension: [Bundle/BundleAgendarEjemplo](Bundle-BundleAgendarEjemplo.md), [Bundle/BundleAtenderEjemplo](Bundle-BundleAtenderEjemplo.md), [Bundle/BundlePriorizarEjemplo](Bundle-BundlePriorizarEjemplo.md), [Bundle/BundleTerminarEjemplo](Bundle-BundleTerminarEjemplo.md) and [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/ExtensionBoolAtencionPreferente)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionBoolAtencionPreferente.csv), [Excel](StructureDefinition-ExtensionBoolAtencionPreferente.xlsx), [Schematron](StructureDefinition-ExtensionBoolAtencionPreferente.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionBoolAtencionPreferente",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente",
  "version" : "0.2.2",
  "name" : "ExtensionBoolAtencionPreferente",
  "title" : "ExtBool Atención Preferente",
  "status" : "draft",
<<<<<<< HEAD
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
  "description" : "ExtBool ¿Hace uso de atención preferente?",
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
=======
  "date" : "2026-02-19T15:23:45-03:00",
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
  "description" : "ExtBool ¿Hace uso de atención preferente?",
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
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
<<<<<<< HEAD
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ExtBool Atención Preferente",
      "definition" : "ExtBool ¿Hace uso de atención preferente?"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
=======
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "ExtBool Atención Preferente",
        "definition" : "ExtBool ¿Hace uso de atención preferente?"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  }
}

```
