# ServiceRequest Cirugía LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ServiceRequest Cirugía LE**

## Resource Profile: ServiceRequest Cirugía LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestCirugiaLE | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:ServiceRequestCirugiaLE |

 
ServiceRequest Cirugia LE recurso utilizado para la representación de los datos de la solicitud de cirugía. 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Cierre LE](StructureDefinition-BundleCierreLE.md) and [Bundle Entrevista LE](StructureDefinition-BundleEntrevistaLE.md)
* Refer to this Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md), [Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md) and [Procedure Cirugia LE](StructureDefinition-ProcedureCirugiaLE.md)
* Examples for this Profile: [ServiceRequest/38a17703-0731-4c3f-88fd-1202dc99d7ce](ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/ServiceRequestCirugiaLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ServiceRequestCirugiaLE.csv), [Excel](StructureDefinition-ServiceRequestCirugiaLE.xlsx), [Schematron](StructureDefinition-ServiceRequestCirugiaLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ServiceRequestCirugiaLE",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestCirugiaLE",
  "version" : "0.1.2-ballot",
  "name" : "ServiceRequestCirugiaLE",
  "title" : "ServiceRequest Cirugía LE",
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
  "description" : "ServiceRequest Cirugia LE recurso utilizado para la representación de los datos de la solicitud de cirugía.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest.id",
        "path" : "ServiceRequest.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.extension",
        "path" : "ServiceRequest.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "ServiceRequest.extension:MotivoCierreSolicitudCirugia",
        "path" : "ServiceRequest.extension",
        "sliceName" : "MotivoCierreSolicitudCirugia",
        "short" : "Motivo por el cual se cierra la solicitud de cirugía",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionMotivoCierreSolicitudCirugia"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.extension:TipoPriorizacion",
        "path" : "ServiceRequest.extension",
        "sliceName" : "TipoPriorizacion",
        "short" : "Tipo de priorización de la solicitud de cirugía.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionTipoPriorizacion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.extension:FundamentoPriorizacion",
        "path" : "ServiceRequest.extension",
        "sliceName" : "FundamentoPriorizacion",
        "short" : "Razones del porque se prioriza esta solicitud de cirugía.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionStringFundamentoPriorizacion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.extension:RequirioComite",
        "path" : "ServiceRequest.extension",
        "sliceName" : "RequirioComite",
        "short" : "Indica si la solicitud de cirugía requirió comité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/RequirioComite"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "Identificador de la Solicitud de Cirugía, se asigna desde origen",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.identifier.value",
        "path" : "ServiceRequest.identifier.value",
        "short" : "Identificador de la Solicitud de Cirugía",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "short" : "Estado de la solicitud de cirugía.",
        "definition" : "Al crear la solicitud de cirugía, el estado es active, al pasar satisfactoriamente por pre quirúrgico, el estado no cambia. Si en pre quirúrgico se detecta que se requiere una nueva evaluación, el estado cambia a on-hold. Si se cancela la cirugía, el estado cambia a revoked. Si se realiza la cirugía, el estado cambia a completed.",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "short" : "Tipo de solicitud",
        "patternCode" : "order",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "short" : "Tipo de cirugía propuesta",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSTipoCirugiaPropuesta"
        }
      },
      {
        "id" : "ServiceRequest.category.coding",
        "path" : "ServiceRequest.category.coding",
        "short" : "Códigos definidos por un sistema terminológico",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.category.coding.system",
        "path" : "ServiceRequest.category.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.category.coding.code",
        "path" : "ServiceRequest.category.coding.code",
        "short" : "Código definido en un sistema terminológico",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.category.coding.display",
        "path" : "ServiceRequest.category.coding.display",
        "short" : "Representación visual, definida por el sistema terminológico",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.priority",
        "path" : "ServiceRequest.priority",
        "short" : "Prioridad recomendada solicitud de cirugía de origen: routine=normal | urgent=urgente",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "Correspondencia al código de la cirugía propuesta",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
        }
      },
      {
        "id" : "ServiceRequest.code.coding",
        "path" : "ServiceRequest.code.coding",
        "short" : "Códigos definidos por un sistema terminológico",
        "min" : 1,
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code.coding.system",
        "path" : "ServiceRequest.code.coding.system",
        "short" : "Sistema terminológico, url/uri/uuid",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code.coding.code",
        "path" : "ServiceRequest.code.coding.code",
        "short" : "Código definido en un sistema terminológico",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code.coding.display",
        "path" : "ServiceRequest.code.coding.display",
        "short" : "Representación visual, definida por el sistema terminológico",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.orderDetail",
        "path" : "ServiceRequest.orderDetail",
        "short" : "Códigos FONASA asociados a la intervencion/es a realizar",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "Paciente a quien se le hace la orden de Cirugía",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "short" : "Referencia al encuentro de Atención en el cual se solicita la cirugía",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.authoredOn",
        "path" : "ServiceRequest.authoredOn",
        "short" : "Fecha en que se solicita la cirugía. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "Rol del médico que solicita la cirugía",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.performer",
        "path" : "ServiceRequest.performer",
        "short" : "Profesional de la salud que realiza el cierre de la solicitud de cirugía",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.reasonReference",
        "path" : "ServiceRequest.reasonReference",
        "short" : "Motivo por el cual se solicita la cirugía",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo",
        "path" : "ServiceRequest.supportingInfo",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "description" : "Slice creado para almacenar referencias",
          "rules" : "open"
        },
        "short" : "Información clínica adicional",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:TipoAlergia",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "TipoAlergia",
        "short" : "Referencia  a los tipos de alergia",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/AllergyIntoleranceIniciarLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:SolicitudExamen",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "SolicitudExamen",
        "short" : "Referencia a las solicitudes de examenes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestExamenLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:ResultadoExamen",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "ResultadoExamen",
        "short" : "Referencia al los resultados de examenes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ObservationResultadoExamen"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:MedicamentosConsumidos",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "MedicamentosConsumidos",
        "short" : "Referencia a los medicamentos consumidos por el paciente",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/MedicationStatementLE"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:EnfermedadCronica",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "EnfermedadCronica",
        "short" : "Referencia a las enfermedades crónicas del paciente",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
