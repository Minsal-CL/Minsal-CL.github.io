# Organización participante en el flujo de laboratorio - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organización participante en el flujo de laboratorio**

## Resource Profile: Organización participante en el flujo de laboratorio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio | *Version*:0.5.1 |
| Draft as of 2026-09-22 | *Computable Name*:OrganizacionParticipanteLaboratorio |

 
Perfil para representar establecimientos de origen, laboratorios ejecutores y otras organizaciones participantes en el intercambio de solicitudes y resultados de laboratorio. Extiende el perfil de organización de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Organization de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL. 

**Usages:**

* Use this Profile: [Bundle de Resultado de Laboratorio MINSAL](StructureDefinition-MinsalBundleResultadoLaboratorio.md) and [Bundle de Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalBundleSolicitudLaboratorio.md)
* Refer to this Profile: [Resultado atomizado de laboratorio MINSAL](StructureDefinition-MinsalObservacionLaboratorio.md), [Solicitud de Laboratorio MINSAL](StructureDefinition-MinsalServiceRequestLab.md), [Organización participante en el flujo de laboratorio](StructureDefinition-OrganizacionParticipanteLaboratorio.md) and [Resultado diagnóstico de laboratorio](StructureDefinition-ResultadoDiagnosticoLaboratorio.md)
* Examples for this Profile: [Hospital Dr. César Garavagno Burotto (Hospital de Talca)](Organization-EstablecimientoOrigenEjemplo.md) and [Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)](Organization-LaboratorioEjecutorEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.laboratorio|current/StructureDefinition/StructureDefinition-OrganizacionParticipanteLaboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganizacionParticipanteLaboratorio.csv), [Excel](StructureDefinition-OrganizacionParticipanteLaboratorio.xlsx), [Schematron](StructureDefinition-OrganizacionParticipanteLaboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganizacionParticipanteLaboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio",
  "version" : "0.5.1",
  "name" : "OrganizacionParticipanteLaboratorio",
  "title" : "Organización participante en el flujo de laboratorio",
  "status" : "draft",
  "date" : "2026-09-22T09:29:02-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para representar establecimientos de origen, laboratorios ejecutores y otras organizaciones participantes en el intercambio de solicitudes y resultados de laboratorio. Extiende el perfil de organización de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Organization de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
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
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Código DEIS del establecimiento (ver Código de Establecimiento DEIS)",
      "comment" : "CoreOrganizacionCl aún no fija un `system` oficial para este identificador. Esta guía adopta `http://deis.minsal.cl/establecimientos`, el mismo URI usado por las guías de Tiempos de Espera Quirúrgico e IG_Urgencia, como estándar de facto compartido en el portafolio MINSAL, en vez de definir un URI propio.",
      "min" : 1
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "mustSupport" : true
    }]
  }
}

```
