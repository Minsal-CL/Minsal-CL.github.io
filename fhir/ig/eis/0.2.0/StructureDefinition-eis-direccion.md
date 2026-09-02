# Dirección - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dirección**

## Data Type Profile: Dirección 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-direccion | *Version*:0.2.0 |
| Active as of 2026-08-05 | *Computable Name*:DireccionEIS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.42.7 | |

 
Dirección 

**Usages:**

* This DataType Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-eis-direccion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eis-direccion.csv), [Excel](StructureDefinition-eis-direccion.xlsx), [Schematron](StructureDefinition-eis-direccion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eis-direccion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-direccion",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.7"
  }],
  "version" : "0.2.0",
  "name" : "DireccionEIS",
  "title" : "Dirección",
  "status" : "active",
  "date" : "2026-08-05T16:59:51-04:00",
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
  "description" : "Dirección",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "version" : "20210120",
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
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address",
      "short" : "Tipo de dato para agragar la dirección de un paciente",
      "comment" : "Variable dirección"
    },
    {
      "id" : "Address.extension:coordenadas",
      "path" : "Address.extension",
      "sliceName" : "coordenadas",
      "short" : "Extensión para agregar coordenadas geográficas",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/geolocation|5.3.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:tipoDeVia",
      "path" : "Address.extension",
      "sliceName" : "tipoDeVia",
      "short" : "Extensión para agregar el tipo de vía",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-tipo-de-via"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.use",
      "path" : "Address.use",
      "short" : "Definición del tipo de domicilio home | work | temp | old (requerido)",
      "definition" : "Se especifica el tipo de dirección notificada. Esto debe ser segun los códigos definidos por HL7 FHIR",
      "mustSupport" : true
    },
    {
      "id" : "Address.text",
      "path" : "Address.text",
      "short" : "Campo para escribir la dirección completa",
      "mustSupport" : true
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "short" : "Calle o avenida, numero y casa o depto",
      "definition" : "Aquí se escribe toda la dirección completa",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Campo para Comuna de residencia",
      "definition" : "Campo para Comuna de residencia.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Address.city.extension",
      "path" : "Address.city.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Código de Comunas",
      "definition" : "Código de Comunas",
      "min" : 1
    },
    {
      "id" : "Address.city.extension:comunas",
      "path" : "Address.city.extension",
      "sliceName" : "comunas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.district",
      "path" : "Address.district",
      "short" : "Campo para Provincia de Residencia",
      "definition" : "Campo para Provincia de Residencia. Se usa el valueSet de códigos de provicias definidos a nivel nacional.",
      "mustSupport" : true
    },
    {
      "id" : "Address.district.extension",
      "path" : "Address.district.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Código de Regiones",
      "definition" : "Código de Regiones",
      "min" : 1
    },
    {
      "id" : "Address.district.extension:provincias",
      "path" : "Address.district.extension",
      "sliceName" : "provincias",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.state",
      "path" : "Address.state",
      "short" : "Campo para la Región",
      "definition" : "Campo Región. Se usa el valueSet de códigos de regiones definidos a nivel nacional.",
      "mustSupport" : true
    },
    {
      "id" : "Address.state.extension",
      "path" : "Address.state.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Código de Regiones",
      "definition" : "Código de Regiones",
      "min" : 1
    },
    {
      "id" : "Address.state.extension:regiones",
      "path" : "Address.state.extension",
      "sliceName" : "regiones",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "Campo para el País",
      "definition" : "Campo para el País",
      "mustSupport" : true
    },
    {
      "id" : "Address.country.extension",
      "path" : "Address.country.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Código de País",
      "definition" : "Código de País",
      "min" : 1
    },
    {
      "id" : "Address.country.extension:paises",
      "path" : "Address.country.extension",
      "sliceName" : "paises",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises"]
      }],
      "mustSupport" : true
    }]
  }
}

```
