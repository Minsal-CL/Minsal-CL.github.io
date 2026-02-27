# ExtBool Resolutividad APS - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **ExtBool Resolutividad APS**

## Extension: ExtBool Resolutividad APS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS | *Version*:0.2.2 |
<<<<<<< HEAD
| Draft as of 2026-02-27 | *Computable Name*:ExtensionBoolResolutividadAPS |
=======
| Draft as of 2026-02-19 | *Computable Name*:ExtensionBoolResolutividadAPS |
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a

ExtBool Resolutividad APS

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Extension: [Bundle/BundleAgendarEjemplo](Bundle-BundleAgendarEjemplo.md), [Bundle/BundleAtenderEjemplo](Bundle-BundleAtenderEjemplo.md), [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Bundle/BundleIniciarEjemplo2](Bundle-BundleIniciarEjemplo2.md)... Show 5 more, [Bundle/BundlePriorizarEjemplo](Bundle-BundlePriorizarEjemplo.md), [Bundle/BundleReferenciarEjemplo](Bundle-BundleReferenciarEjemplo.md), [Bundle/BundleRevisarEjemplo](Bundle-BundleRevisarEjemplo.md), [Bundle/BundleTerminarEjemplo](Bundle-BundleTerminarEjemplo.md) and [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/ExtensionBoolResolutividadAPS)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionBoolResolutividadAPS.csv), [Excel](StructureDefinition-ExtensionBoolResolutividadAPS.xlsx), [Schematron](StructureDefinition-ExtensionBoolResolutividadAPS.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionBoolResolutividadAPS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS",
  "version" : "0.2.2",
  "name" : "ExtensionBoolResolutividadAPS",
  "title" : "ExtBool Resolutividad APS",
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
  "description" : "ExtBool Resolutividad APS",
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
  "description" : "ExtBool Resolutividad APS",
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
      "short" : "ExtBool Resolutividad APS",
      "definition" : "ExtBool Resolutividad APS"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS"
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
        "short" : "ExtBool Resolutividad APS",
        "definition" : "ExtBool Resolutividad APS"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS"
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
