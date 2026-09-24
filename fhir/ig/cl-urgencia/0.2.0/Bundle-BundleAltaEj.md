# Bundle de alta - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de alta**

## Example Bundle: Bundle de alta



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleAltaEj",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/bundle-alta-urgencia"]
  },
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "urn:uuid:6f1c2a10-0001-4000-8000-000000000001",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PacienteUrgenciaEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PacienteUrgenciaEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente PacienteUrgenciaEj</b></p><a name=\"PacienteUrgenciaEj\"> </a><a name=\"hcPacienteUrgenciaEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPaciente.html\">MINSAL Paciente</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><a href=\"tel:+56912345678\">+56912345678</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Sexo Biologico del paciente\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-SexoBiologico.html\">Sexo Biologico del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{http://hl7.org/fhir/administrative-gender female}\">Female</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"País de origen del paciente\"><a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-PaisOrigenMPI.html\">País de origen del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de países\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-CodigoPaises.html\">Código de Países</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad De Género\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-IdentidadDeGenero.html\">Identidad De Género</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero 2}\">Femenina</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
            "code" : "2",
            "display" : "Femenina"
          }]
        }
      },
      {
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/administrative-gender",
            "code" : "female",
            "display" : "Female"
          }]
        }
      },
      {
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "identifier" : [{
        "use" : "official",
        "type" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }],
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }]
        },
        "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
        "value" : "11111111-1"
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Carmona",
        "given" : ["María"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56912345678",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1975-04-12",
      "deceasedBoolean" : false
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient?identifier=urn:oid:2.16.840.1.113883.2.22.1.152.787300|11111111-1"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0002-4000-8000-000000000002",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "EstablecimientoUrgenciaEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_EstablecimientoUrgenciaEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización EstablecimientoUrgenciaEj</b></p><a name=\"EstablecimientoUrgenciaEj\"> </a><a name=\"hcEstablecimientoUrgenciaEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorOrganizacional.html\">Prestador Institucional</a></p></div><p><b>identifier</b>: <code>https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino</code>/112100</p><p><b>active</b>: true</p><p><b>name</b>: Hospital de Ejemplo</p><p><b>partOf</b>: Servicio de Salud Metropolitano Sur Oriente</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
        "value" : "112100"
      }],
      "active" : true,
      "name" : "Hospital de Ejemplo",
      "partOf" : {
        "display" : "Servicio de Salud Metropolitano Sur Oriente"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization?identifier=https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino|112100"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0003-4000-8000-000000000003",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "EstablecimientoDestinoEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_EstablecimientoDestinoEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización EstablecimientoDestinoEj</b></p><a name=\"EstablecimientoDestinoEj\"> </a><a name=\"hcEstablecimientoDestinoEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorOrganizacional.html\">Prestador Institucional</a></p></div><p><b>identifier</b>: <code>https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino</code>/112307</p><p><b>active</b>: true</p><p><b>name</b>: CESFAM de Ejemplo</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
        "value" : "112307"
      }],
      "active" : true,
      "name" : "CESFAM de Ejemplo"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization?identifier=https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino|112307"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0004-4000-8000-000000000004",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "ProfesionalUrgenciaEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ProfesionalUrgenciaEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional ProfesionalUrgenciaEj</b></p><a name=\"ProfesionalUrgenciaEj\"> </a><a name=\"hcProfesionalUrgenciaEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorProfesional.html\">Prestador Profesional</a></p></div><p><b>identifier</b>: RUN/22222222-2 (use: official, )</p><p><b>active</b>: true</p><p><b>name</b>: Ana Pérez </p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1985-06-20</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">Médico cirujano</span></td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }]
        },
        "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
        "value" : "22222222-2"
      }],
      "active" : true,
      "name" : [{
        "family" : "Pérez",
        "given" : ["Ana"]
      }],
      "gender" : "female",
      "birthDate" : "1985-06-20",
      "qualification" : [{
        "identifier" : [{
          "value" : "cert"
        }],
        "code" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          }],
          "text" : "Médico cirujano"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Practitioner?identifier=urn:oid:2.16.840.1.113883.2.22.1.152.787300|22222222-2"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0011-4000-8000-000000000011",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "EpisodioDAU123EstadoAlta",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/encuentro-urgencia-alta"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_EpisodioDAU123EstadoAlta\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encuentro EpisodioDAU123EstadoAlta</b></p><a name=\"EpisodioDAU123EstadoAlta\"> </a><a name=\"hcEpisodioDAU123EstadoAlta\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-encuentro-urgencia-alta.html\">Encuentro de urgencia - estado en el alta</a></p></div><blockquote><p><b>Previsión de salud</b></p><ul><li>prevision: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSPrevision 1}\">FONASA</span></li><li>tramoFonasa: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTramosFONASA B}\">FONASA B</span></li></ul></blockquote><p><b>Ley previsional o programa</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyPrevisionales 96}\">Ninguna</span></p><p><b>Clasificación de la consulta</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/clasificacion-consulta 09}\">Otros</span></p><p><b>Pertinencia de la atención</b>: true</p><p><b>Pronóstico médico-legal</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/pronostico-medico-legal 04}\">Sin lesiones</span></p><p><b>identifier</b>: <code>https://hospital-ejemplo.cl/fhir/sid/dau</code>/DAU-2026-000123</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER\">ActCode: EMER</a> (emergency)</p><p><b>serviceType</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-atencion 02}\">Atención de adulto</span></p><p><b>subject</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0001-4000-8000-000000000001\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType DIS}\">discharger</span></td><td><a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0004-4000-8000-000000000004\">Practitioner Ana Pérez </a></td></tr></table><p><b>period</b>: 2026-09-09 10:00:00-0300 --&gt; 2026-09-09 12:30:00-0300</p><p><b>reasonCode</b>: <span title=\"Codes:\">Dolor abdominal de 12 horas de evolución</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td><td><b>Rank</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0020-4000-8000-000000000020\">Condition Gastritis, unspecified</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role DD}\">Discharge diagnosis</span></td><td>1</td></tr></table><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>AdmitSource</b></td><td><b>Destination</b></td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/procedencia 6}\">Espontáneo</span></td><td><a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0003-4000-8000-000000000003\">Organization CESFAM de Ejemplo</a></td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-alta 05}\">Domicilio</span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0002-4000-8000-000000000002\">Organization Hospital de Ejemplo</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "prevision",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSPrevision",
              "code" : "1",
              "display" : "FONASA"
            }]
          }
        },
        {
          "url" : "tramoFonasa",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTramosFONASA",
              "code" : "B",
              "display" : "FONASA B"
            }]
          }
        }],
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/prevision"
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ley-previsional",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSLeyPrevisionales",
            "code" : "96",
            "display" : "Ninguna"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/clasificacion-consulta",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/clasificacion-consulta",
            "code" : "09",
            "display" : "Otros"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/pertinencia",
        "valueBoolean" : true
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/pronostico-medico-legal",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/pronostico-medico-legal",
            "code" : "04",
            "display" : "Sin lesiones"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://hospital-ejemplo.cl/fhir/sid/dau",
        "value" : "DAU-2026-000123"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EMER"
      },
      "serviceType" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/unidad-atencion",
          "code" : "02",
          "display" : "Atención de adulto"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:6f1c2a10-0001-4000-8000-000000000001"
      },
      "participant" : [{
        "type" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "DIS",
            "display" : "discharger"
          }]
        }],
        "individual" : {
          "reference" : "urn:uuid:6f1c2a10-0004-4000-8000-000000000004"
        }
      }],
      "period" : {
        "start" : "2026-09-09T10:00:00-03:00",
        "end" : "2026-09-09T12:30:00-03:00"
      },
      "reasonCode" : [{
        "text" : "Dolor abdominal de 12 horas de evolución"
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "urn:uuid:6f1c2a10-0020-4000-8000-000000000020"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "DD",
            "display" : "Discharge diagnosis"
          }]
        },
        "rank" : 1
      }],
      "hospitalization" : {
        "extension" : [{
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/medio-llegada",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/medio-llegada",
              "code" : "6",
              "display" : "Vehículo particular"
            }]
          }
        }],
        "admitSource" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/procedencia",
            "code" : "6",
            "display" : "Espontáneo"
          }]
        },
        "destination" : {
          "reference" : "urn:uuid:6f1c2a10-0003-4000-8000-000000000003"
        },
        "dischargeDisposition" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/destino-alta",
            "code" : "05",
            "display" : "Domicilio"
          }]
        }
      },
      "serviceProvider" : {
        "reference" : "urn:uuid:6f1c2a10-0002-4000-8000-000000000002"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter?identifier=https://hospital-ejemplo.cl/fhir/sid/dau|DAU-2026-000123"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0020-4000-8000-000000000020",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "DiagnosticoAltaEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/diagnostico-urgencia"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_DiagnosticoAltaEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condición DiagnosticoAltaEj</b></p><a name=\"DiagnosticoAltaEj\"> </a><a name=\"hcDiagnosticoAltaEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-diagnostico-urgencia.html\">Diagnóstico de urgencia</a></p></div><p><b>Diagnóstico GES</b>: false</p><p><b>identifier</b>: <code>https://hospital-ejemplo.cl/fhir/sid/diagnosticos</code>/DG-2026-88001</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 K29.7}\">Gastritis aguda</span></p><p><b>subject</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0001-4000-8000-000000000001\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0011-4000-8000-000000000011\">Encounter: extension = ,Ninguna,Otros,true,Sin lesiones; identifier = https://hospital-ejemplo.cl/fhir/sid/dau#DAU-2026-000123; status = finished; class = emergency (ActCode#EMER); serviceType = Atención de adulto; period = 2026-09-09 10:00:00-0300 --&gt; 2026-09-09 12:30:00-0300; reasonCode = </a></p><p><b>recordedDate</b>: 2026-09-09 12:20:00-0300</p><p><b>recorder</b>: <a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0004-4000-8000-000000000004\">Practitioner Ana Pérez </a></p></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/diagnostico-ges",
        "valueBoolean" : false
      }],
      "identifier" : [{
        "system" : "https://hospital-ejemplo.cl/fhir/sid/diagnosticos",
        "value" : "DG-2026-88001"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "code" : "K29.7",
          "display" : "Gastritis, unspecified"
        }],
        "text" : "Gastritis aguda"
      },
      "subject" : {
        "reference" : "urn:uuid:6f1c2a10-0001-4000-8000-000000000001"
      },
      "encounter" : {
        "reference" : "urn:uuid:6f1c2a10-0011-4000-8000-000000000011"
      },
      "recordedDate" : "2026-09-09T12:20:00-03:00",
      "recorder" : {
        "reference" : "urn:uuid:6f1c2a10-0004-4000-8000-000000000004"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition?identifier=https://hospital-ejemplo.cl/fhir/sid/diagnosticos|DG-2026-88001"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0030-4000-8000-000000000030",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "IndicacionMedicamentoEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/indicacion-medicamento-urgencia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_IndicacionMedicamentoEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PrescripciónMedicaciónTODO  /PrescripcionMedicamento IndicacionMedicamentoEj</b></p><a name=\"IndicacionMedicamentoEj\"> </a><a name=\"hcIndicacionMedicamentoEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-indicacion-medicamento-urgencia.html\">Indicación de medicamento al alta</a></p></div><p><b>identifier</b>: <code>https://hospital-ejemplo.cl/fhir/sid/indicaciones</code>/IND-2026-5501-1</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <span title=\"Codes:\">Omeprazol 20 mg cápsula</span></p><p><b>subject</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0001-4000-8000-000000000001\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0011-4000-8000-000000000011\">Encounter: extension = ,Ninguna,Otros,true,Sin lesiones; identifier = https://hospital-ejemplo.cl/fhir/sid/dau#DAU-2026-000123; status = finished; class = emergency (ActCode#EMER); serviceType = Atención de adulto; period = 2026-09-09 10:00:00-0300 --&gt; 2026-09-09 12:30:00-0300; reasonCode = </a></p><p><b>authoredOn</b>: 2026-09-09 12:25:00-0300</p><p><b>requester</b>: <a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0004-4000-8000-000000000004\">Practitioner Ana Pérez </a></p><p><b>groupIdentifier</b>: <code>https://hospital-ejemplo.cl/fhir/sid/recetas</code>/REC-2026-5501</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>1 cápsula cada 12 horas por 14 días</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://hospital-ejemplo.cl/fhir/sid/indicaciones",
        "value" : "IND-2026-5501-1"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationCodeableConcept" : {
        "text" : "Omeprazol 20 mg cápsula"
      },
      "subject" : {
        "reference" : "urn:uuid:6f1c2a10-0001-4000-8000-000000000001"
      },
      "encounter" : {
        "reference" : "urn:uuid:6f1c2a10-0011-4000-8000-000000000011"
      },
      "authoredOn" : "2026-09-09T12:25:00-03:00",
      "requester" : {
        "reference" : "urn:uuid:6f1c2a10-0004-4000-8000-000000000004"
      },
      "groupIdentifier" : {
        "system" : "https://hospital-ejemplo.cl/fhir/sid/recetas",
        "value" : "REC-2026-5501"
      },
      "dosageInstruction" : [{
        "text" : "1 cápsula cada 12 horas por 14 días"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest?identifier=https://hospital-ejemplo.cl/fhir/sid/indicaciones|IND-2026-5501-1"
    }
  },
  {
    "fullUrl" : "urn:uuid:6f1c2a10-0040-4000-8000-000000000040",
    "resource" : {
      "resourceType" : "DocumentReference",
      "id" : "DocumentoAltaEj",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/documento-urgencia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_DocumentoAltaEj\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ReferenciaDocumento DocumentoAltaEj</b></p><a name=\"DocumentoAltaEj\"> </a><a name=\"hcDocumentoAltaEj\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-documento-urgencia.html\">Documento de la atención de urgencia</a></p></div><p><b>masterIdentifier</b>: <code>https://hospital-ejemplo.cl/fhir/sid/documentos</code>/DOC-DAU-2026-000123</p><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 59258-4}\">Nota de resumen de alta:Departamento de Emergencia :Punto temporal:Tipo:Documento:{Role}</span></p><p><b>subject</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0001-4000-8000-000000000001\">María Carmona (official) Female, DoB: 1975-04-12 ( RUN: 11111111-1 (use: official, ))</a></p><p><b>date</b>: 2026-09-09 12:30:00-0300</p><p><b>author</b>: <a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0004-4000-8000-000000000004\">Practitioner Ana Pérez </a></p><p><b>custodian</b>: <a href=\"Bundle-BundleAbandonoEj.html#urn-uuid-6f1c2a10-0002-4000-8000-000000000002\">Organization Hospital de Ejemplo</a></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td><td><b>Title</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>application/pdf</td><td><a href=\"https://his.hospital-ejemplo.cl/documentos/DAU-2026-000123.pdf\">https://his.hospital-ejemplo.cl/documentos/DAU-2026-000123.pdf</a></td><td>Dato de Atención de Urgencia DAU-2026-000123</td><td>2026-09-09 12:30:00-0300</td></tr></table></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Encounter</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-BundleAltaEj.html#urn-uuid-6f1c2a10-0011-4000-8000-000000000011\">Encounter: extension = ,Ninguna,Otros,true,Sin lesiones; identifier = https://hospital-ejemplo.cl/fhir/sid/dau#DAU-2026-000123; status = finished; class = emergency (ActCode#EMER); serviceType = Atención de adulto; period = 2026-09-09 10:00:00-0300 --&gt; 2026-09-09 12:30:00-0300; reasonCode = </a></td></tr></table></div>"
      },
      "masterIdentifier" : {
        "system" : "https://hospital-ejemplo.cl/fhir/sid/documentos",
        "value" : "DOC-DAU-2026-000123"
      },
      "status" : "current",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "59258-4"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:6f1c2a10-0001-4000-8000-000000000001"
      },
      "date" : "2026-09-09T12:30:00-03:00",
      "author" : [{
        "reference" : "urn:uuid:6f1c2a10-0004-4000-8000-000000000004"
      }],
      "custodian" : {
        "reference" : "urn:uuid:6f1c2a10-0002-4000-8000-000000000002"
      },
      "content" : [{
        "attachment" : {
          "contentType" : "application/pdf",
          "url" : "https://his.hospital-ejemplo.cl/documentos/DAU-2026-000123.pdf",
          "title" : "Dato de Atención de Urgencia DAU-2026-000123",
          "creation" : "2026-09-09T12:30:00-03:00"
        }
      }],
      "context" : {
        "encounter" : [{
          "reference" : "urn:uuid:6f1c2a10-0011-4000-8000-000000000011"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "DocumentReference?identifier=https://hospital-ejemplo.cl/fhir/sid/documentos|DOC-DAU-2026-000123"
    }
  }]
}

```
