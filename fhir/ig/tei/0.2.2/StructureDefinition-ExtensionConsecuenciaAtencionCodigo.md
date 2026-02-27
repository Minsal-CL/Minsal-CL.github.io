# Consecuencia Atención Codigo - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Consecuencia Atención Codigo**

## Extension: Consecuencia Atención Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo | *Version*:0.2.2 |
<<<<<<< HEAD
| Draft as of 2026-02-27 | *Computable Name*:ExtensionConsecuenciaAtencionCodigo |
=======
| Draft as of 2026-02-19 | *Computable Name*:ExtensionConsecuenciaAtencionCodigo |
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a

Consecuencia Atención Codigo

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md) and [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md)
* Examples for this Extension: [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Bundle/BundleIniciarEjemplo2](Bundle-BundleIniciarEjemplo2.md) and [Encounter/EncounterIniciarEjemplo](Encounter-EncounterIniciarEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/ExtensionConsecuenciaAtencionCodigo)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.csv), [Excel](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.xlsx), [Schematron](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionConsecuenciaAtencionCodigo",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo",
  "version" : "0.2.2",
  "name" : "ExtensionConsecuenciaAtencionCodigo",
  "title" : "Consecuencia Atención Codigo",
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
  "description" : "Consecuencia Atención Codigo",
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
    "expression" : "Encounter"
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
  "description" : "Consecuencia Atención Codigo",
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
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
<<<<<<< HEAD
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Consecuencia Atención Codigo",
      "definition" : "Consecuencia Atención Codigo"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Código Consecuencia Atención",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSConsecuenciaAtencionCodigo"
      }
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.display",
      "path" : "Extension.value[x].coding.display",
      "mustSupport" : true
    }]
=======
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Consecuencia Atención Codigo",
        "definition" : "Consecuencia Atención Codigo"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Código Consecuencia Atención",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSConsecuenciaAtencionCodigo"
        }
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x].coding.display",
        "path" : "Extension.value[x].coding.display",
        "mustSupport" : true
      }
    ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  }
}

```
