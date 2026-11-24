# Códigos para Comunas en Chile - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Códigos para Comunas en Chile**

## Extension: Códigos para Comunas en Chile 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas | *Versión*:0.2.1 |
| Active al 2026-11-24 | *Nombre computable*:ComunasCl |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.42.6 | |

Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección

**Contexto de uso**

**Información de uso**

**Usages:**

* Use this Extension: [Dirección](StructureDefinition-eis-direccion.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-eis-comunas.json)

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

 

Otras representaciones del perfil: [CSV](StructureDefinition-eis-comunas.csv), [Excel](StructureDefinition-eis-comunas.xlsx), [Schematron](StructureDefinition-eis-comunas.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eis-comunas",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.6"
  }],
  "version" : "0.2.1",
  "name" : "ComunasCl",
  "title" : "Códigos para Comunas en Chile",
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
  "description" : "Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección",
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
    "expression" : "Address.city"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Códigos para Comunas en Chile",
      "definition" : "Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Código de Comunas",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-comunas-vs"
      }
    }]
  }
}

```
