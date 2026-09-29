# Organización participante en el flujo de imagenología - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organización participante en el flujo de imagenología**

## Resource Profile: Organización participante en el flujo de imagenología 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:OrganizacionParticipanteImagenologia |

 
Perfil para representar establecimientos de origen, servicios ejecutantes de imagenología, unidades de radiología y otras organizaciones participantes en el intercambio de solicitudes e informes. Extiende MINSALPrestadorOrganizacional (NID), el núcleo normativo de MINSAL para prestadores institucionales, según la jerarquía normativa nacional (decisión D-016). Sus reglas son idénticas a las de OrganizacionParticipanteLaboratorio. 

**Usages:**

* Use this Profile: [Bundle de Informe de Imagenología MINSAL](StructureDefinition-MinsalBundleInformeImagenologia.md) and [Bundle de Solicitud de Imagenología MINSAL](StructureDefinition-MinsalBundleSolicitudImagenologia.md)
* Refer to this Profile: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md), [Solicitud de Examen Imagenológico MINSAL](StructureDefinition-MinsalServiceRequestImagen.md) and [Organización participante en el flujo de imagenología](StructureDefinition-OrganizacionParticipanteImagenologia.md)
* Examples for this Profile: [Hospital Dr. César Garavagno Burotto (Hospital de Talca)](Organization-EstablecimientoOrigenImagenEjemplo.md) and [Servicio de Imagenología, Hospital de Talca](Organization-ServicioImagenologiaEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-OrganizacionParticipanteImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganizacionParticipanteImagenologia.csv), [Excel](StructureDefinition-OrganizacionParticipanteImagenologia.xlsx), [Schematron](StructureDefinition-OrganizacionParticipanteImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganizacionParticipanteImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia",
  "version" : "0.3.0",
  "name" : "OrganizacionParticipanteImagenologia",
  "title" : "Organización participante en el flujo de imagenología",
  "status" : "draft",
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil para representar establecimientos de origen, servicios ejecutantes de imagenología, unidades de radiología y otras organizaciones participantes en el intercambio de solicitudes e informes. Extiende MINSALPrestadorOrganizacional (NID), el núcleo normativo de MINSAL para prestadores institucionales, según la jerarquía normativa nacional (decisión D-016). Sus reglas son idénticas a las de OrganizacionParticipanteLaboratorio.",
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
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Código DEIS del establecimiento (ver Casos de uso)",
      "comment" : "Ni MINSALPrestadorOrganizacional (NID) ni CoreOrganizacionCl fijan un `system` oficial para este identificador. Esta guía adopta `http://deis.minsal.cl/establecimientos`, el mismo URI usado por las guías de Laboratorio Clínico, Tiempos de Espera Quirúrgico e IG_Urgencia, como estándar de facto compartido en el portafolio MINSAL, en vez de definir un URI propio. Las unidades internas que no tienen código DEIS (por ejemplo un servicio de imagenología dentro de un hospital) se identifican en el dominio local del establecimiento y cuelgan de él mediante partOf.",
      "min" : 1
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "min" : 1
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
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
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"]
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
