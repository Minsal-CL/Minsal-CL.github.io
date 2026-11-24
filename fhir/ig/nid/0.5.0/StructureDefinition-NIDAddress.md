# Dirección del Paciente - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Dirección del Paciente**

## Data Type Profile: Dirección del Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/NIDAddress | *Version*:0.5.0 |
| Draft as of 2026-11-24 | *Computable Name*:NIDAddress |

 
Dirección especificada para el paciente Minsal. Cumple la dirección de CL Core y la de EIS 0.2.0 (eis-direccion): la comuna, la provincia, la región y el país se codifican con ambas extensiones. 

**Usages:**

* Use this DataType Profile: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-NIDAddress.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NIDAddress.csv), [Excel](StructureDefinition-NIDAddress.xlsx), [Schematron](StructureDefinition-NIDAddress.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NIDAddress",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/NIDAddress",
  "version" : "0.5.0",
  "name" : "NIDAddress",
  "title" : "Dirección del Paciente",
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
  "description" : "Dirección especificada para el paciente Minsal. Cumple la dirección de CL Core y la de EIS 0.2.0 (eis-direccion): la comuna, la provincia, la región y el país se codifican con ambas extensiones.",
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:tipoDeVia",
      "path" : "Address.extension",
      "sliceName" : "tipoDeVia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-tipo-de-via"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "short" : "Calle o avenida, numero y casa o dpto",
      "definition" : "Calle o avenida, numero y casa o dpto",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "min" : 1
    },
    {
      "id" : "Address.city.extension",
      "path" : "Address.city.extension",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Address.city.extension:comunasEIS",
      "path" : "Address.city.extension",
      "sliceName" : "comunasEIS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.district.extension",
      "path" : "Address.district.extension",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Address.district.extension:provinciasEIS",
      "path" : "Address.district.extension",
      "sliceName" : "provinciasEIS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.state.extension",
      "path" : "Address.state.extension",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Address.state.extension:regionesEIS",
      "path" : "Address.state.extension",
      "sliceName" : "regionesEIS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.country.extension",
      "path" : "Address.country.extension",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Address.country.extension:paisesEIS",
      "path" : "Address.country.extension",
      "sliceName" : "paisesEIS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.period",
      "path" : "Address.period",
      "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
      "mustSupport" : true
    }]
  }
}

```
