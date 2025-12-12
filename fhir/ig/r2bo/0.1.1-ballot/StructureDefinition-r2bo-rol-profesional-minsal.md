# Perfil de Rol Profesional - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Rol Profesional**

## Resource Profile: Perfil de Rol Profesional ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal | *Version*:0.1.1-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:RolProfesionalR2BO |

 
Rol que cumple un profesional en un establecimiento de salud. Este puede ser un profesional solicitante, el medico intervencionista o un anatomopatólogo que realiza un informe. 

**Usages:**

* Use this Profile: [Perfil de Bundle del Documento](StructureDefinition-r2bo-bundle-documento.md) and [Perfil de Bundle para Generar Informe](StructureDefinition-r2bo-bundle-generar-informe.md)
* Refer to this Profile: [Perfil de Origen para las Categorías T, N, M (Abstracto)](StructureDefinition-r2bo-categoria-tnm.md), [Perfil del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md), [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md), [Perfil de Muestra](StructureDefinition-r2bo-muestra-biopsia.md)...Show 2 more,[Perfil de Origen de Todos Los Resultados](StructureDefinition-r2bo-resultados-reporte-biopsia.md)and[Perfil de Solicitud de Informe de Anatomía Patológica](StructureDefinition-r2bo-solicitud-informe-apa.md)
* Examples for this Profile: [PractitionerRole/ProfesionalHospital](PractitionerRole-ProfesionalHospital.md) and [PractitionerRole/r2bo-anatopatologo-hospital](PractitionerRole-r2bo-anatopatologo-hospital.md)
* CapabilityStatements using this Profile: [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md), [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md), [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) and [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/r2bo-rol-profesional-minsal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-r2bo-rol-profesional-minsal.csv), [Excel](StructureDefinition-r2bo-rol-profesional-minsal.xlsx), [Schematron](StructureDefinition-r2bo-rol-profesional-minsal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "r2bo-rol-profesional-minsal",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
  "version" : "0.1.1-ballot",
  "name" : "RolProfesionalR2BO",
  "title" : "Perfil de Rol Profesional",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-12T16:54:01-03:00",
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
  "description" : "Rol que cumple un profesional en un establecimiento de salud. Este puede ser un profesional solicitante, el medico intervencionista o un anatomopatólogo que realiza un informe.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-profesional-autorizado-VS"
        }
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-especialistas-autorizado-VS"
        }
      },
      {
        "id" : "PractitionerRole.location",
        "path" : "PractitionerRole.location",
        "short" : "Servicio por el cual proviene el Rol Profesional, es usado principalmente para los profesionales solicitantes.",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante"
            ]
          }
        ]
      }
    ]
  }
}

```
