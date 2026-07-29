# Dirección del Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Dirección del Paciente**

## Data Type Profile: Dirección del Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/NIDAddress | *Version*:0.4.8 |
| Draft as of 2025-11-28 | *Computable Name*:NIDAddress |

 
Dirección especificada para el paciente Minsal. 

**Usages:**

* Use this DataType Profile: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/NIDAddress)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NIDAddress.csv), [Excel](StructureDefinition-NIDAddress.xlsx), [Schematron](StructureDefinition-NIDAddress.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NIDAddress",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/NIDAddress",
  "version" : "0.4.8",
  "name" : "NIDAddress",
  "title" : "Dirección del Paciente",
  "status" : "draft",
  "date" : "2025-11-28T16:21:53-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Dirección especificada para el paciente Minsal.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address|1.9.4",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Address",
        "path" : "Address",
        "short" : "Tipo de dato para agregar la dirección de un paciente"
      },
      {
        "id" : "Address.extension:Geolocalizacion",
        "path" : "Address.extension",
        "sliceName" : "Geolocalizacion",
        "short" : "Dirección absoluta, es decir, latitud y longitud."
      },
      {
        "id" : "Address.extension:SituacionCalle",
        "path" : "Address.extension",
        "sliceName" : "SituacionCalle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Address.line",
        "path" : "Address.line",
        "short" : "Calle o avenida, numero y casa o dpto",
        "definition" : "Calle o avenida, numero y casa o dpto",
        "max" : "1"
      },
      {
        "id" : "Address.city.extension",
        "path" : "Address.city.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Address.district.extension",
        "path" : "Address.district.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Address.state.extension",
        "path" : "Address.state.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Address.country.extension",
        "path" : "Address.country.extension",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Address.period",
        "path" : "Address.period",
        "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
        "mustSupport" : true
      }
    ]
  }
}

```
