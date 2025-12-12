# Bundle Admision - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Admision**

## Resource Profile: Bundle Admision 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:BundleAdmision |

 
Recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia 

### Uso y Alcance

El perfil `BundleAdmision` se emplea para agrupar los recursos que se utilizan en el proceso de admisión de un paciente en un servicio de urgencias. En el se debe hacer envío de:

**Paciente**:

Recurso `Patient` con el perfil `PatientUrg` que representa al paciente que es admitido en el servicio de urgencias.

**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia. Este recurso debe llevar la información respecto a la fecha de admisión y el participante que realiza la admisión.

**Establecimiento**

Recurso `Organization` con el perfil `EstablecimientoUrg` que representa al centro de urgencia que esta prestando la atención al paciente.

**Funcionario que realiza la admisión**

Recurso `Practitioner` con el perfil `PrestadorAdministrativo` que incluye la información demográfica del funcionario.

**Acopañante del paciente**

Recurso `RelatedPerson` con el perfil `AcompananteUrg` que define a la persona con la que el paciente accede al establecimiento de urgencia.

**Usages:**

* Examples for this Profile: [Bundle/Ej1BundleAdmision](Bundle-Ej1BundleAdmision.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/BundleAdmision)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleAdmision.csv), [Excel](StructureDefinition-BundleAdmision.xlsx), [Schematron](StructureDefinition-BundleAdmision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAdmision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision",
  "version" : "0.1.2-ballot",
  "name" : "BundleAdmision",
  "title" : "Bundle Admision",
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
  "description" : "Recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "constraint" : [
          {
            "key" : "encounter-status-admision",
            "severity" : "error",
            "human" : "El recurso Encounter debe venir con un estado 'arrived' para la admisión de urgencia",
            "expression" : "entry.resource.ofType(Encounter).status = 'arrived'",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision"
          },
          {
            "key" : "request-ifNoneExist",
            "severity" : "error",
            "human" : "Si el entry exige un ifNoneExist en el request, entonces este debe comenzar con 'identifier='",
            "expression" : "entry.all(request.ifNoneExist.exists() implies request.ifNoneExist.startsWith('identifier='))",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision"
          },
          {
            "key" : "status-history-admision",
            "severity" : "error",
            "human" : "El Encounter debe incluir statusHistory de Admisión con status arrived",
            "expression" : "entry.where(resource is Encounter).resource.statusHistory.where(status = 'arrived').exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision"
          }
        ]
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "closed"
        },
        "min" : 4
      },
      {
        "id" : "Bundle.entry:paciente",
        "path" : "Bundle.entry",
        "sliceName" : "paciente",
        "short" : "Paciente",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Patient",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:paciente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:paciente.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Patient"
      },
      {
        "id" : "Bundle.entry:paciente.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de paciente",
        "definition" : "Se debe verificar que no exista un paciente con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro",
        "path" : "Bundle.entry",
        "sliceName" : "encuentro",
        "short" : "Encuentro de Urgencia",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:encuentro.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:encuentro.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Encounter"
      },
      {
        "id" : "Bundle.entry:establecimiento",
        "path" : "Bundle.entry",
        "sliceName" : "establecimiento",
        "short" : "Establecimiento de Salud",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:establecimiento.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:establecimiento.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Organization",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EstablecimientoUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:establecimiento.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:establecimiento.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:establecimiento.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Organization"
      },
      {
        "id" : "Bundle.entry:establecimiento.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de establecimiento",
        "definition" : "Se debe verificar que no exista un establecimiento con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:admisionista",
        "path" : "Bundle.entry",
        "sliceName" : "admisionista",
        "short" : "Profesional que realiza la admisión",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:admisionista.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:admisionista.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso Practitioner",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorAdministrativo"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:admisionista.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:admisionista.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:admisionista.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:admisionista.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar existencia de profesional",
        "definition" : "Se debe verificar que no exista un profesional con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:acompanante",
        "path" : "Bundle.entry",
        "sliceName" : "acompanante",
        "short" : "Acompañante",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:acompanante.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "URI de identificación del recurso dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:acompanante.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Recurso RelatedPerson",
        "min" : 1,
        "type" : [
          {
            "code" : "RelatedPerson",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AcompananteUrg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:acompanante.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación de recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:acompanante.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:acompanante.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "RelatedPerson"
      }
    ]
  }
}

```
