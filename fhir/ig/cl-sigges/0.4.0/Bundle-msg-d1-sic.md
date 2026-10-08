# Mensaje D1 — SIC - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mensaje D1 — SIC**

## Example Bundle: Mensaje D1 — SIC



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "msg-d1-sic",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"]
  },
  "identifier" : {
    "system" : "http://example.org/his/sid/mensaje",
    "value" : "msg-d1-sic"
  },
  "type" : "message",
  "timestamp" : "2026-04-02T15:31:20-03:00",
  "entry" : [{
    "fullUrl" : "http://example.org/his/fhir/MessageHeader/msg-d1-sic-mh",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "msg-d1-sic-mh",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_msg-d1-sic-mh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje msg-d1-sic-mh</b></p><a name=\"msg-d1-sic-mh\"> </a><a name=\"hcmsg-d1-sic-mh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-mh-notificacion-ges.html\">MessageHeader — Notificación GES</a></p></div><p><b>event</b>: <a href=\"CodeSystem-tipo-documento-sigges.html#tipo-documento-sigges-SIC\">Tipos de documento SIGGES: SIC</a> (Solicitud de interconsulta)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>SIGGES 2.0</td><td><a href=\"http://example.org/sigges/fhir/$process-message\">http://example.org/sigges/fhir/$process-message</a></td><td>FONASA</td></tr></table><p><b>sender</b>: <a href=\"Organization-cesfam-la-florida.html\">Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></p><p><b>author</b>: <a href=\"PractitionerRole-rol-rojas-cesfam-lf.html\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Software</b></td><td><b>Version</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>RAYEN_APS</td><td>HIS Ejemplo</td><td>5.2.1</td><td><a href=\"http://example.org/his/fhir/\">http://example.org/his/fhir/</a></td></tr></table><p><b>focus</b>: </p><ul><li><a href=\"ServiceRequest-sic-d.html\">ServiceRequest: extension = -&gt;EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --&gt; 2026-04-24; identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento#NSFolioDocumento#SIC-CLF-2026-001044; status = active; intent = order; category = Confirmación Diagnóstica; authoredOn = 2026-04-02 15:30:00-0300; performerType = Gastroenterología Adulto</a></li><li><a href=\"EpisodeOfCare-caso-d.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --&gt; 2026-04-24</a></li></ul></div>"
      },
      "eventCoding" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges",
        "code" : "SIC",
        "display" : "Solicitud de interconsulta"
      },
      "destination" : [{
        "name" : "SIGGES 2.0",
        "endpoint" : "http://example.org/sigges/fhir/$process-message",
        "receiver" : {
          "display" : "FONASA"
        }
      }],
      "sender" : {
        "reference" : "Organization/cesfam-la-florida"
      },
      "author" : {
        "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
      },
      "source" : {
        "name" : "RAYEN_APS",
        "software" : "HIS Ejemplo",
        "version" : "5.2.1",
        "endpoint" : "http://example.org/his/fhir/"
      },
      "focus" : [{
        "reference" : "ServiceRequest/sic-d"
      },
      {
        "reference" : "EpisodeOfCare/caso-d"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/ServiceRequest/sic-d",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "sic-d",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/sic-ges"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_sic-d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio sic-d</b></p><a name=\"sic-d\"> </a><a name=\"hcsic-d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-sic-ges.html\">SIC — Solicitud de interconsulta</a></p></div><p><b>Caso GES</b>: <a href=\"EpisodeOfCare-caso-d.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --&gt; 2026-04-24</a></p><p><b>identifier</b>: <a href=\"NamingSystem-NSFolioDocumento.html\" title=\"Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia.\">NSFolioDocumento</a>/SIC-CLF-2026-001044</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges 1}\">Confirmación Diagnóstica</span></p><p><b>subject</b>: <a href=\"Patient-pac-d.html\">Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))</a></p><p><b>authoredOn</b>: 2026-04-02 15:30:00-0300</p><p><b>requester</b>: <a href=\"PractitionerRole-rol-rojas-cesfam-lf.html\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></p><p><b>performerType</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges 07-105-2}\">Gastroenterología Adulto</span></p><p><b>performer</b>: <a href=\"Organization-hosp-la-florida.html\">Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></p><p><b>reasonReference</b>: <a href=\"Condition-cond-d-sospecha.html\">Condition Sospecha de cáncer gástrico</a></p></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
        "valueReference" : {
          "reference" : "EpisodeOfCare/caso-d"
        }
      }],
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
        "value" : "SIC-CLF-2026-001044",
        "assigner" : {
          "reference" : "Organization/cesfam-la-florida"
        }
      }],
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
          "code" : "1",
          "display" : "Confirmación Diagnóstica"
        }]
      }],
      "subject" : {
        "reference" : "Patient/pac-d"
      },
      "authoredOn" : "2026-04-02T15:30:00-03:00",
      "requester" : {
        "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
      },
      "performerType" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
          "code" : "07-105-2",
          "display" : "Gastroenterología Adulto"
        }]
      },
      "performer" : [{
        "reference" : "Organization/hosp-la-florida"
      }],
      "reasonReference" : [{
        "reference" : "Condition/cond-d-sospecha"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Condition/cond-d-sospecha",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "cond-d-sospecha",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/diagnostico-ges"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_cond-d-sospecha\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condición cond-d-sospecha</b></p><a name=\"cond-d-sospecha\"> </a><a name=\"hccond-d-sospecha\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-diagnostico-ges.html\">Diagnóstico GES</a></p></div><p><b>Caso GES</b>: <a href=\"EpisodeOfCare-caso-d.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --&gt; 2026-04-24</a></p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 27}\">Sospecha de cáncer gástrico</span></p><p><b>subject</b>: <a href=\"Patient-pac-d.html\">Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))</a></p><p><b>recordedDate</b>: 2026-04-02 15:30:00-0300</p><p><b>recorder</b>: <a href=\"PractitionerRole-rol-rojas-cesfam-lf.html\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></p><p><b>note</b>: </p><blockquote><div><p>Dispepsia de reciente comienzo en mayor de 40 años, con saciedad precoz.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
        "valueReference" : {
          "reference" : "EpisodeOfCare/caso-d"
        }
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
          "code" : "provisional"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
          "code" : "27",
          "display" : "Cáncer gástrico"
        }],
        "text" : "Sospecha de cáncer gástrico"
      },
      "subject" : {
        "reference" : "Patient/pac-d"
      },
      "recordedDate" : "2026-04-02T15:30:00-03:00",
      "recorder" : {
        "reference" : "PractitionerRole/rol-rojas-cesfam-lf"
      },
      "note" : [{
        "text" : "Dispepsia de reciente comienzo en mayor de 40 años, con saciedad precoz."
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/EpisodeOfCare/caso-d",
    "resource" : {
      "resourceType" : "EpisodeOfCare",
      "id" : "caso-d",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EpisodeOfCare_caso-d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EpisodioDeCuidado caso-d</b></p><a name=\"caso-d\"> </a><a name=\"hccaso-d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-caso-ges.html\">Caso GES</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-NSCasoLocal.html\" title=\"Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio.\">NSCasoLocal</a>/CLF-2026-001044</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 27}\">Cáncer gástrico</span>, <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges 108}\">Cáncer gástrico (decreto nº 228)</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-cond-d-sospecha.html\">Condition Sospecha de cáncer gástrico</a></td></tr></table><p><b>patient</b>: <a href=\"Patient-pac-d.html\">Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))</a></p><p><b>managingOrganization</b>: <a href=\"Organization-cesfam-la-florida.html\">Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></p><p><b>period</b>: 2026-04-02 --&gt; (ongoing)</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
        "value" : "CLF-2026-001044",
        "assigner" : {
          "reference" : "Organization/cesfam-la-florida"
        }
      }],
      "status" : "active",
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
          "code" : "27",
          "display" : "Cáncer gástrico"
        }]
      },
      {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
          "code" : "108",
          "display" : "Cáncer gástrico (decreto nº 228)"
        }]
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/cond-d-sospecha"
        }
      }],
      "patient" : {
        "reference" : "Patient/pac-d"
      },
      "managingOrganization" : {
        "reference" : "Organization/cesfam-la-florida"
      },
      "period" : {
        "start" : "2026-04-02"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Patient/pac-d",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "pac-d",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_pac-d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente pac-d</b></p><a name=\"pac-d\"> </a><a name=\"hcpac-d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-paciente-ges.html\">Paciente GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+56223456789\">+56 2 2345 6789</a></li><li>Walker Martínez 2890 La Florida Metropolitana de Santiago (home)</li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "urn:iso:std:iso:3166",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }],
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
            "code" : "1",
            "display" : "RUN"
          }]
        },
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run",
        "value" : "10987654-2"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Tapia",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Vidal"
          }]
        },
        "given" : ["Rosa", "Elena"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56 2 2345 6789",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1970-01-30",
      "deceasedBoolean" : false,
      "address" : [{
        "use" : "home",
        "line" : ["Walker Martínez 2890"],
        "city" : "La Florida",
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "13110",
                "display" : "La Florida"
              }]
            }
          }]
        },
        "state" : "Metropolitana de Santiago",
        "_state" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                "code" : "13",
                "display" : "Metropolitana de Santiago"
              }]
            }
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/PractitionerRole/rol-rojas-cesfam-lf",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "rol-rojas-cesfam-lf",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_rol-rojas-cesfam-lf\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional rol-rojas-cesfam-lf</b></p><a name=\"rol-rojas-cesfam-lf\"> </a><a name=\"hcrol-rojas-cesfam-lf\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-rol-clinico-ges.html\">Rol clínico GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official)) at Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-pr-rojas.html\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-cesfam-la-florida.html\">Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The specialties of the practitioner in this role\">Specialty:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges 07-900-1}\">Medicina Familiar</span></td></tr></table></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/pr-rojas"
      },
      "organization" : {
        "reference" : "Organization/cesfam-la-florida"
      },
      "specialty" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
          "code" : "07-900-1",
          "display" : "Medicina Familiar"
        }]
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Practitioner/pr-rojas",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "pr-rojas",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_pr-rojas\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional pr-rojas</b></p><a name=\"pr-rojas\"> </a><a name=\"hcpr-rojas\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-prestador-ges.html\">Profesional GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Camila Andrea Rojas (official) (RUN: 15934286-7 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Administrative gender\">Gender:</td><td colspan=\"3\">Female</td></tr></table></div>"
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
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run",
        "value" : "15934286-7"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Rojas",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Muñoz"
          }]
        },
        "given" : ["Camila", "Andrea"]
      }],
      "gender" : "female"
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Organization/cesfam-la-florida",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "cesfam-la-florida",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_cesfam-la-florida\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización cesfam-la-florida</b></p><a name=\"cesfam-la-florida\"> </a><a name=\"hccesfam-la-florida\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-establecimiento-ges.html\">Establecimiento GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"The kind(s) of organization that this is\">Type:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges publico}\">Público</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization of which this organization forms a part\">Part Of:</td><td colspan=\"3\">Servicio de Salud Metropolitano Sur Oriente (Identifier: <code>https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis</code>/14)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\"><code>http://deis.minsal.cl/establecimientos</code>/114331 (use: official)</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "http://deis.minsal.cl/establecimientos",
        "value" : "114331"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
        "value" : "14-331"
      }],
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
          "code" : "publico",
          "display" : "Público"
        }]
      }],
      "name" : "Centro de Salud Familiar La Florida",
      "partOf" : {
        "identifier" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
          "value" : "14"
        },
        "display" : "Servicio de Salud Metropolitano Sur Oriente"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Organization/hosp-la-florida",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "hosp-la-florida",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_hosp-la-florida\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización hosp-la-florida</b></p><a name=\"hosp-la-florida\"> </a><a name=\"hchosp-la-florida\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-establecimiento-ges.html\">Establecimiento GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"The kind(s) of organization that this is\">Type:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges publico}\">Público</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization of which this organization forms a part\">Part Of:</td><td colspan=\"3\">Servicio de Salud Metropolitano Sur Oriente (Identifier: <code>https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis</code>/14)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\"><code>http://deis.minsal.cl/establecimientos</code>/114105 (use: official)</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "http://deis.minsal.cl/establecimientos",
        "value" : "114105"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
        "value" : "14-105"
      }],
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
          "code" : "publico",
          "display" : "Público"
        }]
      }],
      "name" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza",
      "partOf" : {
        "identifier" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
          "value" : "14"
        },
        "display" : "Servicio de Salud Metropolitano Sur Oriente"
      }
    }
  }]
}

```
