# MINSAL Organización - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Organización**

## Resource Profile: MINSAL Organización 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:MINSALOrganizacion |

 
Organización del directorio: entidad jurídica (RUT), establecimiento asistencial (código DEIS) o autoridad sanitaria. `type` declara cuál de ellas es. La jerarquía administrativa DEIS, la jurídica y la física son independientes: las dos primeras se expresan con `partOf` entre organizaciones, y la física con MINSAL Localización. 

**Usages:**

* Derived from this Perfil: [Prestador Institucional](StructureDefinition-MINSALPrestadorOrganizacional.md)
* Refer to this Perfil: [MINSAL Localización](StructureDefinition-MINSALLocalizacion.md), [MINSAL Organización](StructureDefinition-MINSALOrganizacion.md), [MINSAL Resolución Sanitaria](StructureDefinition-MINSALResolucionSanitaria.md) and [MINSAL Rol Profesional](StructureDefinition-MINSALRolProfesional.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-MINSALOrganizacion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALOrganizacion.csv), [Excel](StructureDefinition-MINSALOrganizacion.xlsx), [Schematron](StructureDefinition-MINSALOrganizacion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALOrganizacion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion",
  "version" : "0.5.0",
  "name" : "MINSALOrganizacion",
  "title" : "MINSAL Organización",
  "status" : "draft",
  "date" : "2026-11-24T16:26:52-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Organización del directorio: entidad jurídica (RUT), establecimiento asistencial (código DEIS) o autoridad sanitaria. `type` declara cuál de ellas es. La jerarquía administrativa DEIS, la jurídica y la física son independientes: las dos primeras se expresan con `partOf` entre organizaciones, y la física con MINSAL Localización.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "constraint" : [{
        "key" : "nid-org-1",
        "severity" : "error",
        "human" : "Una entidad jurídica se identifica con su RUT",
        "expression" : "type.coding.where(system = 'https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs' and code = 'entidad-juridica').exists() implies identifier.where(system = 'https://interoperabilidad.minsal.cl/fhir/NamingSystem/rut').exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"
      },
      {
        "key" : "nid-org-2",
        "severity" : "error",
        "human" : "Un establecimiento asistencial se identifica con su código DEIS",
        "expression" : "type.coding.where(system = 'https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs' and code = 'establecimiento-asistencial').exists() implies identifier.where(system = 'https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento').exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "RUT de la entidad jurídica, código DEIS del establecimiento y, si corresponde, GLN",
      "min" : 1
    },
    {
      "id" : "Organization.identifier.system",
      "path" : "Organization.identifier.system",
      "min" : 1
    },
    {
      "id" : "Organization.identifier.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:rut",
      "path" : "Organization.identifier",
      "sliceName" : "rut",
      "short" : "RUT de la entidad jurídica",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:rut.system",
      "path" : "Organization.identifier.system",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/rut"
    },
    {
      "id" : "Organization.identifier:rut.value",
      "path" : "Organization.identifier.value",
      "constraint" : [{
        "key" : "nid-rut-1",
        "severity" : "error",
        "human" : "RUT con formato normalizado: dígitos, guion y dígito verificador (0-9 o K)",
        "expression" : "matches('^[0-9]{1,8}-[0-9K]$')",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"
      }]
    },
    {
      "id" : "Organization.identifier:deis",
      "path" : "Organization.identifier",
      "sliceName" : "deis",
      "short" : "Código DEIS del establecimiento asistencial",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:deis.system",
      "path" : "Organization.identifier.system",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/deis-establecimiento"
    },
    {
      "id" : "Organization.identifier:gln",
      "path" : "Organization.identifier",
      "sliceName" : "gln",
      "short" : "GLN asignado a la organización (no a un recinto)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:gln.system",
      "path" : "Organization.identifier.system",
      "fixedUri" : "http://www.gs1.org/gln"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Clase de organización y, en un establecimiento, su tipo",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:clase",
      "path" : "Organization.type",
      "sliceName" : "clase",
      "short" : "entidad-juridica | establecimiento-asistencial | autoridad-sanitaria",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/nid-clase-organizacion-vs"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nombre oficial o razón social",
      "min" : 1
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "short" : "Dirección administrativa o institucional; la dirección física va en la localización"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Organización de la que forma parte",
      "definition" : "Un establecimiento apunta a su entidad jurídica cuando es distinta de él. Un establecimiento hijo DEIS apunta a su establecimiento madre solo si la relación es de pertenencia organizacional; el código madre se conserva aparte.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"]
      }],
      "mustSupport" : true
    }]
  }
}

```
