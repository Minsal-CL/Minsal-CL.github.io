# PractitionerRole LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole LE**

## Resource Profile: PractitionerRole LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:PractitionerRoleLE |

 
PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud. 

**Usages:**

* Use this Profile: [Bundle Agendar Cirugía LE](StructureDefinition-BundleAgendarCirugiaLE.md), [Bundle Agendar Entrevista LE](StructureDefinition-BundleAgendarEntrevistaLE.md), [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Cierre LE](StructureDefinition-BundleCierreLE.md)...Show 2 more,[Bundle Cirugía LE](StructureDefinition-BundleCirugiaLE.md)and[Bundle Entrevista LE](StructureDefinition-BundleEntrevistaLE.md)
* Refer to this Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md), [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md), [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md), [Procedure Cirugia LE](StructureDefinition-ProcedureCirugiaLE.md) and [ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)
* Examples for this Profile: [PractitionerRole/0e5c9353-5f8e-4801-b7fc-59395f14344c](PractitionerRole-0e5c9353-5f8e-4801-b7fc-59395f14344c.md), [PractitionerRole/2b238804-f4bd-4005-82d2-9777aa09bea8](PractitionerRole-2b238804-f4bd-4005-82d2-9777aa09bea8.md), [PractitionerRole/4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa](PractitionerRole-4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa.md), [PractitionerRole/5a4ca080-8d59-4409-92f3-e6fc1eb855d6](PractitionerRole-5a4ca080-8d59-4409-92f3-e6fc1eb855d6.md)...Show 2 more,[PractitionerRole/96f2b566-b17b-4e4e-ada0-3986748990ee](PractitionerRole-96f2b566-b17b-4e4e-ada0-3986748990ee.md)and[PractitionerRole/ec19af63-cab4-46b5-a5d7-8df62f596e41](PractitionerRole-ec19af63-cab4-46b5-a5d7-8df62f596e41.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/PractitionerRoleLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerRoleLE.csv), [Excel](StructureDefinition-PractitionerRoleLE.xlsx), [Schematron](StructureDefinition-PractitionerRoleLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerRoleLE",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE",
  "version" : "0.1.2-ballot",
  "name" : "PractitionerRoleLE",
  "title" : "PractitionerRole LE",
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
  "description" : "PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud.",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.id",
        "path" : "PractitionerRole.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "short" : "Referencia al prestador, profesional o administrativo, que varía según evento",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE",
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerAdministrativoLE"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "short" : "Organización, que se identifica con el código de establecimiento",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/OrganizationLE"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "short" : "Roles que el prestador puede realizar",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSPractitionerTipoRolLE"
        }
      },
      {
        "id" : "PractitionerRole.code.coding",
        "path" : "PractitionerRole.code.coding",
        "short" : "Códigos definidos por un sistema terminológico",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "PractitionerRole.code.coding.system",
        "path" : "PractitionerRole.code.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid"
      },
      {
        "id" : "PractitionerRole.code.coding.code",
        "path" : "PractitionerRole.code.coding.code",
        "short" : "Código definido en un sistema terminológico",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
