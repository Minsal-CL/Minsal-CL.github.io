# Establecimiento GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establecimiento GES**

## Resource Profile: Establecimiento GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:EstablecimientoGES |

 
Establecimiento identificado por código DEIS. El Servicio de Salud se deriva del catálogo (CSEstablecimientoDEIS.servicioSalud) o se informa en partOf como referencia lógica. 

**Usages:**

* Refer to this Perfil: [Caso GES](StructureDefinition-caso-ges.md), [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md), [Diagnóstico GES](StructureDefinition-diagnostico-ges.md), [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md)... Show 6 more, [Establecimiento de destino](StructureDefinition-ext-establecimiento-destino.md), [MessageHeader — Notificación GES](StructureDefinition-mh-notificacion-ges.md), [OA — Orden de atención](StructureDefinition-oa-ges.md), [PO — Prestación otorgada](StructureDefinition-po-ges.md), [Rol clínico GES](StructureDefinition-rol-clinico-ges.md) and [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)
* Examples for this Perfil: [Centro de Salud Familiar La Florida](Organization-cesfam-la-florida.md), [Centro de Salud Familiar Santo Tomás](Organization-cesfam-santo-tomas.md), [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-hosp-la-florida.md) and [Complejo Hospitalario Dr. Sótero del Río](Organization-sotero-del-rio.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-establecimiento-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-establecimiento-ges.csv), [Excel](StructureDefinition-establecimiento-ges.xlsx), [Schematron](StructureDefinition-establecimiento-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "establecimiento-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges",
  "version" : "0.4.0",
  "name" : "EstablecimientoGES",
  "title" : "Establecimiento GES",
  "status" : "draft",
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Establecimiento identificado por código DEIS. El Servicio de Salud se deriva del catálogo (CSEstablecimientoDEIS.servicioSalud) o se informa en partOf como referencia lógica.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "constraint" : [{
        "key" : "ges-est-deis",
        "severity" : "error",
        "human" : "El establecimiento se identifica con DEIS (6 dígitos, system del portafolio) o, en transición, con el código DEIS2 de SIGGES",
        "expression" : "identifier.where(system='http://deis.minsal.cl/establecimientos' or system='https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis').exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Organization.identifier:deis",
      "path" : "Organization.identifier",
      "sliceName" : "deis",
      "short" : "Código DEIS de 6 dígitos (system del portafolio)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:deis.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://deis.minsal.cl/establecimientos"
    },
    {
      "id" : "Organization.identifier:deis.value",
      "path" : "Organization.identifier.value",
      "constraint" : [{
        "key" : "ges-deis6",
        "severity" : "error",
        "human" : "El código DEIS del portafolio tiene 6 dígitos",
        "expression" : "matches('^[0-9]{6}$')",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"
      }]
    },
    {
      "id" : "Organization.identifier:deisSigges",
      "path" : "Organization.identifier",
      "sliceName" : "deisSigges",
      "short" : "Código DEIS2 NN-NNN de SIGGES (transición, D-004)",
      "comment" : "Obligatorio solo para los establecimientos sin DEIS de 6 dígitos en el catálogo. El traductor lo deriva de identifier[deis] con la propiedad deis6 de CSEstablecimientoDEIS.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:deisSigges.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.type:tipoOrigen",
      "path" : "Organization.type",
      "sliceName" : "tipoOrigen",
      "short" : "tipoDeisOrigen: público | privado",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:tipoOrigen.coding",
      "path" : "Organization.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.type:tipoOrigen.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Servicio de Salud (referencia lógica con identifier.system = CodeSystem servicio-salud-deis)",
      "mustSupport" : true
    }]
  }
}

```
