# Nombre Social - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nombre Social**

## Data Type Profile: Nombre Social 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-nombre-social | *Versión*:0.2.1 |
| Active al 2026-11-24 | *Nombre computable*:EisNombreSocial |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.42.9 | |

 
Tipo relacionado con el formato en que se define un nombre social según Deis. Se recomienda agregar use para la definición del tipo de nombre 

**Usages:**

* This DataType Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-eis-nombre-social.json)

### Vistas formales del contenido del perfil

 [Descripción de perfiles, diferenciales, snapshots y cómo funcionan las distintas presentaciones](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla de elementos clave](#tabs-key) 
*  [Tabla diferencial](#tabs-diff) 
*  [Tabla completa](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todo](#tabs-all) 

#### Terminology Bindings

#### Constraints

Esta estructura deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) 

#### Terminology Bindings

#### Constraints

Esta estructura deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) 

 **Vista de elementos clave** 

#### Terminology Bindings

#### Constraints

 **Vista diferencial** 

Esta estructura deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) 

 **Vista completa** 

#### Terminology Bindings

#### Constraints

Esta estructura deriva de [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) 

 

Otras representaciones del perfil: [CSV](StructureDefinition-eis-nombre-social.csv), [Excel](StructureDefinition-eis-nombre-social.xlsx), [Schematron](StructureDefinition-eis-nombre-social.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eis-nombre-social",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-nombre-social",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.9"
  }],
  "version" : "0.2.1",
  "name" : "EisNombreSocial",
  "title" : "Nombre Social",
  "status" : "active",
  "date" : "2026-11-24T14:47:18-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Tipo relacionado con el formato en que se define un nombre social según Deis. Se recomienda agregar use para la definición del tipo de nombre",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName",
      "short" : "Tipo de dato para determinar el nombre según norma técnica",
      "comment" : "Tipo de dato para el nombre social"
    },
    {
      "id" : "HumanName.use",
      "path" : "HumanName.use",
      "short" : "uso que se le da al nombre",
      "definition" : "Este uso especifico se enfoca a la definición de un nombre social. Es por esta razón que el uso se fuerza a usual",
      "comment" : "Para ser considerado como el slice determinado para el uso de nombre social, el use DEBE ser de valor de código \"usual\"",
      "min" : 1,
      "patternCode" : "usual",
      "mustSupport" : true
    },
    {
      "id" : "HumanName.text",
      "path" : "HumanName.text",
      "max" : "0"
    },
    {
      "id" : "HumanName.family",
      "path" : "HumanName.family",
      "max" : "0"
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "short" : "Nombre Social",
      "definition" : "Nombre Social del Paciente",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HumanName.prefix",
      "path" : "HumanName.prefix",
      "max" : "0"
    },
    {
      "id" : "HumanName.suffix",
      "path" : "HumanName.suffix",
      "max" : "0"
    },
    {
      "id" : "HumanName.period",
      "path" : "HumanName.period",
      "max" : "0"
    }]
  }
}

```
