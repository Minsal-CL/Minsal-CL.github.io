# Paciente Urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Urgencia**

## Resource Profile: Paciente Urgencia 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg | *Version*:0.1.2-ballot | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:PatientUrg |

 
Paciente definido para el registro de atenciones de urgencia 

**Usages:**

* Use this Profile: [Bundle Admision](StructureDefinition-BundleAdmision.md)
* Refer to this Profile: [Acompañante Urgencia](StructureDefinition-AcompananteUrg.md), [Alergias e Intolerancia](StructureDefinition-AlergiaIntolerancia.md), [CarePlan Indicaciones](StructureDefinition-CarePlanIndicaciones.md), [Condition Diagnostico](StructureDefinition-ConditionDiagnosticoLE.md)...Show 17 more,[Encuentro Atención](StructureDefinition-EncounterAtencion.md),[Encuentro Urgencia](StructureDefinition-EncounterUrg.md),[MedicationAdministration Urgencia](StructureDefinition-MedicationAdministrationUrg.md),[Observación Anamnesis](StructureDefinition-ObservacionAnamnesis.md),[Observación Hospitalización Reciente](StructureDefinition-ObservacionHospitalizacionReciente.md),[Observación Lesión Auto Infligida](StructureDefinition-ObservacionLesionAutoInfligida.md),[Observación Medico Legal Alcoholemia](StructureDefinition-ObservacionMedLegalAlcoholemia.md),[Observación Medico Legal Certificación](StructureDefinition-ObservacionMedLegalCert.md),[Observación Medico Legal Examen Toxicológico](StructureDefinition-ObservacionMedLegalExamenToxico.md),[Observación Medico Legal Lesiones](StructureDefinition-ObservacionMedLegalLesiones.md),[Observación Medico Legal Violencia Sexual](StructureDefinition-ObservacionMedLegalVS.md),[Observación Reconsulta Urgencia](StructureDefinition-ObservacionReconsultaUrgencia.md),[Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md),[Observación Signos Vitales](StructureDefinition-ObservationSignosVitales.md),[Procedimientos de Urgencias](StructureDefinition-Procedimiento.md),[Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios](StructureDefinition-ServiceRequestSolicitudes.md)and[Observación Evolución Clínica](StructureDefinition-observacion-evol-clin.md)
* Examples for this Profile: [Patient/6ec6dc25-4b65-4165-a545-9b796f60b997](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.urgencia|current/StructureDefinition/PatientUrg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientUrg.csv), [Excel](StructureDefinition-PatientUrg.xlsx), [Schematron](StructureDefinition-PatientUrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientUrg",
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
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg",
  "version" : "0.1.2-ballot",
  "name" : "PatientUrg",
  "title" : "Paciente Urgencia",
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
  "description" : "Paciente definido para el registro de atenciones de urgencia",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient.extension:PaisOrigen",
        "path" : "Patient.extension",
        "sliceName" : "PaisOrigen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PaisOrigenMPI"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:Religion",
        "path" : "Patient.extension",
        "sliceName" : "Religion",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Religion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PueblosOriginariosPerteneciente",
        "path" : "Patient.extension",
        "sliceName" : "PueblosOriginariosPerteneciente",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PueblosOriginariosPerteneciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PueblosAfrodescendiente",
        "path" : "Patient.extension",
        "sliceName" : "PueblosAfrodescendiente",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PueblosAfrodescendiente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PueblosOriginarios",
        "path" : "Patient.extension",
        "sliceName" : "PueblosOriginarios",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PueblosOriginarios"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Identificador de paciente",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.type",
        "path" : "Patient.identifier.type",
        "short" : "Tipo de documento",
        "definition" : "Tipo de documento",
        "comment" : "Tipo de documento",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "description" : "Identificadores definidos por DEIS",
          "valueSet" : "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTipoIdentificador"
        }
      },
      {
        "id" : "Patient.identifier.type.coding",
        "path" : "Patient.identifier.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Valor del identificador",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use"
            }
          ],
          "description" : "Este slice se genera para diferenciar el nombre registrado Versus el nombre social",
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.name:NombreTemporal",
        "path" : "Patient.name",
        "sliceName" : "NombreTemporal",
        "short" : "Nombre empleado en caso de pacientes NN",
        "definition" : "Si es que el paciente atendido no se tiene conocimiento de su nombre, se debe registrar en este elemento información que permita identificarlo",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:NombreTemporal.use",
        "path" : "Patient.name.use",
        "min" : 1,
        "patternCode" : "temp",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:NombreTemporal.family",
        "path" : "Patient.name.family",
        "short" : "Descripción del atuendo o marcas cintura hacia abajo",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:NombreTemporal.given",
        "path" : "Patient.name.given",
        "short" : "Descripción del atuendo o marcas cintura hacia arriba",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "short" : "phone | email",
        "definition" : "Sistema de contacto",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.value",
        "path" : "Patient.telecom.value",
        "short" : "Valor de contacto",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.rank",
        "path" : "Patient.telecom.rank",
        "short" : "Orden de uso del método de contacto, siendo 1 = prioritario",
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom.period",
        "path" : "Patient.telecom.period",
        "short" : "Periodo de tiempo durante el cual es válido el contacto del paciente",
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "Sexo Registral del paciente",
        "min" : 1
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "short" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "definition" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.use",
        "path" : "Patient.address.use",
        "min" : 1
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "short" : "Calle o avenida, numero y casa o dpto",
        "definition" : "Calle o avenida, numero y casa o dpto",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.address.period",
        "path" : "Patient.address.period",
        "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
        "mustSupport" : true
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "short" : "Estado civil del paciente",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/ValueSet/VSEstadoCivil"
        }
      }
    ]
  }
}

```
