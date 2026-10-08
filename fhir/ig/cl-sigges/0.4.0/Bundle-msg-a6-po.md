# Mensaje A6 — PO cirugía - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mensaje A6 — PO cirugía**

## Example Bundle: Mensaje A6 — PO cirugía



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "msg-a6-po",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/bundle-notificacion-ges"]
  },
  "identifier" : {
    "system" : "http://example.org/his/sid/mensaje",
    "value" : "msg-a6-po"
  },
  "type" : "message",
  "timestamp" : "2026-04-20T13:05:51-03:00",
  "entry" : [{
    "fullUrl" : "http://example.org/his/fhir/MessageHeader/msg-a6-po-mh",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "msg-a6-po-mh",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/mh-notificacion-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_msg-a6-po-mh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje msg-a6-po-mh</b></p><a name=\"msg-a6-po-mh\"> </a><a name=\"hcmsg-a6-po-mh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-mh-notificacion-ges.html\">MessageHeader — Notificación GES</a></p></div><p><b>event</b>: <a href=\"CodeSystem-tipo-documento-sigges.html#tipo-documento-sigges-PO\">Tipos de documento SIGGES: PO</a> (Prestación otorgada)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>SIGGES 2.0</td><td><a href=\"http://example.org/sigges/fhir/$process-message\">http://example.org/sigges/fhir/$process-message</a></td><td>FONASA</td></tr></table><p><b>sender</b>: <a href=\"Organization-hosp-la-florida.html\">Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></p><p><b>author</b>: <a href=\"PractitionerRole-rol-paredes-hlf.html\">Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Software</b></td><td><b>Version</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>SISTEMA_HOSPITAL</td><td>HIS Ejemplo</td><td>5.2.1</td><td><a href=\"http://example.org/his/fhir/\">http://example.org/his/fhir/</a></td></tr></table><p><b>focus</b>: </p><ul><li><a href=\"Procedure-po-a-cirugia.html\">Procedure GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR</a></li><li><a href=\"EpisodeOfCare-caso-a.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --&gt; (ongoing)</a></li></ul></div>"
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
        "reference" : "Organization/hosp-la-florida"
      },
      "author" : {
        "reference" : "PractitionerRole/rol-paredes-hlf"
      },
      "source" : {
        "name" : "SISTEMA_HOSPITAL",
        "software" : "HIS Ejemplo",
        "version" : "5.2.1",
        "endpoint" : "http://example.org/his/fhir/"
      },
      "focus" : [{
        "reference" : "Procedure/po-a-cirugia"
      },
      {
        "reference" : "EpisodeOfCare/caso-a"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Procedure/po-a-cirugia",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "po-a-cirugia",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_po-a-cirugia\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedimiento po-a-cirugia</b></p><a name=\"po-a-cirugia\"> </a><a name=\"hcpo-a-cirugia\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-po-ges.html\">PO — Prestación otorgada</a></p></div><p><b>Caso GES</b>: <a href=\"EpisodeOfCare-caso-a.html\">EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --&gt; (ongoing)</a></p><p><b>Garantía GES</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges 702}\">Intervención Quirúrgica</span></p><p><b>identifier</b>: <a href=\"NamingSystem-NSFolioDocumento.html\" title=\"Folio del documento en el sistema de origen (folioDocumentoHospital). Único por establecimiento (identifier.assigner) y clave de idempotencia.\">NSFolioDocumento</a>/PO-HLF-2026-021904</p><p><b>basedOn</b>: <a href=\"ServiceRequest-oa-a-cirugia.html\">ServiceRequest GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR</a></p><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa 1802017}\">GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR</span></p><p><b>subject</b>: <a href=\"Patient-pac-a.html\">Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))</a></p><p><b>performed</b>: 2026-04-20 08:30:00-0300 --&gt; 2026-04-20 12:10:00-0300</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"PractitionerRole-rol-paredes-hlf.html\">Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
        "valueReference" : {
          "reference" : "EpisodeOfCare/caso-a"
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
            "code" : "702",
            "display" : "Intervención Quirúrgica"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
        "value" : "PO-HLF-2026-021904",
        "assigner" : {
          "reference" : "Organization/hosp-la-florida"
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/oa-a-cirugia"
      }],
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
          "code" : "1802017",
          "display" : "GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR"
        }],
        "text" : "GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR"
      },
      "subject" : {
        "reference" : "Patient/pac-a"
      },
      "performedPeriod" : {
        "start" : "2026-04-20T08:30:00-03:00",
        "end" : "2026-04-20T12:10:00-03:00"
      },
      "performer" : [{
        "actor" : {
          "reference" : "PractitionerRole/rol-paredes-hlf"
        }
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/EpisodeOfCare/caso-a",
    "resource" : {
      "resourceType" : "EpisodeOfCare",
      "id" : "caso-a",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/caso-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EpisodeOfCare_caso-a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EpisodioDeCuidado caso-a</b></p><a name=\"caso-a\"> </a><a name=\"hccaso-a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-caso-ges.html\">Caso GES</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-NSCasoSIGGES.html\" title=\"Número de caso GES asignado por SIGGES 2.0 y devuelto en la respuesta a la primera notificación.\">NSCasoSIGGES</a>/8812345, <a href=\"NamingSystem-NSCasoLocal.html\" title=\"Identificador del caso GES en el establecimiento, usado mientras SIGGES no asigna su número. Es único solo junto con su assigner (el establecimiento): EpisodeOfCare.identifier[casoLocal].assigner es obligatorio.\">NSCasoLocal</a>/CLF-2026-000871</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges 27}\">Cáncer gástrico</span>, <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/rama-problema-salud-ges 108}\">Cáncer gástrico (decreto nº 228)</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-ipd-a.html\">Condition Adenocarcinoma gástrico tubular moderadamente diferenciado, antro</a></td></tr></table><p><b>patient</b>: <a href=\"Patient-pac-a.html\">Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))</a></p><p><b>managingOrganization</b>: <a href=\"Organization-hosp-la-florida.html\">Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></p><p><b>period</b>: 2026-03-02 --&gt; (ongoing)</p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges",
        "value" : "8812345"
      },
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local",
        "value" : "CLF-2026-000871",
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
          "reference" : "Condition/ipd-a"
        }
      }],
      "patient" : {
        "reference" : "Patient/pac-a"
      },
      "managingOrganization" : {
        "reference" : "Organization/hosp-la-florida"
      },
      "period" : {
        "start" : "2026-03-02"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Patient/pac-a",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "pac-a",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/paciente-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_pac-a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente pac-a</b></p><a name=\"pac-a\"> </a><a name=\"hcpac-a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-paciente-ges.html\">Paciente GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+56981234567\">+56 9 8123 4567</a></li><li>Av. Vicuña Mackenna 7110, depto 402 La Florida Metropolitana de Santiago (home)</li></ul></td></tr></table></div>"
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
        "value" : "9876543-3"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Pérez",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Soto"
          }]
        },
        "given" : ["Juan", "Carlos"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56 9 8123 4567",
        "use" : "mobile"
      }],
      "gender" : "male",
      "birthDate" : "1961-03-14",
      "deceasedBoolean" : false,
      "address" : [{
        "use" : "home",
        "line" : ["Av. Vicuña Mackenna 7110, depto 402"],
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
    "fullUrl" : "http://example.org/his/fhir/PractitionerRole/rol-paredes-hlf",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "rol-paredes-hlf",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/rol-clinico-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_rol-paredes-hlf\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional rol-paredes-hlf</b></p><a name=\"rol-paredes-hlf\"> </a><a name=\"hcrol-paredes-hlf\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-rol-clinico-ges.html\">Rol clínico GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-pr-paredes.html\">Ignacio Paredes (official) (RUN: 12661903-0 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-hosp-la-florida.html\">Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The specialties of the practitioner in this role\">Specialty:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges 07-201-2}\">Cirugía Abdominal Adulto</span></td></tr></table></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/pr-paredes"
      },
      "organization" : {
        "reference" : "Organization/hosp-la-florida"
      },
      "specialty" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
          "code" : "07-201-2",
          "display" : "Cirugía Abdominal Adulto"
        }]
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/his/fhir/Practitioner/pr-paredes",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "pr-paredes",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/prestador-ges"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_pr-paredes\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional pr-paredes</b></p><a name=\"pr-paredes\"> </a><a name=\"hcpr-paredes\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Perfil: <a href=\"StructureDefinition-prestador-ges.html\">Profesional GES</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Ignacio Paredes (official) (RUN: 12661903-0 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Administrative gender\">Gender:</td><td colspan=\"3\">Male</td></tr></table></div>"
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
        "value" : "12661903-0"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Paredes",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Lagos"
          }]
        },
        "given" : ["Ignacio"]
      }],
      "gender" : "male"
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
  }]
}

```
