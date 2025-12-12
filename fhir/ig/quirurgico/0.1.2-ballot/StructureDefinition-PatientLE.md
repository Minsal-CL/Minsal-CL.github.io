# Patient LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient LE**

## Resource Profile: Patient LE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE | *Version*:0.1.2-ballot |
| Draft as of 2025-12-10 | *Computable Name*:PatientLE |

 
Paciente definido para el Registro Maestro de Pacientes 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md)
* Refer to this Profile: [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md), [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md), [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md), [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md)...Show 8 more,[Encounter Entrevista LE](StructureDefinition-EncounterEntrevistaLE.md),[MedicationStatement LE](StructureDefinition-MedicationStatementLE.md),[Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md),[Observation Notas Clinicas LE](StructureDefinition-ObservationNotasClinicasLE.md),[Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md),[Procedure Cirugia LE](StructureDefinition-ProcedureCirugiaLE.md),[ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)and[Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)
* Examples for this Profile: [Patient/22e862c5-6d96-44ec-869c-dba001058cb3](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.quirurgico|current/StructureDefinition/PatientLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientLE.csv), [Excel](StructureDefinition-PatientLE.xlsx), [Schematron](StructureDefinition-PatientLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE",
  "version" : "0.1.2-ballot",
  "name" : "PatientLE",
  "title" : "Patient LE",
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
  "description" : "Paciente definido para el Registro Maestro de Pacientes",
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
        "id" : "Patient.id",
        "path" : "Patient.id",
        "short" : "Id temporal necesario para identificar el recurso",
        "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "min" : 4
      },
      {
        "id" : "Patient.extension:IdentidadDeGenero",
        "path" : "Patient.extension",
        "sliceName" : "IdentidadDeGenero",
        "min" : 1
      },
      {
        "id" : "Patient.extension:nacionalidad",
        "path" : "Patient.extension",
        "sliceName" : "nacionalidad",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.extension:PaisOrigen",
        "path" : "Patient.extension",
        "sliceName" : "PaisOrigen",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PaisOrigenMPI"
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
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Religion"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PueblosOriginariosPerteneciente",
        "path" : "Patient.extension",
        "sliceName" : "PueblosOriginariosPerteneciente",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginariosPerteneciente"
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
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosAfrodescendiente"
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
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginarios"
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
        "id" : "Patient.identifier.type.extension",
        "path" : "Patient.identifier.type.extension",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.type.extension:paisEmisionDocumento",
        "path" : "Patient.identifier.type.extension",
        "sliceName" : "paisEmisionDocumento",
        "min" : 1
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
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "min" : 1
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
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
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
        "id" : "Patient.address.extension:Geolocalizacion",
        "path" : "Patient.address.extension",
        "sliceName" : "Geolocalizacion",
        "short" : "Dirección absoluta, es decir, latitud y longitud."
      },
      {
        "id" : "Patient.address.extension:SituacionCalle",
        "path" : "Patient.address.extension",
        "sliceName" : "SituacionCalle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/SituacionCalle"
            ]
          }
        ],
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
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/ValueSet/VSEstadoCivil"
        }
      }
    ]
  }
}

```
