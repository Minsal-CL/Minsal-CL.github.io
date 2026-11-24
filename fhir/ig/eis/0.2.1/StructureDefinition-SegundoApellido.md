# Segundo Apellido - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Segundo Apellido**

## Extension: Segundo Apellido 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/SegundoApellido | *Versión*:0.2.1 |
| Active al 2026-11-24 | *Nombre computable*:SegundoApellido |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.42.4 | |

Segundo Apellido

**Contexto de uso**

**Información de uso**

**Usages:**

* Use this Extension: [Nombre Oficial](StructureDefinition-eis-nombre-oficial.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-SegundoApellido.json)

### Vistas formales del contenido de la extensión

 [Descripción de perfiles, diferenciales, snapshots y cómo funcionan las presentaciones XML y JSON](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabla diferencial](#tabs-diff) 
*  [Tabla completa](#tabs-snap) 
*  [Estadísticas/Referencias](#tabs-summ) 
*  [Todo](#tabs-all) 

Esta estructura deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estructura deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vista diferencial** 

Esta estructura deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vista completa** 

Esta estructura deriva de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Otras representaciones del perfil: [CSV](StructureDefinition-SegundoApellido.csv), [Excel](StructureDefinition-SegundoApellido.xlsx), [Schematron](StructureDefinition-SegundoApellido.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SegundoApellido",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/SegundoApellido",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.4"
  }],
  "version" : "0.2.1",
  "name" : "SegundoApellido",
  "title" : "Segundo Apellido",
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
  "description" : "Segundo Apellido",
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
    "expression" : "HumanName.family"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Segundo Apellido",
      "definition" : "Segundo Apellido"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/SegundoApellido"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Segundo apellido de la persona",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
