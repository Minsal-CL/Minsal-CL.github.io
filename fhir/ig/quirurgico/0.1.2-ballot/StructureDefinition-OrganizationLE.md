# Organization LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization LE**

## Resource Profile: Organization LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/OrganizationLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:OrganizationLE |

 
Organization LE según[Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md)
* Refer to this Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)
* Examples for this Profile: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/OrganizationLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganizationLE.csv), [Excel](StructureDefinition-OrganizationLE.xlsx), [Schematron](StructureDefinition-OrganizationLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganizationLE",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/OrganizationLE",
  "version" : "0.1.2-ballot",
  "name" : "OrganizationLE",
  "title" : "Organization LE",
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
  "description" : "Organization LE según [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
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
  "type" : "Organization",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.id",
        "path" : "Organization.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "short" : "Código DEIS del establecimiento de destino",
        "definition" : "Código DEIS del establecimiento de destino",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier.system",
        "path" : "Organization.identifier.system",
        "short" : "CS de los codigos DEIS",
        "definition" : "CS de los codigos DEIS",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSEstablecimientoDestino"
        }
      },
      {
        "id" : "Organization.identifier.value",
        "path" : "Organization.identifier.value",
        "short" : "Código DEIS del establecimiento",
        "definition" : "Código DEIS del establecimiento según [Códigos del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
        "min" : 1
      }
    ]
  }
}

```
