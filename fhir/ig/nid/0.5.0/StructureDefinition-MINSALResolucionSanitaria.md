# MINSAL Resolución Sanitaria - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Resolución Sanitaria**

## Resource Profile: MINSAL Resolución Sanitaria 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALResolucionSanitaria | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:MINSALResolucionSanitaria |

 
Resolución de la autoridad sanitaria que autoriza instalaciones o actividades en ubicaciones determinadas. Se relaciona con las MINSAL Localización autorizadas, no con el establecimiento completo: un mismo establecimiento puede tener una resolución para su pabellón y otra para su laboratorio. FHIR R4 no tiene un recurso para autorizaciones, por eso se usa Basic. 

**Usages:**

* This Perfil is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-MINSALResolucionSanitaria.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALResolucionSanitaria.csv), [Excel](StructureDefinition-MINSALResolucionSanitaria.xlsx), [Schematron](StructureDefinition-MINSALResolucionSanitaria.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALResolucionSanitaria",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALResolucionSanitaria",
  "version" : "0.5.0",
  "name" : "MINSALResolucionSanitaria",
  "title" : "MINSAL Resolución Sanitaria",
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
  "description" : "Resolución de la autoridad sanitaria que autoriza instalaciones o actividades en ubicaciones determinadas. Se relaciona con las MINSAL Localización autorizadas, no con el establecimiento completo: un mismo establecimiento puede tener una resolución para su pabellón y otra para su laboratorio. FHIR R4 no tiene un recurso para autorizaciones, por eso se usa Basic.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Basic",
      "path" : "Basic"
    },
    {
      "id" : "Basic.extension",
      "path" : "Basic.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Basic.extension:ubicacion",
      "path" : "Basic.extension",
      "sliceName" : "ubicacion",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-ubicacion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Basic.extension:alcance",
      "path" : "Basic.extension",
      "sliceName" : "alcance",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-alcance"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Basic.extension:vigencia",
      "path" : "Basic.extension",
      "sliceName" : "vigencia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-vigencia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Basic.extension:estado",
      "path" : "Basic.extension",
      "sliceName" : "estado",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-resolucion-estado"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Basic.identifier",
      "path" : "Basic.identifier",
      "short" : "Número de la resolución en el sistema de la autoridad emisora",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Basic.identifier.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Basic.identifier.value",
      "path" : "Basic.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Basic.code",
      "path" : "Basic.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-tipo-autorizacion-sanitaria-cs",
          "code" : "resolucion-sanitaria"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Basic.subject",
      "path" : "Basic.subject",
      "short" : "Titular de la autorización: establecimiento asistencial o entidad jurídica",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Basic.created",
      "path" : "Basic.created",
      "short" : "Fecha de la resolución",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Basic.author",
      "path" : "Basic.author",
      "short" : "Autoridad sanitaria emisora, como una SEREMI de Salud o el ISP",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"]
      }],
      "mustSupport" : true
    }]
  }
}

```
