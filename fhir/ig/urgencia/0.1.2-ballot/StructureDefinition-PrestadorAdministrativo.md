# Prestador Administrativo de Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prestador Administrativo de Urgencia**

## Resource Profile: Prestador Administrativo de Urgencia 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorAdministrativo | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:PrestadorAdministrativo |

 
Prestador Administrativo que participa en la atención de urgencia durante el proceso de admisión 

**Usages:**

* Use this Profile: [Bundle Admision](StructureDefinition-BundleAdmision.md)
* Refer to this Profile: [Encuentro Urgencia](StructureDefinition-EncounterUrg.md)
* Examples for this Profile: [Practitioner/b9f6967f-51b5-49f4-8576-ce9f588523c2](Practitioner-b9f6967f-51b5-49f4-8576-ce9f588523c2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/PrestadorAdministrativo)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PrestadorAdministrativo.csv), [Excel](StructureDefinition-PrestadorAdministrativo.xlsx), [Schematron](StructureDefinition-PrestadorAdministrativo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PrestadorAdministrativo",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorAdministrativo",
  "version" : "0.1.2-ballot",
  "name" : "PrestadorAdministrativo",
  "title" : "Prestador Administrativo de Urgencia",
  "status" : "draft",
  "date" : "2025-12-10T16:35:01-03:00",
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
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Prestador Administrativo que participa en la atención de urgencia durante el proceso de admisión",
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
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner.extension:SexoBiologico",
        "path" : "Practitioner.extension",
        "sliceName" : "SexoBiologico",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:run",
        "path" : "Practitioner.identifier",
        "sliceName" : "run",
        "short" : "Identificador destinado a determinar el número de RUN",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:run.use",
        "path" : "Practitioner.identifier.use",
        "short" : "Uso del identificador",
        "min" : 1,
        "patternCode" : "official"
      },
      {
        "id" : "Practitioner.identifier:run.type",
        "path" : "Practitioner.identifier.type",
        "short" : "Descripción del identificador",
        "definition" : "Descripción para el tipo de identificador",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/IdentificadorPrestador"
        }
      },
      {
        "id" : "Practitioner.identifier:run.type.coding",
        "path" : "Practitioner.identifier.type.coding",
        "short" : "Código definido por un sistema terminológico",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier:run.type.coding.system",
        "path" : "Practitioner.identifier.type.coding.system",
        "short" : "Sistema de codificación para el tipo de identificador",
        "patternUri" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier:run.type.coding.code",
        "path" : "Practitioner.identifier.type.coding.code",
        "short" : "Código que identifica al tipo de documento de identificador",
        "definition" : "Código que identifica al tipo de documento de identificador",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier:run.value",
        "path" : "Practitioner.identifier.value",
        "short" : "Número RUN",
        "definition" : "Valor RUN",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:rnpi",
        "path" : "Practitioner.identifier",
        "sliceName" : "rnpi",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier:pasaporte",
        "path" : "Practitioner.identifier",
        "sliceName" : "pasaporte",
        "max" : "0"
      },
      {
        "id" : "Practitioner.identifier:otro",
        "path" : "Practitioner.identifier",
        "sliceName" : "otro",
        "max" : "0"
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "short" : "Nombre(s) y apellido(s) del prestador administrativo",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "short" : "Primer apellido del administrativo",
        "min" : 1
      },
      {
        "id" : "Practitioner.name.family.extension:segundoApellido",
        "path" : "Practitioner.name.family.extension",
        "sliceName" : "segundoApellido",
        "short" : "Segundo apellido del administrativo"
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "short" : "Nombre(s) del administrativo",
        "min" : 1
      },
      {
        "id" : "Practitioner.telecom.system",
        "path" : "Practitioner.telecom.system",
        "min" : 1
      },
      {
        "id" : "Practitioner.telecom.value",
        "path" : "Practitioner.telecom.value",
        "min" : 1
      },
      {
        "id" : "Practitioner.telecom.rank",
        "path" : "Practitioner.telecom.rank",
        "short" : "Ranking de preferencia de uso de contacto (el más alto es 1)",
        "definition" : "Ranking de preferencia de uso de contacto (el más alto es 1)",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.telecom.period",
        "path" : "Practitioner.telecom.period",
        "short" : "Período en el cual el contacto está o estuvo en uso",
        "definition" : "Período en el cual el contacto está o estuvo en uso",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.telecom.period.start",
        "path" : "Practitioner.telecom.period.start",
        "short" : "Iniciar del uso del medio de contacto",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.telecom.period.end",
        "path" : "Practitioner.telecom.period.end",
        "short" : "Fecha en la cual ya se dejó de utilizar el medio de contacto",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "short" : "Dirección según Guía Core-CL",
        "definition" : "Dirección según Guía Core-CL"
      },
      {
        "id" : "Practitioner.birthDate",
        "path" : "Practitioner.birthDate",
        "short" : "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD",
        "definition" : "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional",
        "path" : "Practitioner.qualification",
        "sliceName" : "TituloProfesional"
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.code.text",
        "path" : "Practitioner.qualification.code.text",
        "short" : "Título Profesional como texto libre"
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica",
        "path" : "Practitioner.qualification",
        "sliceName" : "EspecialidadMedica",
        "max" : "0"
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad",
        "path" : "Practitioner.qualification",
        "sliceName" : "Subespecialidad",
        "max" : "0"
      }
    ]
  }
}

```
