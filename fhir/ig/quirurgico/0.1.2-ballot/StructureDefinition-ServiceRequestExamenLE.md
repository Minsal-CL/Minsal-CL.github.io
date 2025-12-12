# Solicitud de Examen LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitud de Examen LE**

## Resource Profile: Solicitud de Examen LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestExamenLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:ServiceRequestExamenLE |

 
ServiceRequestExamen LE recurso utilizado para la representación de la solicitud de examen 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md)
* Refer to this Profile: [ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)
* Examples for this Profile: [ServiceRequest/aecacd57-d7cf-4cb7-8bfd-339dc53d6e83](ServiceRequest-aecacd57-d7cf-4cb7-8bfd-339dc53d6e83.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/ServiceRequestExamenLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ServiceRequestExamenLE.csv), [Excel](StructureDefinition-ServiceRequestExamenLE.xlsx), [Schematron](StructureDefinition-ServiceRequestExamenLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ServiceRequestExamenLE",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestExamenLE",
  "version" : "0.1.2-ballot",
  "name" : "ServiceRequestExamenLE",
  "title" : "Solicitud de Examen LE",
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
  "description" : "ServiceRequestExamen LE recurso utilizado para la representación de la solicitud de examen",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest.id",
        "path" : "ServiceRequest.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "Identificador de la solicitud",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.identifier.value",
        "path" : "ServiceRequest.identifier.value",
        "short" : "Identificador de la solicitud",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "short" : "Estado de la solicitud",
        "patternCode" : "active",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "short" : "Intención de la solicitud de examenes",
        "patternCode" : "order",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "Que es lo que se está solicitando",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/CodigoExamen"
        }
      },
      {
        "id" : "ServiceRequest.code.coding",
        "path" : "ServiceRequest.code.coding",
        "short" : "Códigos definidos por un sistema terminológico"
      },
      {
        "id" : "ServiceRequest.code.coding.system",
        "path" : "ServiceRequest.code.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code.coding.code",
        "path" : "ServiceRequest.code.coding.code",
        "short" : "Código definido en un sistema terminológico",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code.text",
        "path" : "ServiceRequest.code.text",
        "short" : "Examen solicitado en texto libre",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "Referencia al paciente",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "short" : "Encuentro en el cual se solicita el examen",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "ServiceRequest.occurrence[x]:occurrenceDateTime",
        "path" : "ServiceRequest.occurrence[x]",
        "sliceName" : "occurrenceDateTime",
        "short" : "Fecha y hora en que se debería realizar el estudio. El formato corresponde a año, mes, día y hora (hh:mm) y se representa de la siguiente forma: YYYY-MM-DDTHH:MMZ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.authoredOn",
        "path" : "ServiceRequest.authoredOn",
        "short" : "Fecha en que se solicita el examen. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "Quien es la persona que solicita el estudio",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "short" : "Razón por la que se solicita el estudio",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.reasonCode.text",
        "path" : "ServiceRequest.reasonCode.text",
        "short" : "Razón en texto libre",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.note",
        "path" : "ServiceRequest.note",
        "short" : "Nota explicatoria adicional",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.note.text",
        "path" : "ServiceRequest.note.text",
        "short" : "Nota en texto libre",
        "mustSupport" : true
      }
    ]
  }
}

```
