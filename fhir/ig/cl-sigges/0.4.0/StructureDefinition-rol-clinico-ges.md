# Rol clínico GES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rol clínico GES**

## Resource Profile: Rol clínico GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:RolClinicoGES |

 
Quién, dónde y en qué especialidad se emite el documento: profesional + establecimiento que otorga + especialidad de origen. Un solo recurso resuelve runProfesional, deisEstablecimientoOtorga y especialidadOrigen. 

**Usages:**

* Refer to this Perfil: [CC — Cierre de caso](StructureDefinition-cierre-caso-ges.md), [Diagnóstico GES](StructureDefinition-diagnostico-ges.md), [EXGO — Excepción de garantía de oportunidad](StructureDefinition-excepcion-garantia-ges.md), [MessageHeader — Notificación GES](StructureDefinition-mh-notificacion-ges.md)... Show 3 more, [OA — Orden de atención](StructureDefinition-oa-ges.md), [PO — Prestación otorgada](StructureDefinition-po-ges.md) and [SIC — Solicitud de interconsulta](StructureDefinition-sic-ges.md)
* Examples for this Perfil: [PractitionerRole/rol-endoscopia-hlf](PractitionerRole-rol-endoscopia-hlf.md), [PractitionerRole/rol-fuentes-hlf](PractitionerRole-rol-fuentes-hlf.md), [PractitionerRole/rol-paredes-hlf](PractitionerRole-rol-paredes-hlf.md), [PractitionerRole/rol-rojas-cesfam-lf](PractitionerRole-rol-rojas-cesfam-lf.md)... Show 2 more, [PractitionerRole/rol-soto-sotero](PractitionerRole-rol-soto-sotero.md) and [PractitionerRole/rol-vergara-cesfam-st](PractitionerRole-rol-vergara-cesfam-st.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.sigges|current/StructureDefinition/StructureDefinition-rol-clinico-ges.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rol-clinico-ges.csv), [Excel](StructureDefinition-rol-clinico-ges.xlsx), [Schematron](StructureDefinition-rol-clinico-ges.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rol-clinico-ges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges",
  "version" : "0.4.0",
  "name" : "RolClinicoGES",
  "title" : "Rol clínico GES",
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
  "description" : "Quién, dónde y en qué especialidad se emite el documento: profesional + establecimiento que otorga + especialidad de origen. Un solo recurso resuelve runProfesional, deisEstablecimientoOtorga y especialidadOrigen.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Profesional (obligatorio en SIC, IPD, OA, CC, EXGO, HD; opcional en PO)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      }]
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "especialidadOrigen (catálogo SIGGES)",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-especialidad-sigges"
      }
    }]
  }
}

```
