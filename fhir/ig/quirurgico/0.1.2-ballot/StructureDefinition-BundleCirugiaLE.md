# Bundle Cirugía LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Cirugía LE**

## Resource Profile: Bundle Cirugía LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleCirugiaLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleCirugiaLE |

 
Recurso Bundle Cirugía LE que se utiliza para representar la entrevista prequirúrgica. 

**Usages:**

* Examples for this Profile: [Bundle/EjBundleCirugia](Bundle-EjBundleCirugia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/BundleCirugiaLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleCirugiaLE.csv), [Excel](StructureDefinition-BundleCirugiaLE.xlsx), [Schematron](StructureDefinition-BundleCirugiaLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleCirugiaLE",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleCirugiaLE",
  "version" : "0.1.2-ballot",
  "name" : "BundleCirugiaLE",
  "title" : "Bundle Cirugía LE",
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
  "description" : "Recurso Bundle Cirugía LE que se utiliza para representar la entrevista prequirúrgica.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "closed"
        },
        "min" : 3
      },
      {
        "id" : "Bundle.entry:Cirugia",
        "path" : "Bundle.entry",
        "sliceName" : "Cirugia",
        "short" : "Entrada en el Bundle: contiene la cirugía.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Cirugia.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Cirugia.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Cirugía.",
        "min" : 1,
        "type" : [
          {
            "code" : "Procedure",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ProcedureCirugiaLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Cirugia.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Cirugia.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Cirugia.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Procedure"
      },
      {
        "id" : "Bundle.entry:Profesional",
        "path" : "Bundle.entry",
        "sliceName" : "Profesional",
        "short" : "Entrada en el Bundle: contiene el profesional de la salud que realiza la cirugía.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Profesional.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Profesional de la salud que realiza la cirugía.",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Profesional.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:Profesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional",
        "path" : "Bundle.entry",
        "sliceName" : "RolProfesional",
        "short" : "Entrada en el Bundle: contiene el rol del profesional de la salud en la cirugía.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:RolProfesional.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Rol del profesional de la salud que realiza la cirugía.",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "PractitionerRole"
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
