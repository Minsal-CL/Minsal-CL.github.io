# Modelo Lógico de Informe Patológico del R2BO - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modelo Lógico de Informe Patológico del R2BO**

## Logical Model: Modelo Lógico de Informe Patológico del R2BO 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoInformePatologicoR2BO | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:InformePatologicoR2BOLogico |

 
Modelo lógico para el conjunto de datos mínimo de un informe patológico del R2BO 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.r2bo|current/StructureDefinition/ModeloLogicoInformePatologicoR2BO)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ModeloLogicoInformePatologicoR2BO.csv), [Excel](StructureDefinition-ModeloLogicoInformePatologicoR2BO.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ModeloLogicoInformePatologicoR2BO",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoInformePatologicoR2BO",
  "version" : "0.1.1-ballot",
  "name" : "InformePatologicoR2BOLogico",
  "title" : "Modelo Lógico de Informe Patológico del R2BO",
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
  "description" : "Modelo lógico para el conjunto de datos mínimo de un informe patológico del R2BO",
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
      "identity" : "informe-modelo-logico-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia",
      "name" : "Mapeo de Modelo Lógico a Informe"
    },
    {
      "identity" : "especimen-modelo-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia",
      "name" : "Mapeo de Modelo Informe a Muestra",
      "comment" : "Mapeo entre el modelo lógico de Informe R2BO y el perfil de Muestra Biopsia R2BO."
    },
    {
      "identity" : "resultado-tnm-modelo-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm",
      "name" : "Mapeo de Modelo Informe a Estadificación TNM",
      "comment" : "Mapeo entre el modelo lógico de Informe R2BO y el perfil de Estadificación TNM R2BO."
    },
    {
      "identity" : "profesional-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
      "name" : "Mapeo de Profesional en el Informe"
    },
    {
      "identity" : "profesional-solicitante-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
      "name" : "Mapeo de Profesional en la solicitud Informe"
    },
    {
      "identity" : "profesional-intervencionista-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal",
      "name" : "Mapeo de Profesional Intervencionista en la solicitud Informe"
    },
    {
      "identity" : "solicitud-modelo-solicitud-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa",
      "name" : "Mapeo de Solicitud a Perfil Solicitud",
      "comment" : "Mapeo entre el modelo lógico de Solicitud R2BO y el perfil de Solicitud Informe APA R2BO."
    },
    {
      "identity" : "rut-profesional-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
      "name" : "Mapeo del Rut del Profesional en el Informe"
    },
    {
      "identity" : "rut-profesional-solicitante-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
      "name" : "Mapeo del Rut del Profesional Solicitante en el Informe"
    },
    {
      "identity" : "rut-profesional-intervencionista-informe-map",
      "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
      "name" : "Mapeo del Rut del Profesional Interevencionista en el Informe"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoInformePatologicoR2BO",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ModeloLogicoInformePatologicoR2BO",
        "path" : "ModeloLogicoInformePatologicoR2BO",
        "short" : "Modelo Lógico de Informe Patológico del R2BO",
        "definition" : "Modelo lógico para el conjunto de datos mínimo de un informe patológico del R2BO",
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.nroDeBiopsia",
        "path" : "ModeloLogicoInformePatologicoR2BO.nroDeBiopsia",
        "short" : "Corresponde a una identificación única del informe de biopsia del establecimiento que analiza la muestra.",
        "definition" : "Corresponde a una identificación única del informe de biopsia del establecimiento que analiza la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.identifier[0]",
            "comment" : "Identificador del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.paciente",
        "path" : "ModeloLogicoInformePatologicoR2BO.paciente",
        "short" : "Corresponde al paciente al cual se le realiza la biopsia.",
        "definition" : "Corresponde al paciente al cual se le realiza la biopsia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/ModeloLogicoPacienteR2BO"
            ]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.subject",
            "comment" : "Paciente del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud",
        "short" : "Corresponde a la solicitud de biopsia del paciente, la cual contiene los datos clínicos y antecedentes relevantes para el análisis de la muestra.",
        "definition" : "Corresponde a la solicitud de biopsia del paciente, la cual contiene los datos clínicos y antecedentes relevantes para el análisis de la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.basedOn[0]",
            "comment" : "Solicitud de Biopsia"
          },
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest",
            "comment" : "Solicitud de informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.nroDeMuestra",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.nroDeMuestra",
        "short" : "Cantidad de muestras analizadas.",
        "definition" : "Cantidad de muestras analizadas.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest.specimen",
            "comment" : "Número de muestras analizadas se obtienen según el conteo de referencias que hay"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.muestraOrgano",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.muestraOrgano",
        "short" : "Se refiere al fragmento o tejido extraído del cuerpo del paciente que será analizado en el laboratorio de anatomía patológica. Este término abarca cualquier porción de tejido o células obtenidas mediante un procedimiento clínico (como una biopsia o citología) y es la base del diagnóstico histopatológico.",
        "definition" : "Se refiere al fragmento o tejido extraído del cuerpo del paciente que será analizado en el laboratorio de anatomía patológica. Este término abarca cualquier porción de tejido o células obtenidas mediante un procedimiento clínico (como una biopsia o citología) y es la base del diagnóstico histopatológico.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].bodySite",
            "comment" : "Sitio del cuerpo de la muestra"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.tipoProcedimiento",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.tipoProcedimiento",
        "short" : "Se refiere al método específico empleado para obtener la muestra de tejido o células que será analizada en el laboratorio. Este campo describe el procedimiento realizado, lo cual permite al equipo médico entender el método de extracción y su contexto clínico, ambos importantes para interpretar correctamente los resultados.",
        "definition" : "Se refiere al método específico empleado para obtener la muestra de tejido o células que será analizada en el laboratorio. Este campo describe el procedimiento realizado, lo cual permite al equipo médico entender el método de extracción y su contexto clínico, ambos importantes para interpretar correctamente los resultados.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].method",
            "comment" : "Tipo de procedimiento de recolección"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.hipotesisDiagnostica",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.hipotesisDiagnostica",
        "short" : "Diagnóstico inicial planteado por el médico tratante basado en los signos, síntomas y antecedentes del paciente, que orienta las pruebas diagnósticas necesarias para confirmar o descartar la enfermedad sospechada. Esta hipótesis permite planificar el abordaje clínico mientras se espera el diagnóstico definitivo.",
        "definition" : "Diagnóstico inicial planteado por el médico tratante basado en los signos, síntomas y antecedentes del paciente, que orienta las pruebas diagnósticas necesarias para confirmar o descartar la enfermedad sospechada. Esta hipótesis permite planificar el abordaje clínico mientras se espera el diagnóstico definitivo.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest.reasonCode[0]",
            "comment" : "Hipótesis Diagnóstica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.medicoSolicitante",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.medicoSolicitante",
        "short" : "Nombre del médico que genera la solicitud de biopsia.",
        "definition" : "Nombre del médico que genera la solicitud de biopsia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "profesional-solicitante-informe-map",
            "map" : "PractitionerRole.practitioner",
            "comment" : "Este recurso representa al profesional que realiza el informe patológico, incluyendo nombre, apellido y RUT"
          },
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest.requester",
            "comment" : "Médico Solicitante"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.rutMedicoSolicitante",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.rutMedicoSolicitante",
        "short" : "corresponde al número identificador único del profesional médico solicitante.",
        "definition" : "corresponde al número identificador único del profesional médico solicitante.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "rut-profesional-solicitante-informe-map",
            "map" : "Practitioner.identifier[run]",
            "comment" : "RUT del Profesional Solicitante"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.servicioClinicoDeOrigen",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.servicioClinicoDeOrigen",
        "short" : "Servicio clinico en el cual se encuentra el paciente, o al cual se le debe informar del resultado de esta biopsia.",
        "definition" : "Servicio clinico en el cual se encuentra el paciente, o al cual se le debe informar del resultado de esta biopsia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "profesional-solicitante-informe-map",
            "map" : "PractitionerRole.location",
            "comment" : "Servicio de origen desde proviene el paciente al momento de solicitar la biopsia."
          },
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest.requester",
            "comment" : "Servicio Clínico Solicitante"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.establecimientoDeOrigen",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.establecimientoDeOrigen",
        "short" : "Corresponde al establecimiento de origen de la toma de la muestra.",
        "definition" : "Corresponde al establecimiento de origen de la toma de la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "profesional-solicitante-informe-map",
            "map" : "PractitionerRole.organization",
            "comment" : "Este recurso representa al establecimiento de salud donde se realiza el informe patológico."
          },
          {
            "identity" : "solicitud-modelo-solicitud-map",
            "map" : "ServiceRequest.requester",
            "comment" : "Establecimiento Solicitante"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.medicoIntervencionista",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.medicoIntervencionista",
        "short" : "Nombre del médico que toma la muestra para la biopsia.",
        "definition" : "Nombre del médico que toma la muestra para la biopsia.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].collector",
            "comment" : "Profesional que realiza la recolección de la muestra"
          },
          {
            "identity" : "profesional-intervencionista-map",
            "map" : "PractitionerRole.practitioner",
            "comment" : "Este recurso representa al profesional que realiza la optención de la muestra, este incluyendo nombre, apellido y RUT"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.rutMedicoIntervencionista",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.rutMedicoIntervencionista",
        "short" : "Corresponde al número identificador único del profesional médico intervencionista.",
        "definition" : "Corresponde al número identificador único del profesional médico intervencionista.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "rut-profesional-intervencionista-informe-map",
            "map" : "Practitioner.identifier[run]",
            "comment" : "RUT del Profesional Intervencionista"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.fechaDeTomaDeMuestra",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.fechaDeTomaDeMuestra",
        "short" : "Corresponde al día en que se extrajo el tejido o las células del paciente para ser analizadas en el laboratorio.",
        "definition" : "Corresponde al día en que se extrajo el tejido o las células del paciente para ser analizadas en el laboratorio.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].collectedDateTime",
            "comment" : "Fecha y hora de la colección de la muestra"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.fechaDeRecepcionDeMuestra",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.fechaDeRecepcionDeMuestra",
        "short" : "Corresponde a la fecha de recepción de la muestra en el lugar de análisis.",
        "definition" : "Corresponde a la fecha de recepción de la muestra en el lugar de análisis.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.receivedTime",
            "comment" : "Fecha de recepción de la muestra"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.solicitud.tipoDeBiopsia",
        "path" : "ModeloLogicoInformePatologicoR2BO.solicitud.tipoDeBiopsia",
        "short" : "se define como la categorización del procedimiento empleado para la obtención del tejido, con base en su técnica, extensión y objetivo clínico",
        "definition" : "se define como la categorización del procedimiento empleado para la obtención del tejido, con base en su técnica, extensión y objetivo clínico",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].method",
            "comment" : "Método de colección de la muestra"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.establecimientoQueInforma",
        "path" : "ModeloLogicoInformePatologicoR2BO.establecimientoQueInforma",
        "short" : "Corresponde al establecimiento que informa el análisis de la muestra.",
        "definition" : "Corresponde al establecimiento que informa el análisis de la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.performer[0]",
            "comment" : "Establecimiento en que Anatomopatólogo que realiza el Informe"
          },
          {
            "identity" : "profesional-informe-map",
            "map" : "PractitionerRole.organization",
            "comment" : "Este recurso representa al establecimiento de salud donde se realiza el informe patológico."
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.patologoQueInforma",
        "path" : "ModeloLogicoInformePatologicoR2BO.patologoQueInforma",
        "short" : "Corresponde al patólogo que informa el análisis de la muestra.",
        "definition" : "Corresponde al patólogo que informa el análisis de la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.performer[0]",
            "comment" : "Anatomopatólogo que realiza el Informe"
          },
          {
            "identity" : "profesional-informe-map",
            "map" : "PractitionerRole.practitioner",
            "comment" : "Este recurso representa al profesional que realiza el informe patológico, incluyendo nombre, apellido y RUT"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.rutPatologoQueInforma",
        "path" : "ModeloLogicoInformePatologicoR2BO.rutPatologoQueInforma",
        "short" : "Corresponde al número identificador único del profesional médico patólogo que informa el análisis de la muestra.",
        "definition" : "Corresponde al número identificador único del profesional médico patólogo que informa el análisis de la muestra.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "rut-profesional-informe-map",
            "map" : "Practitioner.identifier[run]",
            "comment" : "RUT del Profesional que realiza el Informe"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.fechaDeInforme",
        "path" : "ModeloLogicoInformePatologicoR2BO.fechaDeInforme",
        "short" : "Corresponde a la fecha en que se emite el informe con el resultado de la muestra analizada.",
        "definition" : "Corresponde a la fecha en que se emite el informe con el resultado de la muestra analizada.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.issued",
            "comment" : "Fecha de Emisión del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.descripcionMacroscopica",
        "path" : "ModeloLogicoInformePatologicoR2BO.descripcionMacroscopica",
        "short" : "se refiere a la evaluación inicial que se realiza sobre la muestra de tejido sin el uso de un microscopio, detallando características visibles a simple vista. Esta fase incluye la observación del tamaño, forma, color, consistencia y cualquier anomalía notable del tejido",
        "definition" : "se refiere a la evaluación inicial que se realiza sobre la muestra de tejido sin el uso de un microscopio, detallando características visibles a simple vista. Esta fase incluye la observación del tamaño, forma, color, consistencia y cualquier anomalía notable del tejido",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.descripcionMicroscopica",
        "path" : "ModeloLogicoInformePatologicoR2BO.descripcionMicroscopica",
        "short" : "se refiere al análisis detallado de las células y tejidos de la muestra bajo el microscopio, después de haber sido procesada y teñida en el laboratorio de anatomía patológica. Este examen permite identificar cambios en la estructura celular y la arquitectura del tejido que puedan indicar enfermedades o condiciones anormales.",
        "definition" : "se refiere al análisis detallado de las células y tejidos de la muestra bajo el microscopio, después de haber sido procesada y teñida en el laboratorio de anatomía patológica. Este examen permite identificar cambios en la estructura celular y la arquitectura del tejido que puedan indicar enfermedades o condiciones anormales.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[1]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.lateralidad",
        "path" : "ModeloLogicoInformePatologicoR2BO.lateralidad",
        "short" : "se refiere a la identificación del lado del cuerpo donde se tomó la muestra. Este término es relevante especialmente en órganos o estructuras pares, como mamas, riñones, pulmones, ovarios, o extremidades, para garantizar precisión en el diagnóstico y tratamiento.",
        "definition" : "se refiere a la identificación del lado del cuerpo donde se tomó la muestra. Este término es relevante especialmente en órganos o estructuras pares, como mamas, riñones, pulmones, ovarios, o extremidades, para garantizar precisión en el diagnóstico y tratamiento.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.collection[0].bodySite.extension",
            "comment" : "Calificador para lateralidad para este sitio del cuerpo"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.detalleTopografia",
        "path" : "ModeloLogicoInformePatologicoR2BO.detalleTopografia",
        "short" : "se refiere a la descripción exacta de la localización del tumor dentro de la muestra de tejido extraída durante el procedimiento quirúrgico. Esta variable es fundamental en el informe de patología, ya que proporciona detalles sobre la relación del tumor con las estructuras adyacentes y su posición dentro del tejido extirpado.",
        "definition" : "se refiere a la descripción exacta de la localización del tumor dentro de la muestra de tejido extraída durante el procedimiento quirúrgico. Esta variable es fundamental en el informe de patología, ya que proporciona detalles sobre la relación del tumor con las estructuras adyacentes y su posición dentro del tejido extirpado.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "especimen-modelo-informe-map",
            "map" : "Specimen.note",
            "comment" : "Notas sobre la topografía al momento de extraer la muestra"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.invasionVascularLinfatica",
        "path" : "ModeloLogicoInformePatologicoR2BO.invasionVascularLinfatica",
        "short" : "se refiere a la presencia de células tumorales dentro de los vasos linfáticos. Es un hallazgo importante en la anatomía patológica, especialmente en el diagnóstico y pronóstico de tumores malignos, ya que indica la capacidad del tumor de diseminarse a través del sistema linfático hacia ganglios linfáticos u otros órganos distantes",
        "definition" : "se refiere a la presencia de células tumorales dentro de los vasos linfáticos. Es un hallazgo importante en la anatomía patológica, especialmente en el diagnóstico y pronóstico de tumores malignos, ya que indica la capacidad del tumor de diseminarse a través del sistema linfático hacia ganglios linfáticos u otros órganos distantes",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[4]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.invasionVascularSanguinea",
        "path" : "ModeloLogicoInformePatologicoR2BO.invasionVascularSanguinea",
        "short" : "se refiere a la presencia de células tumorales dentro de los vasos sanguíneos, como venas, arterias o capilares. Es un hallazgo patológico significativo, ya que indica la capacidad del tumor de diseminarse por vía hematógena (a través del torrente sanguíneo), lo que puede dar lugar a metástasis en órganos distantes.",
        "definition" : "se refiere a la presencia de células tumorales dentro de los vasos sanguíneos, como venas, arterias o capilares. Es un hallazgo patológico significativo, ya que indica la capacidad del tumor de diseminarse por vía hematógena (a través del torrente sanguíneo), lo que puede dar lugar a metástasis en órganos distantes.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[5]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.infiltracionPerineural",
        "path" : "ModeloLogicoInformePatologicoR2BO.infiltracionPerineural",
        "short" : "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas.",
        "definition" : "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[6]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.necrosis",
        "path" : "ModeloLogicoInformePatologicoR2BO.necrosis",
        "short" : "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas.",
        "definition" : "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[7]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.infiltradoLinfocitarioPeritumoral",
        "path" : "ModeloLogicoInformePatologicoR2BO.infiltradoLinfocitarioPeritumoral",
        "short" : "es un término que describe la acumulación de linfocitos (un tipo de célula del sistema inmunológico) alrededor de un tumor, sin invadir directamente el tejido tumoral. Este hallazgo histopatológico es importante porque refleja la interacción entre el sistema inmunitario del paciente y el tumor, lo cual puede tener implicaciones diagnósticas, pronósticas y terapéuticas.",
        "definition" : "es un término que describe la acumulación de linfocitos (un tipo de célula del sistema inmunológico) alrededor de un tumor, sin invadir directamente el tejido tumoral. Este hallazgo histopatológico es importante porque refleja la interacción entre el sistema inmunitario del paciente y el tumor, lo cual puede tener implicaciones diagnósticas, pronósticas y terapéuticas.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[8]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.tamanoTumoral",
        "path" : "ModeloLogicoInformePatologicoR2BO.tamanoTumoral",
        "short" : "se refiere a la dimensión máxima del tumor medido en la muestra de tejido o imagen y suele expresarse en milímetros o centímetros. En los informes de patología, el tamaño tumoral es una variable crítica, pues influye directamente en el estadiaje, el pronóstico y las decisiones de tratamiento del cáncer.",
        "definition" : "se refiere a la dimensión máxima del tumor medido en la muestra de tejido o imagen y suele expresarse en milímetros o centímetros. En los informes de patología, el tamaño tumoral es una variable crítica, pues influye directamente en el estadiaje, el pronóstico y las decisiones de tratamiento del cáncer.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[9]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.nivelInfiltracion",
        "path" : "ModeloLogicoInformePatologicoR2BO.nivelInfiltracion",
        "short" : "describe la profundidad o extensión de un tumor dentro de los tejidos en los que ha comenzado a crecer y a invadir estructuras adyacentes. Este parámetro es fundamental en el diagnóstico y la estadificación de ciertos cánceres, pues indica cuán avanzado está el tumor en términos de invasión local. (solo para los órganos que tienen pared)",
        "definition" : "describe la profundidad o extensión de un tumor dentro de los tejidos en los que ha comenzado a crecer y a invadir estructuras adyacentes. Este parámetro es fundamental en el diagnóstico y la estadificación de ciertos cánceres, pues indica cuán avanzado está el tumor en términos de invasión local. (solo para los órganos que tienen pared)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[10]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.focalidadMulticentricidad",
        "path" : "ModeloLogicoInformePatologicoR2BO.focalidadMulticentricidad",
        "short" : "son términos que se utilizan en el análisis de biopsias y en el diagnóstico de ciertos tipos de cáncer, especialmente en órganos como la mama, el hígado y los riñones, para describir la distribución y características del tumor en el tejido afectado.",
        "definition" : "son términos que se utilizan en el análisis de biopsias y en el diagnóstico de ciertos tipos de cáncer, especialmente en órganos como la mama, el hígado y los riñones, para describir la distribución y características del tumor en el tejido afectado.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[11]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.margenQuirurgicoMedida",
        "path" : "ModeloLogicoInformePatologicoR2BO.margenQuirurgicoMedida",
        "short" : "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros.",
        "definition" : "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[12]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.margenQuirurgicoCategoria",
        "path" : "ModeloLogicoInformePatologicoR2BO.margenQuirurgicoCategoria",
        "short" : "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros.",
        "definition" : "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[13]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.tejidoNoTumoralAdyacente",
        "path" : "ModeloLogicoInformePatologicoR2BO.tejidoNoTumoralAdyacente",
        "short" : "se refiere al tejido sano que rodea al tumor y no muestra signos de células malignas. En patología, el análisis del tejido no tumoral adyacente es importante para evaluar los efectos que el tumor puede haber causado en el entorno inmediato y para verificar que se ha obtenido una resección adecuada y libre de células tumorales.",
        "definition" : "se refiere al tejido sano que rodea al tumor y no muestra signos de células malignas. En patología, el análisis del tejido no tumoral adyacente es importante para evaluar los efectos que el tumor puede haber causado en el entorno inmediato y para verificar que se ha obtenido una resección adecuada y libre de células tumorales.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[14]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.gangliosLinfaticos",
        "path" : "ModeloLogicoInformePatologicoR2BO.gangliosLinfaticos",
        "short" : "En oncología, los ganglios linfáticos cercanos al tumor se examinan porque pueden contener células tumorales metastásicas. Este proceso de diseminación a los ganglios linfáticos es un factor clave en la estadificación del cáncer",
        "definition" : "En oncología, los ganglios linfáticos cercanos al tumor se examinan porque pueden contener células tumorales metastásicas. Este proceso de diseminación a los ganglios linfáticos es un factor clave en la estadificación del cáncer",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[15]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.evaluacionPostNeoadyuvancia",
        "path" : "ModeloLogicoInformePatologicoR2BO.evaluacionPostNeoadyuvancia",
        "short" : "Tamaño de lecho tumoral (en dos ejes mayores, celularidad tumoral residual (porcentaje)",
        "definition" : "Tamaño de lecho tumoral (en dos ejes mayores, celularidad tumoral residual (porcentaje)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[16]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.conclusion",
        "path" : "ModeloLogicoInformePatologicoR2BO.conclusion",
        "short" : "Todo lo anterior constituye el diagnóstico anatomo patológico.",
        "definition" : "Todo lo anterior constituye el diagnóstico anatomo patológico.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.conclusion",
            "comment" : "Conclusión del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.topografia",
        "path" : "ModeloLogicoInformePatologicoR2BO.topografia",
        "short" : "El código topográfico indica el lugar de origen de una neoplasia; en otras palabras, dónde se originó el tumor",
        "definition" : "El código topográfico indica el lugar de origen de una neoplasia; en otras palabras, dónde se originó el tumor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.conclusionCode[1]",
            "comment" : "Resultado de la topografía del tumor según CIE-O"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.morfologia",
        "path" : "ModeloLogicoInformePatologicoR2BO.morfologia",
        "short" : "El código morfológico registra el tipo de célula que se ha transformado en neoplásica y su actividad biológica; en otras palabras, indica el tipo de tumor que se ha desarrollado y cuál es su comportamiento.",
        "definition" : "El código morfológico registra el tipo de célula que se ha transformado en neoplásica y su actividad biológica; en otras palabras, indica el tipo de tumor que se ha desarrollado y cuál es su comportamiento.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.conclusionCode[0]",
            "comment" : "Resultaado de la morfología del tumor según CIE-O"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.comportamiento",
        "path" : "ModeloLogicoInformePatologicoR2BO.comportamiento",
        "short" : "El comportamiento de un tumor es la forma en la que actúa dentro del cuerpo. Corresponde al quinto dígito del código morfológico.",
        "definition" : "El comportamiento de un tumor es la forma en la que actúa dentro del cuerpo. Corresponde al quinto dígito del código morfológico.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.conclusionCode[0]",
            "comment" : "Se extrae del código CIE-O el comportamiento del tumor"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.gradoDiferenciacion",
        "path" : "ModeloLogicoInformePatologicoR2BO.gradoDiferenciacion",
        "short" : "La diferenciación describe la magnitud en la que un tumor recuerda al tejido normal en el que se originó.",
        "definition" : "La diferenciación describe la magnitud en la que un tumor recuerda al tejido normal en el que se originó.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.conclusionCode[0]",
            "comment" : "Se crea extensión para grado de diferenciación"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM",
        "path" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM",
        "short" : "Clasificación TNM",
        "definition" : "Clasificación TNM",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ],
        "mapping" : [
          {
            "identity" : "informe-modelo-logico-map",
            "map" : "DiagnosticReport.result[3]",
            "comment" : "Resultados del Informe de Anatomía Patológica"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaTumorPrimario",
        "path" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaTumorPrimario",
        "short" : "Categoría del tumor primario",
        "definition" : "Categoría del tumor primario",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "resultado-tnm-modelo-informe-map",
            "map" : "Observation.hasMember[0]",
            "comment" : "Categoría del Tumor Primario (T)"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaNodosPrimario",
        "path" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaNodosPrimario",
        "short" : "Categoría de los ganglios linfáticos regionales",
        "definition" : "Categoría de los ganglios linfáticos regionales",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "resultado-tnm-modelo-informe-map",
            "map" : "Observation.hasMember[1]",
            "comment" : "Categoría de los Ganglios Linfáticos (N)"
          }
        ]
      },
      {
        "id" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaMetastasisPrimario",
        "path" : "ModeloLogicoInformePatologicoR2BO.categoriaTNM.categoriaMetastasisPrimario",
        "short" : "Categoría de metástasis a distancia",
        "definition" : "Categoría de metástasis a distancia",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "isSummary" : true,
        "mapping" : [
          {
            "identity" : "resultado-tnm-modelo-informe-map",
            "map" : "Observation.hasMember[2]",
            "comment" : "Categoría de Metástasis (M)"
          }
        ]
      }
    ]
  }
}

```
