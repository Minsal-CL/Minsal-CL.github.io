# Servicio Solicitante del Informe - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Servicio Solicitante del Informe**

## Resource Profile: Servicio Solicitante del Informe 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:R2BOServicioSolicitante |

 
Servicio con el cual es solicitado el informe de Anatomía Patológica. 

**Usages:**

* Use this Profile: [Perfil de Bundle: Documento de Anatomía Patológica](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle: Generar Notificación Obligatoria](StructureDefinition-r2bo-bundle-generar-notificacion.md)
* Refer to this Profile: [Perfil de Rol Profesional](StructureDefinition-r2bo-rol-profesional-minsal.md)
* Examples for this Profile: [Medicina General](Location-r2bo-localizacion-MedicinaGeneral.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-servicio-solicitante)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-servicio-solicitante.csv), [Excel](StructureDefinition-r2bo-servicio-solicitante.xlsx), [Schematron](StructureDefinition-r2bo-servicio-solicitante.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-servicio-solicitante",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante",
  "version" : "0.1.1-ballot",
  "name" : "R2BOServicioSolicitante",
  "title" : "Servicio Solicitante del Informe",
  "status" : "draft",
  "date" : "2026-01-07T10:16:22-03:00",
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
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Servicio con el cual es solicitado el informe de Anatomía Patológica.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreLocalizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "short" : "Servicio Solicitante",
        "min" : 1
      }
    ]
  }
}

```
