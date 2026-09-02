# Nombre Oficial - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nombre Oficial**

## Data Type Profile: Nombre Oficial 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-nombre-oficial | *Version*:0.2.0 |
| Active as of 2026-08-05 | *Computable Name*:EISNombreOficial |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.42.8 | |

 
Tipo relacionado con el formato en que se define un nombre oficial según Deis. Se recomienda agregar use para la definición del tipo de nombre 

**Usages:**

* This DataType Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.eis|current/StructureDefinition/StructureDefinition-eis-nombre-oficial.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eis-nombre-oficial.csv), [Excel](StructureDefinition-eis-nombre-oficial.xlsx), [Schematron](StructureDefinition-eis-nombre-oficial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eis-nombre-oficial",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-nombre-oficial",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.42.8"
  }],
  "version" : "0.2.0",
  "name" : "EISNombreOficial",
  "title" : "Nombre Oficial",
  "status" : "active",
  "date" : "2026-08-05T17:07:07-04:00",
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
  "description" : "Tipo relacionado con el formato en que se define un nombre oficial según Deis. Se recomienda agregar use para la definición del tipo de nombre",
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
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName",
      "short" : "Tipo de dato para determinar el nombre de un paciente según norma técnica",
      "comment" : "Tipo de dato para el nombre del Paciente"
    },
    {
      "id" : "HumanName.use",
      "path" : "HumanName.use",
      "short" : "uso del nombre del paciente",
      "definition" : "este slice corresponde al nombre registrado al momento de nacer, por lo que se fuerza el valor \"official\"",
      "comment" : "Para ser considerado como el slice determinado para el uso de nombre completo, el use DEBE ser de valor de código \"official\"",
      "min" : 1,
      "patternCode" : "official",
      "mustSupport" : true
    },
    {
      "id" : "HumanName.family",
      "path" : "HumanName.family",
      "short" : "1er Apellido",
      "definition" : "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HumanName.family.extension",
      "path" : "HumanName.family.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Extensión para el segundo apellido",
      "definition" : "Extensión para la declaración de un segundo apellido"
    },
    {
      "id" : "HumanName.family.extension:segundoApellido",
      "path" : "HumanName.family.extension",
      "sliceName" : "segundoApellido",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/SegundoApellido"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "short" : "Primer nombre y nombres del Paciente",
      "definition" : "Todos los nombres de los pacientes no necesariamente solo el Primer Nombre",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
