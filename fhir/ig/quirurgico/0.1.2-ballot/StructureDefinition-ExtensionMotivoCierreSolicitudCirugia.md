# Motivo Cierre Solicitud Cirugía - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo Cierre Solicitud Cirugía**

## Extension: Motivo Cierre Solicitud Cirugía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionMotivoCierreSolicitudCirugia | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:ExtensionMotivoCierreSolicitudCirugia |

Extensión utilizada para la representación de los datos del motivo por el cual se cierra la solicitud de cirugía.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)
* Examples for this Extension: [Bundle/EjBundleCierre](Bundle-EjBundleCierre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/ExtensionMotivoCierreSolicitudCirugia)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionMotivoCierreSolicitudCirugia.csv), [Excel](StructureDefinition-ExtensionMotivoCierreSolicitudCirugia.xlsx), [Schematron](StructureDefinition-ExtensionMotivoCierreSolicitudCirugia.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionMotivoCierreSolicitudCirugia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionMotivoCierreSolicitudCirugia",
  "version" : "0.1.2-ballot",
  "name" : "ExtensionMotivoCierreSolicitudCirugia",
  "title" : "Motivo Cierre Solicitud Cirugía",
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
  "description" : "Extensión utilizada para la representación de los datos del motivo por el cual se cierra la solicitud de cirugía.",
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
        "short" : "Motivo Cierre Solicitud Cirugía",
        "definition" : "Extensión utilizada para la representación de los datos del motivo por el cual se cierra la solicitud de cirugía."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionMotivoCierreSolicitudCirugia",
        "mustSupport" : true
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Motivo Cierre Solicitud Cirugía",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSMotivoCierreSolicitudCirugia"
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
      },
      {
        "id" : "Extension.value[x].text",
        "path" : "Extension.value[x].text",
        "mustSupport" : true
      }
    ]
  }
}

```
