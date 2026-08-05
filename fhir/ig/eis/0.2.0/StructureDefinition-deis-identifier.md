# DEIS Identificador Paciente - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DEIS Identificador Paciente**

## Data Type Profile: DEIS Identificador Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/deis-identifier | *Version*:0.2.0 |
| Active as of 2026-08-05 | *Computable Name*:DEISIdentificador |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.42.5 | |

 
Forma de identificar a un paciente en Chile 

**Usages:**

* This DataType Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-deis-identifier.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deis-identifier.csv), [Excel](StructureDefinition-deis-identifier.xlsx), [Schematron](StructureDefinition-deis-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deis-identifier",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/deis-identifier",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.5"
  }],
  "version" : "0.2.0",
  "name" : "DEISIdentificador",
  "title" : "DEIS Identificador Paciente",
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
  "description" : "Forma de identificar a un paciente en Chile",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Tipo de dato para identificar un paciente en Chile",
      "comment" : "Variable de identificación"
    },
    {
      "id" : "Identifier.extension",
      "path" : "Identifier.extension",
      "min" : 1
    },
    {
      "id" : "Identifier.extension:digitoVerificador",
      "path" : "Identifier.extension",
      "sliceName" : "digitoVerificador",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/identifier-checkDigit"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Identifier.use",
      "path" : "Identifier.use",
      "definition" : "De contar el Paciente con una Cédula de Identidad Nacional, se sugiere el uso de esta como identificador",
      "comment" : "Se definirá como official pues en una primera etapa solo se considerarán los identidicadores en esa categoría. Para una segunda etapa se abrirá este elemento para cualquier clase de identificador",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Tipo de documento RUN",
      "definition" : "Tipo de documento definido para RUN",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-identificador-cs",
          "code" : "1"
        }]
      },
      "binding" : {
        "strength" : "extensible",
        "description" : "Value Set de Tipos de Documentos y CI Nacionales",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-tipo-identificador-vs"
      }
    },
    {
      "id" : "Identifier.type.coding.system",
      "path" : "Identifier.type.coding.system",
      "short" : "Sistema de identificación de tipos de documentos",
      "definition" : "Sistema mediante el cual se obtienen los códigos para un determinado tipo de documento",
      "comment" : "En la URL del sistema se describe el set de códigos. Por ejemplo si se desea usar Cédula de identidad el código es NNxxx en donde xxx corresponde al identificador del país según la norma iso3166-1-N. Dado lo anterior si fuera Chile, el tipo de documento sería NNCL. En el Caso de Usar un Pasaporte este no requiere identificar país de origen dado que este es un elemento adicional, por lo que independiente del país el código será PPT según el VS indicado"
    },
    {
      "id" : "Identifier.type.coding.code",
      "path" : "Identifier.type.coding.code",
      "short" : "Código para RUN",
      "definition" : "Código para RUN"
    },
    {
      "id" : "Identifier.type.coding.display",
      "path" : "Identifier.type.coding.display",
      "short" : "Cédula de Identidad Chilena",
      "definition" : "Glosa del Código Documento",
      "mustSupport" : true
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Número RUN",
      "definition" : "Valor del RUN"
    }]
  }
}

```
