# Modelo Logico para el tipo de dato Direccion - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modelo Logico para el tipo de dato Direccion**

## Logical Model: Modelo Logico para el tipo de dato Direccion 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISDireccion | *Version*:0.2.0 |
| Active as of 2026-08-05 | *Computable Name*:EISLogicoDireccion |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.42.1 | |

 
Modelo Logico para el tipo de dato Nombre 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-ModeloLogicoEISDireccion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ModeloLogicoEISDireccion.csv), [Excel](StructureDefinition-ModeloLogicoEISDireccion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ModeloLogicoEISDireccion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISDireccion",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.1"
  }],
  "version" : "0.2.0",
  "name" : "EISLogicoDireccion",
  "title" : "Modelo Logico para el tipo de dato Direccion",
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
  "description" : "Modelo Logico para el tipo de dato Nombre",
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
    "identity" : "eis-mapeo-direccion",
    "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-direccion",
    "name" : "Mapeo para dirección",
    "comment" : "Mapeo del modelo lógico para dirección al perfil de dirección definido por la norma de Chile"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISDireccion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ModeloLogicoEISDireccion",
      "path" : "ModeloLogicoEISDireccion",
      "short" : "Modelo Logico para el tipo de dato Direccion",
      "definition" : "Modelo Logico para el tipo de dato Nombre"
    },
    {
      "id" : "ModeloLogicoEISDireccion.region",
      "path" : "ModeloLogicoEISDireccion.region",
      "short" : "Es la máxima unidad administrativa en que se divide el país. La regionalización que actualmente rige en el país, comenzó a aplicarse en 1974. Actualmente existen 16 regiones",
      "definition" : "Es la máxima unidad administrativa en que se divide el país. La regionalización que actualmente rige en el país, comenzó a aplicarse en 1974. Actualmente existen 16 regiones",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.state.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.provincia",
      "path" : "ModeloLogicoEISDireccion.provincia",
      "short" : "Es una subdivisión administrativa menor que la región y que puede abarcar varias comunas",
      "definition" : "Es una subdivisión administrativa menor que la región y que puede abarcar varias comunas",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.district.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.comuna",
      "path" : "ModeloLogicoEISDireccion.comuna",
      "short" : "Es una subdivisión administrativa menor que la región que corresponde a una zona urbana, rural o mixta",
      "definition" : "Es una subdivisión administrativa menor que la región que corresponde a una zona urbana, rural o mixta",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.city.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.limiteUrbanoCensalREVISAR",
      "path" : "ModeloLogicoEISDireccion.limiteUrbanoCensalREVISAR",
      "short" : "Indica si la dirección se encuentra dentro del área urbana o rural, según la clasificación oficial del Instituto Nacional de Estadísticas (INE) de Chile.",
      "definition" : "Indica si la dirección se encuentra dentro del área urbana o rural, según la clasificación oficial del Instituto Nacional de Estadísticas (INE) de Chile.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.tipoDeVia",
      "path" : "ModeloLogicoEISDireccion.tipoDeVia",
      "short" : "Corresponde al tipo o clasificación de calle. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde al tipo o clasificación de calle. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.datoDeLaVia",
      "path" : "ModeloLogicoEISDireccion.datoDeLaVia",
      "short" : "Corresponde al nombre de la calle, avenida, pasaje, etc. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde al nombre de la calle, avenida, pasaje, etc. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 2,
      "max" : "*",
      "type" : [{
        "code" : "Element"
      }],
      "isSummary" : true
    },
    {
      "id" : "ModeloLogicoEISDireccion.datoDeLaVia.nombreDeLaVia",
      "path" : "ModeloLogicoEISDireccion.datoDeLaVia.nombreDeLaVia",
      "short" : "Corresponden a la caracterización de la vía. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponden a la caracterización de la vía. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.line[0]"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.datoDeLaVia.numero",
      "path" : "ModeloLogicoEISDireccion.datoDeLaVia.numero",
      "short" : "Corresponde al número de la dirección. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde al número de la dirección. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.line[1]"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.coordenadasGeograficas",
      "path" : "ModeloLogicoEISDireccion.coordenadasGeograficas",
      "short" : "Corresponde a las coordenadas geográficas de la dirección, expresadas en formato de latitud y longitud. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde a las coordenadas geográficas de la dirección, expresadas en formato de latitud y longitud. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element"
      }],
      "isSummary" : true
    },
    {
      "id" : "ModeloLogicoEISDireccion.coordenadasGeograficas.latitud",
      "path" : "ModeloLogicoEISDireccion.coordenadasGeograficas.latitud",
      "short" : "Corresponde a la latitud de la dirección, expresada en formato decimal. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde a la latitud de la dirección, expresada en formato decimal. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.extension"
      }]
    },
    {
      "id" : "ModeloLogicoEISDireccion.coordenadasGeograficas.longitud",
      "path" : "ModeloLogicoEISDireccion.coordenadasGeograficas.longitud",
      "short" : "Corresponde a la longitud de la dirección, expresada en formato decimal. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "definition" : "Corresponde a la longitud de la dirección, expresada en formato decimal. Puede utilizarse para datos de ubicación tanto de prestadores individuales, institucionales como usuarios del sistema de salud.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-direccion",
        "map" : "Address.extension"
      }]
    }]
  }
}

```
