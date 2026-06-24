# Ejemplo de Enviar un Informe de Anatomía Patológica - Repositorio de Reportes de Biopsias Oncológicas v0.2.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de Enviar un Informe de Anatomía Patológica**

## Example Bundle: Ejemplo de Enviar un Informe de Anatomía Patológica



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "r2bo-generar-informe-bundle-ejemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-bundle-generar-notificacion"]
  },
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ServiceRequest/r2bo-solicitud-informe-apa-ej",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "r2bo-solicitud-informe-apa-ej",
      "meta" : {
        "versionId" : "2",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_r2bo-solicitud-informe-apa-ej\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest r2bo-solicitud-informe-apa-ej</b></p><a name=\"r2bo-solicitud-informe-apa-ej\"> </a><a name=\"hcr2bo-solicitud-informe-apa-ej\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: 2</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-solicitud-informe-apa.html\">Perfil de Solicitud de Informe de Anatomía Patológica</a></p></div><p><b>identifier</b>: 111111101</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 116784002}\">Informe de Biopsia</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>requester</b>: <a href=\"PractitionerRole-ProfesionalHospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>performer</b>: <a href=\"Organization-hospital-collector.html\">Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)</a></p><p><b>locationCode</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode HLAB}\">hospital laboratory</span></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 269497004}, {http://hl7.org/fhir/sid/icd-10 D48.6}\">Neoplasm of uncertain behaviour of breast</span></p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "identifier" : [{
        "value" : "111111101"
      }],
      "status" : "completed",
      "intent" : "order",
      "priority" : "routine",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "116784002"
        }],
        "text" : "Informe de Biopsia"
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "requester" : {
        "reference" : "PractitionerRole/ProfesionalHospital"
      },
      "performer" : [{
        "reference" : "Organization/hospital-collector"
      }],
      "locationCode" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "HLAB",
          "display" : "hospital laboratory"
        }]
      }],
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "269497004"
        },
        {
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "version" : "2019-covid-expanded",
          "code" : "D48.6"
        }]
      }],
      "specimen" : [{
        "reference" : "Specimen/r2bo-specimen-example"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest?identifier=111111101"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Patient/paciente-requiere-examen",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "paciente-requiere-examen",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_paciente-requiere-examen\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient paciente-requiere-examen</b></p><a name=\"paciente-requiere-examen\"> </a><a name=\"hcpaciente-requiere-examen\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPaciente.html\">MINSAL Paciente</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td>false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Known Marital status of Patient\">Marital Status:</td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil 01}\">Soltero(a)</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">RUN/16182522-0 (use: official, )</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+56912387678\">+56912387678</a></li><li>Avenida Las Torres 3456, Departamento 702 null null null (home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Sexo Biologico del paciente\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-SexoBiologico.html\">Sexo Biologico del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{http://hl7.org/fhir/administrative-gender female}\">Femenina</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"País de origen del paciente\"><a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PaisOrigenMPI.html\">País de origen del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 858}\">Uruguay</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Extensión para describir si el paciente pertenece algún pueblo originario\">Pueblos Originarios:</td><td colspan=\"3\"><ul><li>pertenece: false</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de países\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html\">Código de Países</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Religión\"><a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-Religion.html\">Religión</a></td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSReligion 9}\">Ninguna, ateo, agnóstico</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad De Género\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html\">Identidad De Género</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero 2}\">Femenina</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Pueblos Afrodescendiente\"><a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PueblosAfrodescendiente.html\">Pueblos Afrodescendiente</a></td><td colspan=\"3\">false</td></tr></table></div>"
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
          }],
          "text" : "Femenina"
        }
      },
      {
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:3166",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PaisOrigenMPI",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:3166",
            "code" : "858",
            "display" : "Uruguay"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Religion",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSReligion",
            "code" : "9",
            "display" : "Ninguna, ateo, agnóstico"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosAfrodescendiente",
        "valueBoolean" : false
      },
      {
        "extension" : [{
          "url" : "pertenece",
          "valueBoolean" : false
        }],
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/PueblosOriginariosMPI"
      }],
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
        "system" : "urn:oid:2.16.840.1.113883.2.22.1.152.787300",
        "value" : "16182522-0"
      },
      {
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
            "code" : "5",
            "display" : "PPN"
          }]
        },
        "system" : "urn:oid:2.16.840.1.113883.2.22.0.2.102100.50.10",
        "value" : "ACL123456789876"
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Castilla",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Muñoz"
          }]
        },
        "given" : ["Javiera"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56912387678",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1995-12-12",
      "deceasedBoolean" : false,
      "address" : [{
        "extension" : [{
          "extension" : [{
            "url" : "latitude",
            "valueDecimal" : -33.4265
          },
          {
            "url" : "longitude",
            "valueDecimal" : -70.56652
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/geolocation"
        },
        {
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/SituacionCalle",
          "valueBoolean" : false
        }],
        "use" : "home",
        "line" : ["Avenida Las Torres 3456, Departamento 702"],
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "13118",
                "display" : "Macul"
              }]
            }
          }]
        },
        "_district" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
                "code" : "131",
                "display" : "Santiago"
              }]
            }
          }]
        },
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
        },
        "_country" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "urn:iso:std:iso:3166",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }]
        }
      }],
      "maritalStatus" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEstadoCivil",
          "code" : "01",
          "display" : "Soltero(a)"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient",
      "ifNoneExist" : "Patient?identifier=16182522-0"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole/ProfesionalHospital",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "ProfesionalHospital",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_ProfesionalHospital\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole ProfesionalHospital</b></p><a name=\"ProfesionalHospital\"> </a><a name=\"hcProfesionalHospital\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-rol-profesional-minsal.html\">Perfil de Rol Profesional</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-profesional-hospital-collector.html\">Practitioner Juan Perez </a></p><p><b>organization</b>: <a href=\"Organization-hospital-collector.html\">Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)</a></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></p><p><b>location</b>: <a href=\"Location-r2bo-localizacion-MedicinaGeneral.html\">Location Medicina General</a></p></div>"
      },
      "practitioner" : {
        "reference" : "Practitioner/profesional-hospital-collector"
      },
      "organization" : {
        "reference" : "Organization/hospital-collector"
      },
      "code" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
          "code" : "1",
          "display" : "MÉDICO CIRUJANO"
        }]
      }],
      "location" : [{
        "reference" : "Location/r2bo-localizacion-MedicinaGeneral"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "PractitionerRole",
      "ifNoneExist" : "PractitionerRole?practitioner.identifier=5135329-3&organization.identifier=121109"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole/r2bo-anatopatologo-hospital",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "r2bo-anatopatologo-hospital",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_r2bo-anatopatologo-hospital\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole r2bo-anatopatologo-hospital</b></p><a name=\"r2bo-anatopatologo-hospital\"> </a><a name=\"hcr2bo-anatopatologo-hospital\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-rol-profesional-minsal.html\">Perfil de Rol Profesional</a></p></div><p><b>practitioner</b>: <a href=\"Practitioner-profesional-hospital-anatopatologo.html\">Practitioner Patricia Gutierrez </a></p><p><b>organization</b>: <a href=\"Organization-hospital-collector.html\">Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)</a></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></p><p><b>specialty</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed 1}\">ANATOMÍA PATOLÓGICA</span></p></div>"
      },
      "practitioner" : {
        "reference" : "Practitioner/profesional-hospital-anatopatologo"
      },
      "organization" : {
        "reference" : "Organization/hospital-collector"
      },
      "code" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
          "code" : "1",
          "display" : "MÉDICO CIRUJANO"
        }]
      }],
      "specialty" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
          "code" : "1",
          "display" : "ANATOMÍA PATOLÓGICA"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "PractitionerRole",
      "ifNoneExist" : "PractitionerRole?practitioner.identifier=19283789-2&organization.identifier=121109"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Location/r2bo-localizacion-MedicinaGeneral",
    "resource" : {
      "resourceType" : "Location",
      "id" : "r2bo-localizacion-MedicinaGeneral",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_r2bo-localizacion-MedicinaGeneral\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location r2bo-localizacion-MedicinaGeneral</b></p><a name=\"r2bo-localizacion-MedicinaGeneral\"> </a><a name=\"hcr2bo-localizacion-MedicinaGeneral\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-servicio-solicitante.html\">Servicio Solicitante del Informe</a></p></div><p><b>name</b>: Medicina General</p></div>"
      },
      "name" : "Medicina General"
    },
    "request" : {
      "method" : "POST",
      "url" : "Location",
      "ifNoneExist" : "Location?name=Medicina%20General"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Practitioner/profesional-hospital-collector",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "profesional-hospital-collector",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_profesional-hospital-collector\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner profesional-hospital-collector</b></p><a name=\"profesional-hospital-collector\"> </a><a name=\"hcprofesional-hospital-collector\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPrestadorProfesional.html\">Prestador Profesional</a></p></div><p><b>identifier</b>: RUN/5135329-3 (use: official, )</p><p><b>name</b>: Juan Perez </p><p><b>birthDate</b>: 1991-05-18</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></td></tr></table></div>"
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
        "value" : "5135329-3"
      }],
      "name" : [{
        "family" : "Perez",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Perez"
          }]
        },
        "given" : ["Juan"]
      }],
      "birthDate" : "1991-05-18",
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
          "text" : "MÉDICO CIRUJANO"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner",
      "ifNoneExist" : "Practitioner?identifier=5135329-3"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Practitioner/profesional-hospital-anatopatologo",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "profesional-hospital-anatopatologo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_profesional-hospital-anatopatologo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner profesional-hospital-anatopatologo</b></p><a name=\"profesional-hospital-anatopatologo\"> </a><a name=\"hcprofesional-hospital-anatopatologo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPrestadorProfesional.html\">Prestador Profesional</a></p></div><p><b>identifier</b>: RUN/19283789-2 (use: official, )</p><p><b>name</b>: Patricia Gutierrez </p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1983-11-18</p><blockquote><p><b>qualification</b></p><p><b>identifier</b>: cert</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></p></blockquote><blockquote><p><b>qualification</b></p><p><b>identifier</b>: esp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed 30}\">MEDICINA INTERNA</span></p></blockquote><blockquote><p><b>qualification</b></p><p><b>identifier</b>: subesp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed 1}\">ANATOMÍA PATOLÓGICA</span></p></blockquote></div>"
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
        "value" : "19283789-2"
      }],
      "name" : [{
        "family" : "Gutierrez",
        "given" : ["Patricia"]
      }],
      "gender" : "female",
      "birthDate" : "1983-11-18",
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
          "text" : "MÉDICO CIRUJANO"
        }
      },
      {
        "identifier" : [{
          "value" : "esp"
        }],
        "code" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
            "code" : "30",
            "display" : "MEDICINA INTERNA"
          }],
          "text" : "MEDICINA INTERNA"
        }
      },
      {
        "identifier" : [{
          "value" : "subesp"
        }],
        "code" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
            "code" : "1",
            "display" : "ANATOMÍA PATOLÓGICA"
          }],
          "text" : "ANATOMÍA PATOLÓGICA"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner",
      "ifNoneExist" : "Practitioner?identifier=19283789-2"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Organization/hospital-collector",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "hospital-collector",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_hospital-collector\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization hospital-collector</b></p><a name=\"hospital-collector\"> </a><a name=\"hchospital-collector\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPrestadorOrganizacional.html\">Prestador Institucional</a></p></div><p><b>identifier</b>: 121109</p><p><b>name</b>: Hospital Dr. Hernán Henríquez Aravena (Temuco)</p></div>"
      },
      "identifier" : [{
        "value" : "121109"
      }],
      "name" : "Hospital Dr. Hernán Henríquez Aravena (Temuco)"
    },
    "request" : {
      "method" : "POST",
      "url" : "Organization",
      "ifNoneExist" : "Organization?identifier=121109"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Specimen/r2bo-specimen-example",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "r2bo-specimen-example",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_r2bo-specimen-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen r2bo-specimen-example</b></p><a name=\"r2bo-specimen-example\"> </a><a name=\"hcr2bo-specimen-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-muestra-biopsia.html\">Perfil de Muestra</a></p></div><p><b>identifier</b>: 110101101</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0487 TISS}\">Tissue</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>receivedTime</b>: 2021-06-01 00:00:00+0000</p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collector</b></td><td><b>Collected[x]</b></td><td><b>Method</b></td><td><b>BodySite</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"PractitionerRole-ProfesionalHospital.html\">PractitionerRole MÉDICO CIRUJANO</a></td><td>2021-06-01 10:00:00+0000</td><td><span title=\"Codes:{http://snomed.info/sct 122548005}\">Biopsy of breast</span></td><td><span title=\"Codes:{http://snomed.info/sct 76752008}\">Structure of breast</span></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Resección completa de tejido mamario, posible carcinoma</p>\n</div></blockquote></div>"
      },
      "identifier" : [{
        "value" : "110101101"
      }],
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
          "code" : "TISS",
          "display" : "Tissue"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "receivedTime" : "2021-06-01T00:00:00Z",
      "collection" : {
        "collector" : {
          "reference" : "PractitionerRole/ProfesionalHospital"
        },
        "collectedDateTime" : "2021-06-01T10:00:00Z",
        "method" : {
          "extension" : [{
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://snomed.info/sct",
                "code" : "8889005"
              }]
            }
          }],
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "122548005"
          }]
        },
        "bodySite" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://snomed.info/sct",
                "code" : "7771000"
              }]
            }
          }],
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "76752008"
          }]
        }
      },
      "note" : [{
        "text" : "Resección completa de tejido mamario, posible carcinoma"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen?identifier=110101101"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Composition/r2bo-documento-biopsia-ex",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "r2bo-documento-biopsia-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-composition-biopsia"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_r2bo-documento-biopsia-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition r2bo-documento-biopsia-ex</b></p><a name=\"r2bo-documento-biopsia-ex\"> </a><a name=\"hcr2bo-documento-biopsia-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-composition-biopsia.html\">Perfil de la Cabecera del Documento de Biopsía</a></p></div><p><b>Extensión De Referencia al Reporte</b>: <a href=\"DiagnosticReport-r2bo-informe-biopsia-ex.html\">Diagnostic Report for 'Breast Pathology biopsy report' for '-&gt;Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))'</a></p><p><b>identifier</b>: r2bo-2020-0001</p><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 66110-8}\">Informe de Biopsia de Mama</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 PAT}\">Pathology (gross &amp; histopath, not surgical)</span></p><p><b>date</b>: 2021-08-01 10:00:00-0400</p><p><b>author</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>title</b>: Informe de Biopsia de Mama</p></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-referencia-diagnosticReport",
        "valueReference" : {
          "reference" : "DiagnosticReport/r2bo-informe-biopsia-ex"
        }
      }],
      "identifier" : {
        "value" : "r2bo-2020-0001"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66110-8"
        }],
        "text" : "Informe de Biopsia de Mama"
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "PAT",
          "display" : "Pathology (gross & histopath, not surgical)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "date" : "2021-08-01T10:00:00-04:00",
      "author" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "title" : "Informe de Biopsia de Mama",
      "section" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22636-5"
          }],
          "text" : "Solicitud de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Solicitud de Biopsia</div>"
        },
        "entry" : [{
          "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22633-2"
          }],
          "text" : "Muestra de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Muestra de Biopsia</div>"
        },
        "entry" : [{
          "reference" : "Specimen/r2bo-specimen-example"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22634-0"
          }],
          "text" : "Macroscopia de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Macroscopia de Biopsia</div>"
        },
        "entry" : [{
          "reference" : "Observation/r2bo-observacion-macroscopica-ex"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22635-7"
          }],
          "text" : "Microscopia de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Microscopia de Biopsia</div>"
        },
        "entry" : [{
          "reference" : "Observation/r2bo-observacion-microscopica-ex"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22637-3"
          }],
          "text" : "Conclusiones de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Conclusiones de Biopsia</div>"
        },
        "entry" : [{
          "reference" : "BodyStructure/r2bo-tumor-ex"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22638-1"
          }],
          "text" : "Notas del Informe de Biopsia"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Notas del Informe de Biopsia:</p><p>Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral</p></div>"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Composition"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport/r2bo-informe-biopsia-ex",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "r2bo-informe-biopsia-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_r2bo-informe-biopsia-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport r2bo-informe-biopsia-ex</b></p><a name=\"r2bo-informe-biopsia-ex\"> </a><a name=\"hcr2bo-informe-biopsia-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-informe-biopsia.html\">Perfil del Reporte de Anatomía Patológica</a></p></div><h2><span title=\"Codes:{http://loinc.org 66110-8}\">Informe de Biopsia de Mama</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 PAT}\">Pathology (gross &amp; histopath, not surgical)</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</td></tr><tr><td>Reported</td><td>2021-08-01 10:00:00-0400</td></tr><tr><td>Performer</td><td> <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></td></tr><tr><td>Identifier</td><td> r2bo-2020-0001</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td><td><b>When For</b></td></tr><tr><td><a href=\"Observation-r2bo-observacion-microscopica-ex.html\"><span title=\"Codes:{http://loinc.org 102034-6}\">Pathology report microscopic observation in Specimen</span></a></td><td>Se observa tejido mamario con células epiteliales y estromales, con signos de malignidad con metastasis en ganglios linfáticos</td><td>Final</td><td>2021-06-01 12:00:00-0400</td></tr><tr><td><a href=\"Observation-r2bo-observacion-macroscopica-ex.html\"><span title=\"Codes:{http://loinc.org 74574-5}\">Macroscopic observation [Interpretation] in Specimen Narrative</span></a></td><td>Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista</td><td>Final</td><td>2021-06-01 12:00:00-0400</td></tr><tr><td><a href=\"Observation-r2bo-estadificacion-tnm-ex.html\"><span title=\"Codes:{http://snomed.info/sct 399588009}\">Pathologic TNM stage grouping</span></a></td><td/><td>Final</td><td>2021-06-01 12:00:00-0400</td></tr></table><p>Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral</p><p><b>Coded Conclusions:</b></p><ul><li><span title=\"Codes:{http://snomed.info/sct 82711006}, {http://terminology.hl7.org/CodeSystem/icd-o-3 8500/3}\">Carcinoma ductal infiltrante</span></li><li><span title=\"Codes:{http://snomed.info/sct 76752008}, {http://terminology.hl7.org/CodeSystem/icd-o-3 C50.9}\">Mama</span></li></ul></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-referencia-composition",
        "valueReference" : {
          "reference" : "Composition/r2bo-documento-biopsia-ex"
        }
      }],
      "identifier" : [{
        "value" : "r2bo-2020-0001"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "PAT",
          "display" : "Pathology (gross & histopath, not surgical)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66110-8"
        }],
        "text" : "Informe de Biopsia de Mama"
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "issued" : "2021-08-01T10:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "specimen" : [{
        "reference" : "Specimen/r2bo-specimen-example"
      }],
      "result" : [{
        "reference" : "Observation/r2bo-observacion-microscopica-ex"
      },
      {
        "reference" : "Observation/r2bo-observacion-macroscopica-ex"
      },
      {
        "reference" : "Observation/r2bo-estadificacion-tnm-ex"
      }],
      "conclusion" : "Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral",
      "conclusionCode" : [{
        "id" : "Morfologico",
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "82711006"
        },
        {
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "8500/3"
        }],
        "text" : "Carcinoma ductal infiltrante"
      },
      {
        "id" : "Topografico",
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76752008"
        },
        {
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "C50.9"
        }],
        "text" : "Mama"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "DiagnosticReport"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-observacion-microscopica-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-observacion-microscopica-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-microscopica"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-observacion-microscopica-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-observacion-microscopica-ex</b></p><a name=\"r2bo-observacion-microscopica-ex\"> </a><a name=\"hcr2bo-observacion-microscopica-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-observacion-microscopica.html\">Perfil de Observación Microscópica</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 102034-6}\">Pathology report microscopic observation in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>value</b>: Se observa tejido mamario con células epiteliales y estromales, con signos de malignidad con metastasis en ganglios linfáticos</p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "102034-6"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "valueString" : "Se observa tejido mamario con células epiteliales y estromales, con signos de malignidad con metastasis en ganglios linfáticos",
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/BodyStructure/r2bo-tumor-ex",
    "resource" : {
      "resourceType" : "BodyStructure",
      "id" : "r2bo-tumor-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tumor"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"BodyStructure_r2bo-tumor-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: BodyStructure r2bo-tumor-ex</b></p><a name=\"r2bo-tumor-ex\"> </a><a name=\"hcr2bo-tumor-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-tumor.html\">Perfil de la Morfología y Topología del Tumor</a></p></div><p><b>morphology</b>: <span title=\"Codes:{http://snomed.info/sct 82711006}, {http://terminology.hl7.org/CodeSystem/icd-o-3 8500/3}\">Carcinoma ductal infiltrante</span></p><p><b>location</b>: <span title=\"Codes:{http://snomed.info/sct 76752008}, {http://terminology.hl7.org/CodeSystem/icd-o-3 C50.9}\">Mama</span></p><p><b>patient</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p></div>"
      },
      "morphology" : {
        "id" : "Morfologico",
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "82711006"
        },
        {
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "8500/3"
        }],
        "text" : "Carcinoma ductal infiltrante"
      },
      "location" : {
        "id" : "Topografico",
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76752008"
        },
        {
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "C50.9"
        }],
        "text" : "Mama"
      },
      "patient" : {
        "reference" : "Patient/paciente-requiere-examen"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "BodyStructure"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-observacion-macroscopica-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-observacion-macroscopica-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-macroscopica"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-observacion-macroscopica-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-observacion-macroscopica-ex</b></p><a name=\"r2bo-observacion-macroscopica-ex\"> </a><a name=\"hcr2bo-observacion-macroscopica-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-observacion-macroscopica.html\">Perfil de Observación Macroscópica</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74574-5}\">Macroscopic observation [Interpretation] in Specimen Narrative</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>value</b>: Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista</p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74574-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "valueString" : "Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista",
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-estadificacion-tnm-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-estadificacion-tnm-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-estadificacion-tnm-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-estadificacion-tnm-ex</b></p><a name=\"r2bo-estadificacion-tnm-ex\"> </a><a name=\"hcr2bo-estadificacion-tnm-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-estadificacion-tnm.html\">Perfil de Grupo Estadificación TNM</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399588009}\">Pathologic TNM stage grouping</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-r2bo-tnm-categoria-tumor-primario-ex.html\">Observation pT category</a></li><li><a href=\"Observation-r2bo-tnm-categoria-nodo-regional-ex.html\">Observation pN category</a></li><li><a href=\"Observation-r2bo-tnm-categoria-metastasis-distantel-ex.html\">Observation pM category</a></li></ul></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399588009"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      },
      "hasMember" : [{
        "reference" : "Observation/r2bo-tnm-categoria-tumor-primario-ex"
      },
      {
        "reference" : "Observation/r2bo-tnm-categoria-nodo-regional-ex"
      },
      {
        "reference" : "Observation/r2bo-tnm-categoria-metastasis-distantel-ex"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-tnm-categoria-tumor-primario-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-tnm-categoria-tumor-primario-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-tumor-primario"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-tnm-categoria-tumor-primario-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-tnm-categoria-tumor-primario-ex</b></p><a name=\"r2bo-tnm-categoria-tumor-primario-ex\"> </a><a name=\"hcr2bo-tnm-categoria-tumor-primario-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-tnm-categoria-tumor-primario.html\">Perfil de Categoria TNM Tumor Primario</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 384625004}\">pT category</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1229852009}\">pT2 (AJCC)</span></p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384625004"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1229852009"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-tnm-categoria-nodo-regional-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-tnm-categoria-nodo-regional-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-nodo-regional"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-tnm-categoria-nodo-regional-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-tnm-categoria-nodo-regional-ex</b></p><a name=\"r2bo-tnm-categoria-nodo-regional-ex\"> </a><a name=\"hcr2bo-tnm-categoria-nodo-regional-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-tnm-categoria-nodo-regional.html\">Perfil de Categoria TNM Nodos Regional</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371494008}\">pN category</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1229957002}\">pN2 (AJCC)</span></p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371494008"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1229957002"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation/r2bo-tnm-categoria-metastasis-distantel-ex",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "r2bo-tnm-categoria-metastasis-distantel-ex",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-metastasis-distante"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_r2bo-tnm-categoria-metastasis-distantel-ex\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation r2bo-tnm-categoria-metastasis-distantel-ex</b></p><a name=\"r2bo-tnm-categoria-metastasis-distantel-ex\"> </a><a name=\"hcr2bo-tnm-categoria-metastasis-distantel-ex\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-r2bo-tnm-categoria-metastasis-distante.html\">Perfil de Categoria TNM de Metástasis Distante</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-r2bo-solicitud-informe-apa-ej.html\">ServiceRequest Pathologist report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371497001}\">pM category</span></p><p><b>subject</b>: <a href=\"Patient-paciente-requiere-examen.html\">Javiera Castilla (official) Female, DoB: 1995-12-12 ( PPN: ACL123456789876 (use: official, ))</a></p><p><b>effective</b>: 2021-06-01 12:00:00-0400</p><p><b>performer</b>: <a href=\"PractitionerRole-r2bo-anatopatologo-hospital.html\">PractitionerRole MÉDICO CIRUJANO</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1229916009}\">pM1 (AJCC)</span></p><p><b>specimen</b>: <a href=\"Specimen-r2bo-specimen-example.html\">Specimen: identifier = 110101101; status = available; type = Tissue; receivedTime = 2021-06-01 00:00:00+0000; note = Resección completa de tejido mamario, posible carcinoma</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371497001"
        }]
      },
      "subject" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "effectiveDateTime" : "2021-06-01T12:00:00-04:00",
      "performer" : [{
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1229916009"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/r2bo-specimen-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  }]
}

```
