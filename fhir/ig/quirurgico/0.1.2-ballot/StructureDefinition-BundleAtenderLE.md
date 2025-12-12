# Bundle Atender LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Atender LE**

## Resource Profile: Bundle Atender LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleAtenderLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleAtenderLE |

 
Recurso Bundle Atender LE que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico. 

**Usages:**

* Examples for this Profile: [Bundle/EjBundleAtender](Bundle-EjBundleAtender.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/BundleAtenderLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleAtenderLE.csv), [Excel](StructureDefinition-BundleAtenderLE.xlsx), [Schematron](StructureDefinition-BundleAtenderLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAtenderLE",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    }
  ],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleAtenderLE",
  "version" : "0.1.2-ballot",
  "name" : "BundleAtenderLE",
  "title" : "Bundle Atender LE",
  "status" : "draft",
  "date" : "2025-12-10T09:54:02-03:00",
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
  "description" : "Recurso Bundle Atender LE que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico.",
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
        "path" : "Bundle"
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
        "min" : 6
      },
      {
        "id" : "Bundle.entry:EncuentroAtender",
        "path" : "Bundle.entry",
        "sliceName" : "EncuentroAtender",
        "short" : "Entrada en el Bundle: contiene el encuentro médico del paciente con el especialista quirúrgico.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EncuentroAtender.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:EncuentroAtender.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Encuentro médico del paciente con el especialista quirúrgico.",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:EncuentroAtender.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:EncuentroAtender.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:EncuentroAtender.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Encounter"
      },
      {
        "id" : "Bundle.entry:Establecimiento",
        "path" : "Bundle.entry",
        "sliceName" : "Establecimiento",
        "short" : "Entrada en el Bundle: contiene el establecimiento de salud donde se realiza el encuentro médico.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Establecimiento.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Establecimiento.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Establecimiento de salud donde se realiza el encuentro médico.",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/OrganizationLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Establecimiento.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Establecimiento.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Establecimiento.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Organization"
      },
      {
        "id" : "Bundle.entry:Establecimiento.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional",
        "path" : "Bundle.entry",
        "sliceName" : "Profesional",
        "short" : "Entrada en el Bundle: contiene el profesional de la salud que realiza el encuentro médico.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Profesional.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Profesional de la salud que realiza el encuentro médico.",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Profesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Profesional.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Bundle.entry:Profesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional",
        "path" : "Bundle.entry",
        "sliceName" : "RolProfesional",
        "short" : "Entrada en el Bundle: contiene el rol del profesional de la salud en el encuentro médico.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:RolProfesional.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Rol del profesional de la salud en el encuentro médico.",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "PractitionerRole"
      },
      {
        "id" : "Bundle.entry:RolProfesional.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente",
        "path" : "Bundle.entry",
        "sliceName" : "Paciente",
        "short" : "Entrada en el Bundle: contiene el paciente que participa en el encuentro médico.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Paciente.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Paciente que participa en el encuentro médico.",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Paciente.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Patient"
      },
      {
        "id" : "Bundle.entry:Paciente.request.ifNoneExist",
        "path" : "Bundle.entry.request.ifNoneExist",
        "short" : "Verificar que no exista un recurso con el mismo identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Condicion",
        "path" : "Bundle.entry",
        "sliceName" : "Condicion",
        "short" : "Entrada en el Bundle: contiene las condiciones de salud del paciente.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Condicion.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Condicion.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Condiciones de salud del paciente.",
        "min" : 1,
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Condicion.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Condicion.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Condicion.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Condition"
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia",
        "path" : "Bundle.entry",
        "sliceName" : "SolicitudCirugia",
        "short" : "Entrada en el Bundle: contiene la solicitud de cirugía.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Solicitud de cirugía.",
        "min" : 1,
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestCirugiaLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:SolicitudCirugia.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "ServiceRequest"
      },
      {
        "id" : "Bundle.entry:ResultadoExamen",
        "path" : "Bundle.entry",
        "sliceName" : "ResultadoExamen",
        "short" : "Entrada en el Bundle: contiene los resultados de exámenes.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ResultadoExamen.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:ResultadoExamen.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Resultados de exámenes.",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ObservationResultadoExamen"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:ResultadoExamen.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:ResultadoExamen.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:ResultadoExamen.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:SolicitudExamen",
        "path" : "Bundle.entry",
        "sliceName" : "SolicitudExamen",
        "short" : "Entrada en el Bundle: contiene las solicitudes de exámenes.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:SolicitudExamen.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudExamen.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Solicitudes de exámenes.",
        "min" : 1,
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestExamenLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudExamen.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:SolicitudExamen.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:SolicitudExamen.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "ServiceRequest"
      },
      {
        "id" : "Bundle.entry:Alergia",
        "path" : "Bundle.entry",
        "sliceName" : "Alergia",
        "short" : "Entrada en el Bundle: contiene las alergias del paciente.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Alergia.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Alergia.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Alergias del paciente.",
        "min" : 1,
        "type" : [
          {
            "code" : "AllergyIntolerance",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/AllergyIntoleranceIniciarLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Alergia.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Alergia.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Alergia.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "AllergyIntolerance"
      },
      {
        "id" : "Bundle.entry:Medicamento",
        "path" : "Bundle.entry",
        "sliceName" : "Medicamento",
        "short" : "Entrada en el Bundle: contiene los medicamentos del paciente.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Medicamento.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Medicamento.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Medicamentos del paciente.",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationStatement",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/MedicationStatementLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Medicamento.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Medicamento.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Medicamento.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "MedicationStatement"
      },
      {
        "id" : "Bundle.entry:NotasClinicas",
        "path" : "Bundle.entry",
        "sliceName" : "NotasClinicas",
        "short" : "Entrada en el Bundle: contiene las notas clínicas del paciente.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:NotasClinicas.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "short" : "Uri de identificación dentro del Bundle",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:NotasClinicas.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Notas clínicas del paciente.",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ObservationNotasClinicasLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:NotasClinicas.request",
        "path" : "Bundle.entry.request",
        "short" : "Petición de creación del recurso",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:NotasClinicas.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:NotasClinicas.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      }
    ]
  }
}

```
