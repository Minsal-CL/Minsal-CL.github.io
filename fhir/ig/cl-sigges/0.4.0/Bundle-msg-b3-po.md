# Mensaje B3 — PO hemodiálisis - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mensaje B3 — PO hemodiálisis**

## Example Bundle: Mensaje B3 — PO hemodiálisis



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "msg-b3-po",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"]
  },
  "identifier" : {
    "system" : "http://example.org/his/sid/mensaje",
    "value" : "msg-b3-po"
  },
  "type" : "message",
  "timestamp" : "2026-06-11T18:22:09-03:00",
  "entry" : [{
    "fullUrl" : "http://example.org/his/fhir/MessageHeader/msg-b3-po-mh",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "msg-b3-po-mh",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_msg-b3-po-mh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje msg-b3-po-mh</b></p><a name=\"msg-b3-po-mh\"> </a><a name=\"hcmsg-b3-po-mh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-mh-notificacion-ges.html\">MessageHeader — Notificación GES</a></p></div><p><b>event</b>: <a href=\"CodeSystem-tipo-documento-sigges.html#tipo-documento-sigges-PO\">Tipos de documento SIGGES: PO</a> (Prestación otorgada)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>SIGGES 2.0</td><td><a href=\"http://example.org/sigges/fhir/$process-message\">http://example.org/sigges/fhir/$process-message</a></td><td>FONASA</td></tr></table><p><b>sender</b>: <a href=\"Organization-sotero-del-rio.html\">Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</a></p><p><b>author</b>: <a href=\"PractitionerRole-rol-soto-sotero.html\">Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Software</b></td><td><b>Version</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>SISTEMA_HOSPITAL</td><td>HIS Ejemplo</td><td>5.2.1</td><td><a href=\"http://example.org/his/fhir/\">http://example.org/his/fhir/</a></td></tr></table><p><b>focus</b>: </p><ul><li><a href=\"Procedure-po-b-hemodialisis.html\">Procedure HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)</a></li><li><a href=\"EpisodeOfCare-caso-b.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812399,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#SR-2026-004410; status = active; type = Enfermedad renal crónica etapa 4 y 5,Enfermedad renal crónica etapa 4 y 5 (decreto nº 228); period = 2026-05-04 --&gt; (ongoing)</a></li></ul></div>"
      },
      "eventCoding" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-documento-sigges",
        "code" : "PO",
        "display" : "Prestación otorgada"
      },
      "destination" : [{
        "name" : "SIGGES 2.0",
        "endpoint" : "http://example.org/sigges/fhir/$process-message",
        "receiver" : {
          "display" : "FONASA"
        }
      }],
      "sender" : {
        "reference" : "Organization/sotero-del-rio"
      },
      "author" : {
        "reference" : "PractitionerRole/rol-soto-sotero"
      },
      "source" : {
        "name" : "SISTEMA_HOSPITAL",
        "software" : "HIS Ejemplo",
        "version" : "5.2.1",
        "endpoint" : "http://example.org/his/fhir/"
      },
      "focus" : [{
        "reference" : "Procedure/po-b-hemodialisis"
      },
      {
        "reference" : "EpisodeOfCare/caso-b"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Procedure/po-b-hemodialisis",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "po-b-hemodialisis",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_po-b-hemodialisis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedimiento po-b-hemodialisis</b></p><a name=\"po-b-hemodialisis\"> </a><a name=\"hcpo-b-hemodialisis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-po-ges.html\">PO — Prestación otorgada</a></p></div><p><b>Caso GES</b>: <a href=\"EpisodeOfCare-caso-b.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812399,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#SR-2026-004410; status = active; type = Enfermedad renal crónica etapa 4 y 5,Enfermedad renal crónica etapa 4 y 5 (decreto nº 228); period = 2026-05-04 --&gt; (ongoing)</a></p><p><b>Garantía GES</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges 4037}\">Tratamiento Hemodiálisis</span></p><p><b>identifier</b>: <a href=\"NamingSystem-NSFolioDocumento.html\" title=\"Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia.\">NSFolioDocumento</a>/PO-SR-2026-040551</p><p><b>basedOn</b>: <a href=\"ServiceRequest-oa-b-hemodialisis.html\">ServiceRequest HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)</a></p><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa 1901029}\">HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)</span></p><p><b>subject</b>: <a href=\"Patient-pac-b.html\">María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))</a></p><p><b>performed</b>: 2026-05-12 --&gt; 2026-06-11</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"PractitionerRole-rol-soto-sotero.html\">Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
        "valueReference" : {
          "reference" : "EpisodeOfCare/caso-b"
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
            "code" : "4037",
            "display" : "Tratamiento Hemodiálisis"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
        "value" : "PO-SR-2026-040551",
        "assigner" : {
          "reference" : "Organization/sotero-del-rio"
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/oa-b-hemodialisis"
      }],
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
          "code" : "1901029",
          "display" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
        }],
        "text" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
      },
      "subject" : {
        "reference" : "Patient/pac-b"
      },
      "performedPeriod" : {
        "start" : "2026-05-12",
        "end" : "2026-06-11"
      },
      "performer" : [{
        "actor" : {
          "reference" : "PractitionerRole/rol-soto-sotero"
        }
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/EpisodeOfCare/caso-b",
    "resource" : {
      "resourceType" : "EpisodeOfCare",
      "id" : "caso-b",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EpisodeOfCare_caso-b\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EpisodioDeCuidado caso-b</b></p><a name=\"caso-b\"> </a><a name=\"hccaso-b\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-caso-ges.html\">Caso GES</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-NSCasoSIGGES.html\" title=\"Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación.\">NSCasoSIGGES</a>/8812399, <a href=\"NamingSystem-NSCasoLocal.html\" title=\"Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio.\">NSCasoLocal</a>/SR-2026-004410</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 1}\">Enfermedad renal crónica etapa 4 y 5</span>, <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges 125}\">Enfermedad renal crónica etapa 4 y 5 (decreto nº 228)</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-ipd-b.html\">Condition Enfermedad renal crónica etapa 5 secundaria a nefropatía diabética</a></td></tr></table><p><b>patient</b>: <a href=\"Patient-pac-b.html\">María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))</a></p><p><b>managingOrganization</b>: <a href=\"Organization-sotero-del-rio.html\">Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</a></p><p><b>period</b>: 2026-05-04 --&gt; (ongoing)</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
        "value" : "8812399"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
        "value" : "SR-2026-004410",
        "assigner" : {
          "reference" : "Organization/sotero-del-rio"
        }
      }],
      "status" : "active",
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
          "code" : "1",
          "display" : "Enfermedad renal crónica etapa 4 y 5"
        }]
      },
      {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges",
          "code" : "125",
          "display" : "Enfermedad renal crónica etapa 4 y 5 (decreto nº 228)"
        }]
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/ipd-b"
        }
      }],
      "patient" : {
        "reference" : "Patient/pac-b"
      },
      "managingOrganization" : {
        "reference" : "Organization/sotero-del-rio"
      },
      "period" : {
        "start" : "2026-05-04"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Patient/pac-b",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "pac-b",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_pac-b\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente pac-b</b></p><a name=\"pac-b\"> </a><a name=\"hcpac-b\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-paciente-ges.html\">Paciente GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+56977881122\">+56 9 7788 1122</a></li><li><a href=\"mailto:maria.gonzalez@correo.cl\">maria.gonzalez@correo.cl</a></li><li>Pasaje Los Aromos 1234 Puente Alto Metropolitana de Santiago (home)</li></ul></td></tr></table></div>"
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
        "value" : "7654321-6"
      }],
      "name" : [{
        "use" : "official",
        "family" : "González",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Rojas"
          }]
        },
        "given" : ["María", "Isabel"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56 9 7788 1122",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "maria.gonzalez@correo.cl",
        "use" : "home"
      }],
      "gender" : "female",
      "birthDate" : "1958-07-02",
      "deceasedBoolean" : false,
      "address" : [{
        "use" : "home",
        "line" : ["Pasaje Los Aromos 1234"],
        "city" : "Puente Alto",
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "13201",
                "display" : "Puente Alto"
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
    "fullUrl" : "http://example.org/his/fhir/PractitionerRole/rol-soto-sotero",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "rol-soto-sotero",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_rol-soto-sotero\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional rol-soto-sotero</b></p><a name=\"rol-soto-sotero\"> </a><a name=\"hcrol-soto-sotero\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-rol-clinico-ges.html\">Rol clínico GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-pr-soto.html\">Valentina Soto (official) (RUN: 14209771-0 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-sotero-del-rio.html\">Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The specialties of the practitioner in this role\">Specialty:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges 07-108-2}\">Nefrología Adulto</span></td></tr></table></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/pr-soto"
      },
      "organization" : {
        "reference" : "Organization/sotero-del-rio"
      },
      "specialty" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
          "code" : "07-108-2",
          "display" : "Nefrología Adulto"
        }]
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Practitioner/pr-soto",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "pr-soto",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_pr-soto\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional pr-soto</b></p><a name=\"pr-soto\"> </a><a name=\"hcpr-soto\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-prestador-ges.html\">Profesional GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Valentina Soto (official) (RUN: 14209771-0 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Administrative gender\">Gender:</td><td colspan=\"3\">Female</td></tr></table></div>"
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
        "value" : "14209771-0"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Soto",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Araya"
          }]
        },
        "given" : ["Valentina"]
      }],
      "gender" : "female"
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Organization/sotero-del-rio",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "sotero-del-rio",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/establecimiento-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_sotero-del-rio\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización sotero-del-rio</b></p><a name=\"sotero-del-rio\"> </a><a name=\"hcsotero-del-rio\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-establecimiento-ges.html\">Establecimiento GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"The kind(s) of organization that this is\">Type:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges publico}\">Público</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization of which this organization forms a part\">Part Of:</td><td colspan=\"3\">Servicio de Salud Metropolitano Sur Oriente (Identifier: <code>https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis</code>/14)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\"><code>http://deis.minsal.cl/establecimientos</code>/114101 (use: official)</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "http://deis.minsal.cl/establecimientos",
        "value" : "114101"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis",
        "value" : "14-101"
      }],
      "type" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/tipo-origen-ges",
          "code" : "publico",
          "display" : "Público"
        }]
      }],
      "name" : "Complejo Hospitalario Dr. Sótero del Río",
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
