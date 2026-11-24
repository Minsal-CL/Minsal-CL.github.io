# Prestador Institucional - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Prestador Institucional**

## Resource Profile: Prestador Institucional 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional | *Version*:0.5.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:MINSALPrestadorOrganizacional |

 
Establecimiento asistencial identificado por su código DEIS, sea una clínica completa, un SAPU o una unidad más pequeña con código propio. Puede formar parte de una entidad jurídica distinta (`partOf`) y conservar el código de su establecimiento madre DEIS. Sus sedes y dependencias físicas son MINSAL Localización. 

**Usages:**

* Use this Perfil: [MINSAL Bundle Resultado Consulta: Prestadores Institucinales](StructureDefinition-BundleSearchINSHPD.md)
* Examples for this Perfil: [Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md)
* CapabilityStatements using this Perfil: [Consumidor del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Consumer.md), [Administrador del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Manager.md) and [Origen del Directorio de Proveedores de Atención Médica](CapabilityStatement-NID.IHE.HPD.Source.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.nid|current/StructureDefinition/StructureDefinition-MINSALPrestadorOrganizacional.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALPrestadorOrganizacional.csv), [Excel](StructureDefinition-MINSALPrestadorOrganizacional.xlsx), [Schematron](StructureDefinition-MINSALPrestadorOrganizacional.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALPrestadorOrganizacional",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional",
  "version" : "0.5.0",
  "name" : "MINSALPrestadorOrganizacional",
  "title" : "Prestador Institucional",
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
  "description" : "Establecimiento asistencial identificado por su código DEIS, sea una clínica completa, un SAPU o una unidad más pequeña con código propio. Puede formar parte de una entidad jurídica distinta (`partOf`) y conservar el código de su establecimiento madre DEIS. Sus sedes y dependencias físicas son MINSAL Localización.",
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
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALOrganizacion",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.extension:establecimientoMadre",
      "path" : "Organization.extension",
      "sliceName" : "establecimientoMadre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/nid-establecimiento-madre-deis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:deis",
      "path" : "Organization.identifier",
      "sliceName" : "deis",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:deis.value",
      "path" : "Organization.identifier.value",
      "short" : "Código DEIS según [Establecimientos de salud vigentes](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)"
    },
    {
      "id" : "Organization.type:clase",
      "path" : "Organization.type",
      "sliceName" : "clase",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/nid-clase-organizacion-cs",
          "code" : "establecimiento-asistencial"
        }]
      }
    },
    {
      "id" : "Organization.type:tipoEstablecimiento",
      "path" : "Organization.type",
      "sliceName" : "tipoEstablecimiento",
      "short" : "Tipo de establecimiento según EIS (hospital, CESFAM, SAPU, SAR y otros)",
      "min" : 0,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-tipo-especifico-prestador-cs"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-tipo-especifico-prestador-vs"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nombre oficial del establecimiento"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Entidad jurídica responsable o establecimiento madre DEIS, si es pertenencia organizacional"
    }]
  }
}

```
