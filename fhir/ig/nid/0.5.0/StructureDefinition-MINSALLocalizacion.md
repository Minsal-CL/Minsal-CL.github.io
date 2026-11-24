# MINSAL Localización - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Localización**

## Resource Profile: MINSAL Localización 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALLocalizacion | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:MINSALLocalizacion |

 
Lugar físico u operacional: sede o edificio, dependencia interna con relevancia interoperable o regulatoria, o local farmacéutico (MIDAS o SAFIS). El establecimiento asistencial con código DEIS no es una localización: es una MINSAL Organización, y sus sedes y dependencias se relacionan con él mediante `managingOrganization`. Varios identificadores oficiales solo si representan el mismo lugar y la misma granularidad. Un lugar contenido en otro es otra localización, relacionada con `partOf`. 

**Usages:**

* Refer to this Perfil: [MINSAL Localización](StructureDefinition-MINSALLocalizacion.md) and [Ubicación autorizada](StructureDefinition-nid-resolucion-ubicacion.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-MINSALLocalizacion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALLocalizacion.csv), [Excel](StructureDefinition-MINSALLocalizacion.xlsx), [Schematron](StructureDefinition-MINSALLocalizacion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALLocalizacion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALLocalizacion",
  "version" : "0.5.0",
  "name" : "MINSALLocalizacion",
  "title" : "MINSAL Localización",
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
  "description" : "Lugar físico u operacional: sede o edificio, dependencia interna con relevancia interoperable o regulatoria, o local farmacéutico (MIDAS o SAFIS). El establecimiento asistencial con código DEIS no es una localización: es una MINSAL Organización, y sus sedes y dependencias se relacionan con él mediante `managingOrganization`. Varios identificadores oficiales solo si representan el mismo lugar y la misma granularidad. Un lugar contenido en otro es otra localización, relacionada con `partOf`.",
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
  "type" : "Location",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreLocalizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Identificador oficial del lugar: MIDAS, SAFIS, GLN o propio del establecimiento",
      "min" : 1
    },
    {
      "id" : "Location.identifier.system",
      "path" : "Location.identifier.system",
      "min" : 1
    },
    {
      "id" : "Location.identifier.value",
      "path" : "Location.identifier.value",
      "min" : 1
    },
    {
      "id" : "Location.identifier:midas",
      "path" : "Location.identifier",
      "sliceName" : "midas",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier:midas.system",
      "path" : "Location.identifier.system",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/midas-establecimiento"
    },
    {
      "id" : "Location.identifier:safis",
      "path" : "Location.identifier",
      "sliceName" : "safis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier:safis.system",
      "path" : "Location.identifier.system",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/NamingSystem/safis-establecimiento"
    },
    {
      "id" : "Location.identifier:gln",
      "path" : "Location.identifier",
      "sliceName" : "gln",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier:gln.system",
      "path" : "Location.identifier.system",
      "fixedUri" : "http://www.gs1.org/gln"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "min" : 1
    },
    {
      "id" : "Location.operationalStatus",
      "path" : "Location.operationalStatus",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0116|3.0.0"
      }
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "Nombre oficial o preferente del lugar",
      "min" : 1
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "Tipo de recinto",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/nid-tipo-recinto-vs"
      }
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "short" : "Contactos propios del lugar, no datos personales de responsables"
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "short" : "Establecimiento asistencial o entidad jurídica responsable del lugar",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion"]
      }]
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "Lugar que lo contiene físicamente, por ejemplo la sede que contiene un pabellón",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALLocalizacion"]
      }],
      "mustSupport" : true
    }]
  }
}

```
