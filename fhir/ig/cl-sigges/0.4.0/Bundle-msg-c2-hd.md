# Mensaje C2 — HD confirma - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mensaje C2 — HD confirma**

## Example Bundle: Mensaje C2 — HD confirma



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "msg-c2-hd",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"]
  },
  "identifier" : {
    "system" : "http://example.org/his/sid/mensaje",
    "value" : "msg-c2-hd"
  },
  "type" : "message",
  "timestamp" : "2026-06-08T09:11:02-03:00",
  "entry" : [{
    "fullUrl" : "http://example.org/his/fhir/MessageHeader/msg-c2-hd-mh",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "msg-c2-hd-mh",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_msg-c2-hd-mh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje msg-c2-hd-mh</b></p><a name=\"msg-c2-hd-mh\"> </a><a name=\"hcmsg-c2-hd-mh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-mh-notificacion-ges.html\">MessageHeader — Notificación GES</a></p></div><p><b>event</b>: <a href=\"CodeSystem-tipo-documento-sigges.html#tipo-documento-sigges-HD\">Tipos de documento SIGGES: HD</a> (Hoja diaria APS)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>SIGGES 2.0</td><td><a href=\"http://example.org/sigges/fhir/$process-message\">http://example.org/sigges/fhir/$process-message</a></td><td>FONASA</td></tr></table><p><b>sender</b>: <a href=\"Organization-cesfam-santo-tomas.html\">Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</a></p><p><b>author</b>: <a href=\"PractitionerRole-rol-vergara-cesfam-st.html\">Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Software</b></td><td><b>Version</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>RAYEN_APS</td><td>HIS Ejemplo</td><td>5.2.1</td><td><a href=\"http://example.org/his/fhir/\">http://example.org/his/fhir/</a></td></tr></table><p><b>focus</b>: </p><ul><li><a href=\"Condition-hd-c-confirmado.html\">Condition Diabetes mellitus tipo 2</a></li><li><a href=\"EpisodeOfCare-caso-c.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812501,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CST-2026-001207; status = active; type = Diabetes mellitus tipo 2,Diabetes mellitus tipo 2 (decreto nº 228); period = 2026-06-01 --&gt; (ongoing)</a></li></ul></div>"
      },
      "eventCoding" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges",
        "code" : "HD",
        "display" : "Hoja diaria APS"
      },
      "destination" : [{
        "name" : "SIGGES 2.0",
        "endpoint" : "http://example.org/sigges/fhir/$process-message",
        "receiver" : {
          "display" : "FONASA"
        }
      }],
      "sender" : {
        "reference" : "Organization/cesfam-santo-tomas"
      },
      "author" : {
        "reference" : "PractitionerRole/rol-vergara-cesfam-st"
      },
      "source" : {
        "name" : "RAYEN_APS",
        "software" : "HIS Ejemplo",
        "version" : "5.2.1",
        "endpoint" : "http://example.org/his/fhir/"
      },
      "focus" : [{
        "reference" : "Condition/hd-c-confirmado"
      },
      {
        "reference" : "EpisodeOfCare/caso-c"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Condition/hd-c-confirmado",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "hd-c-confirmado",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/hoja-diaria-ges"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_hd-c-confirmado\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condición hd-c-confirmado</b></p><a name=\"hd-c-confirmado\"> </a><a name=\"hchd-c-confirmado\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-hoja-diaria-ges.html\">HD — Hoja diaria APS</a></p></div><p><b>Caso GES</b>: <a href=\"EpisodeOfCare-caso-c.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812501,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CST-2026-001207; status = active; type = Diabetes mellitus tipo 2,Diabetes mellitus tipo 2 (decreto nº 228); period = 2026-06-01 --&gt; (ongoing)</a></p><p><b>Estado de hoja diaria APS</b>: <a href=\"CodeSystem-estado-hoja-diaria-ges.html#estado-hoja-diaria-ges-1192\">Estados de Hoja Diaria APS: 1192</a> (Caso Confirmado (rama 129))</p><p><b>Tratamiento e indicaciones</b>: Metformina 850 mg cada 12 h; ingreso a Programa de Salud Cardiovascular; derivar a endocrinología.</p><p><b>identifier</b>: <a href=\"NamingSystem-NSFolioDocumento.html\" title=\"Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia.\">NSFolioDocumento</a>/HD-CST-2026-056981</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 7}\">Diabetes mellitus tipo 2</span></p><p><b>subject</b>: <a href=\"Patient-pac-c.html\">Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))</a></p><p><b>recordedDate</b>: 2026-06-08 09:10:00-0300</p><p><b>recorder</b>: <a href=\"PractitionerRole-rol-vergara-cesfam-st.html\">Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</a></p><p><b>note</b>: </p><blockquote><div><p>Segunda glicemia en ayunas 151 mg/dL; HbA1c 7,4 %.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
        "valueReference" : {
          "reference" : "EpisodeOfCare/caso-c"
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-estado-hoja-diaria",
        "valueCoding" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/estado-hoja-diaria-ges",
          "code" : "1192",
          "display" : "Caso Confirmado (rama 129)"
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
        "valueString" : "Metformina 850 mg cada 12 h; ingreso a Programa de Salud Cardiovascular; derivar a endocrinología."
      }],
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
        "value" : "HD-CST-2026-056981",
        "assigner" : {
          "reference" : "Organization/cesfam-santo-tomas"
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
          "code" : "confirmed"
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
          "code" : "7",
          "display" : "Diabetes mellitus tipo 2"
        }],
        "text" : "Diabetes mellitus tipo 2"
      },
      "subject" : {
        "reference" : "Patient/pac-c"
      },
      "recordedDate" : "2026-06-08T09:10:00-03:00",
      "recorder" : {
        "reference" : "PractitionerRole/rol-vergara-cesfam-st"
      },
      "note" : [{
        "text" : "Segunda glicemia en ayunas 151 mg/dL; HbA1c 7,4 %."
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/EpisodeOfCare/caso-c",
    "resource" : {
      "resourceType" : "EpisodeOfCare",
      "id" : "caso-c",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EpisodeOfCare_caso-c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EpisodioDeCuidado caso-c</b></p><a name=\"caso-c\"> </a><a name=\"hccaso-c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-caso-ges.html\">Caso GES</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-NSCasoSIGGES.html\" title=\"Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación.\">NSCasoSIGGES</a>/8812501, <a href=\"NamingSystem-NSCasoLocal.html\" title=\"Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio.\">NSCasoLocal</a>/CST-2026-001207</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 7}\">Diabetes mellitus tipo 2</span>, <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges 129}\">Diabetes mellitus tipo 2 (decreto nº 228)</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-hd-c-confirmado.html\">Condition Diabetes mellitus tipo 2</a></td></tr></table><p><b>patient</b>: <a href=\"Patient-pac-c.html\">Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))</a></p><p><b>managingOrganization</b>: <a href=\"Organization-cesfam-santo-tomas.html\">Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</a></p><p><b>period</b>: 2026-06-01 --&gt; (ongoing)</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
        "value" : "8812501"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
        "value" : "CST-2026-001207",
        "assigner" : {
          "reference" : "Organization/cesfam-santo-tomas"
        }
      }],
      "status" : "active",
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
          "code" : "7",
          "display" : "Diabetes mellitus tipo 2"
        }]
      },
      {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
          "code" : "129",
          "display" : "Diabetes mellitus tipo 2 (decreto nº 228)"
        }]
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/hd-c-confirmado"
        }
      }],
      "patient" : {
        "reference" : "Patient/pac-c"
      },
      "managingOrganization" : {
        "reference" : "Organization/cesfam-santo-tomas"
      },
      "period" : {
        "start" : "2026-06-01"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Patient/pac-c",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "pac-c",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_pac-c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente pac-c</b></p><a name=\"pac-c\"> </a><a name=\"hcpac-c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-paciente-ges.html\">Paciente GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Luis Alberto Muñoz (official) Male, DoB: 1975-11-20 ( RUN: 12345670-K (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+56966554433\">+56 9 6655 4433</a></li><li>Calle El Roble 455 La Pintana Metropolitana de Santiago (home)</li></ul></td></tr></table></div>"
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
        "value" : "12345670-K"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Muñoz",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Díaz"
          }]
        },
        "given" : ["Luis", "Alberto"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56 9 6655 4433",
        "use" : "mobile"
      }],
      "gender" : "male",
      "birthDate" : "1975-11-20",
      "deceasedBoolean" : false,
      "address" : [{
        "use" : "home",
        "line" : ["Calle El Roble 455"],
        "city" : "La Pintana",
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "13112",
                "display" : "La Pintana"
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
    "fullUrl" : "http://example.org/his/fhir/PractitionerRole/rol-vergara-cesfam-st",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "rol-vergara-cesfam-st",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_rol-vergara-cesfam-st\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional rol-vergara-cesfam-st</b></p><a name=\"rol-vergara-cesfam-st\"> </a><a name=\"hcrol-vergara-cesfam-st\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-rol-clinico-ges.html\">Rol clínico GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Tomás Vergara (official) (RUN: 16587320-3 (use: official)) at Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-pr-vergara.html\">Tomás Vergara (official) (RUN: 16587320-3 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-cesfam-santo-tomas.html\">Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The specialties of the practitioner in this role\">Specialty:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges 07-900-1}\">Medicina Familiar</span></td></tr></table></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/pr-vergara"
      },
      "organization" : {
        "reference" : "Organization/cesfam-santo-tomas"
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
    "fullUrl" : "http://example.org/his/fhir/Practitioner/pr-vergara",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "pr-vergara",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_pr-vergara\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional pr-vergara</b></p><a name=\"pr-vergara\"> </a><a name=\"hcpr-vergara\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-prestador-ges.html\">Profesional GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Tomás Vergara (official) (RUN: 16587320-3 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Administrative gender\">Gender:</td><td colspan=\"3\">Male</td></tr></table></div>"
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
        "value" : "16587320-3"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Vergara",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Pino"
          }]
        },
        "given" : ["Tomás"]
      }],
      "gender" : "male"
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Organization/cesfam-santo-tomas",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "cesfam-santo-tomas",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_cesfam-santo-tomas\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización cesfam-santo-tomas</b></p><a name=\"cesfam-santo-tomas\"> </a><a name=\"hccesfam-santo-tomas\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-establecimiento-ges.html\">Establecimiento GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Centro de Salud Familiar Santo Tomás (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-317)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"The kind(s) of organization that this is\">Type:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges publico}\">Público</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization of which this organization forms a part\">Part Of:</td><td colspan=\"3\">Servicio de Salud Metropolitano Sur Oriente (Identifier: <code>https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis</code>/14)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\"><code>http://deis.minsal.cl/establecimientos</code>/114317 (use: official)</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "http://deis.minsal.cl/establecimientos",
        "value" : "114317"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
        "value" : "14-317"
      }],
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
          "code" : "publico",
          "display" : "Público"
        }]
      }],
      "name" : "Centro de Salud Familiar Santo Tomás",
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
