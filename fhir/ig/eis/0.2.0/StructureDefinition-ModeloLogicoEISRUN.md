# Modelo Logico para el tipo de dato RUN - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modelo Logico para el tipo de dato RUN**

## Logical Model: Modelo Logico para el tipo de dato RUN 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISRUN | *Version*:0.2.0 |
| Active as of 2026-08-05 | *Computable Name*:EISLogicoRUN |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.42.3 | |

 
Modelo Logico para el tipo de dato RUN 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-ModeloLogicoEISRUN.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ModeloLogicoEISRUN.csv), [Excel](StructureDefinition-ModeloLogicoEISRUN.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ModeloLogicoEISRUN",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISRUN",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.3"
  }],
  "version" : "0.2.0",
  "name" : "EISLogicoRUN",
  "title" : "Modelo Logico para el tipo de dato RUN",
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
  "description" : "Modelo Logico para el tipo de dato RUN",
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
    "identity" : "eis-mapeo-run",
    "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/deis-identifier",
    "name" : "Mapeo para RUN",
    "comment" : "Mapeo del modelo lógico para RUN al perfil de DEIS Identificador definido por la norma de Chile"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/ModeloLogicoEISRUN",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ModeloLogicoEISRUN",
      "path" : "ModeloLogicoEISRUN",
      "short" : "Modelo Logico para el tipo de dato RUN",
      "definition" : "Modelo Logico para el tipo de dato RUN"
    },
    {
      "id" : "ModeloLogicoEISRUN.run",
      "path" : "ModeloLogicoEISRUN.run",
      "short" : "El RUN es el n° de identificación que entrega la mayor credibilidad para la individualización inequívoca de las personas y se debe utilizar en todas las personas que lo poseen. En Chile es único, irrepetible e intransferible que posee todo chileno resida o no en Chile.",
      "definition" : "El RUN es el n° de identificación que entrega la mayor credibilidad para la individualización inequívoca de las personas y se debe utilizar en todas las personas que lo poseen. En Chile es único, irrepetible e intransferible que posee todo chileno resida o no en Chile.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-run",
        "map" : "Identifier.value"
      }]
    },
    {
      "id" : "ModeloLogicoEISRUN.digitoVerificador",
      "path" : "ModeloLogicoEISRUN.digitoVerificador",
      "short" : "Parte de la estructura del RUN y debe permitir valor numérico, incluído el cero y la letra k mayúscula o minúscula.",
      "definition" : "Parte de la estructura del RUN y debe permitir valor numérico, incluído el cero y la letra k mayúscula o minúscula.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "isSummary" : true,
      "mapping" : [{
        "identity" : "eis-mapeo-run",
        "map" : "Identifier.extension[digitoVerificador].valueString"
      }]
    }]
  }
}

```
