# Bundle Atender LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Atender LE**

## Example Bundle: Bundle Atender LE



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjBundleAtender",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleAtenderLE"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "50e8af13-6d21-4d92-966d-e7c83cc89fbc",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterAtenderLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_50e8af13-6d21-4d92-966d-e7c83cc89fbc\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encuentro 50e8af13-6d21-4d92-966d-e7c83cc89fbc</b></p><a name=\"50e8af13-6d21-4d92-966d-e7c83cc89fbc\"> </a><a name=\"hc50e8af13-6d21-4d92-966d-e7c83cc89fbc\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EncounterAtenderLE.html\">Encounter Atender LE</a></p></div><p><b>identifier</b>: ENC-20241130-001</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"CodeSystem-CSModalidadAtencionCodigo.html#CSModalidadAtencionCodigo-1\">Modalidad Atencion Codigo: 1</a> (Presencial)</p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoConsulta 1}\">Nueva</span></p><p><b>subject</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-22e862c5-6d96-44ec-869c-dba001058cb3\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</a></p><p><b>basedOn</b>: Identifier: SR-20241115-086</p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-EjBundleAtender.html#urn-uuid-96f2b566-b17b-4e4e-ada0-3986748990ee\">PractitionerRole Indicador</a></td></tr></table><p><b>period</b>: 2024-11-30 10:00:00-0400 --&gt; (ongoing)</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-EjBundleAtender.html#urn-uuid-b97a87f6-060d-48de-9e4d-db93518fd278\">Condition Other and unspecified ventral hernia without obstruction or gangrene</a></td></tr></table></div>"
        },
        "identifier" : [
          {
            "value" : "ENC-20241130-001"
          }
        ],
        "status" : "finished",
        "class" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo",
          "code" : "1",
          "display" : "Presencial"
        },
        "type" : [
          {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoConsulta",
                "code" : "1",
                "display" : "Nueva"
              }
            ]
          }
        ],
        "subject" : {
          "reference" : "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
        },
        "basedOn" : [
          {
            "identifier" : {
              "value" : "SR-20241115-086"
            }
          }
        ],
        "participant" : [
          {
            "individual" : {
              "reference" : "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee"
            }
          }
        ],
        "period" : {
          "start" : "2024-11-30T10:00:00-04:00"
        },
        "diagnosis" : [
          {
            "condition" : {
              "reference" : "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Encounter"
      }
    },
    {
      "fullUrl" : "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "5491b8d5-e06c-4f89-beb7-75a1989cdc81",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/OrganizationLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_5491b8d5-e06c-4f89-beb7-75a1989cdc81\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización 5491b8d5-e06c-4f89-beb7-75a1989cdc81</b></p><a name=\"5491b8d5-e06c-4f89-beb7-75a1989cdc81\"> </a><a name=\"hc5491b8d5-e06c-4f89-beb7-75a1989cdc81\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-OrganizationLE.html\">Organization LE</a></p></div><p><b>identifier</b>: <code>http://deis.minsal.cl/establecimientos</code>/114105</p><p><b>active</b>: true</p><p><b>name</b>: Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza</p></div>"
        },
        "identifier" : [
          {
            "system" : "http://deis.minsal.cl/establecimientos",
            "value" : "114105"
          }
        ],
        "active" : true,
        "name" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza"
      },
      "request" : {
        "method" : "POST",
        "url" : "Organization",
        "ifNoneExist" : "identifier=http://deis.minsal.cl/establecimientos|114105"
      }
    },
    {
      "fullUrl" : "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "fbb0e12c-95ec-43f7-bff1-73009b307cb5",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_fbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional fbb0e12c-95ec-43f7-bff1-73009b307cb5</b></p><a name=\"fbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><a name=\"hcfbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerProfesionalLE.html\">Prestador Profesional LE</a></p></div><p><b>identifier</b>: RUN/33333333-3 (use: official, )</p><p><b>name</b>: Maria Fernandez (Official)</p><p><b>birthDate</b>: 1995-09-12</p><blockquote><p><b>qualification</b></p><p><b>Mención profesional añadida al título profesional</b>: Cirugía Digestiva</p><p><b>identifier</b>: cert</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional 1}\">Médico Cirujano</span></p></blockquote><blockquote><p><b>qualification</b></p><p><b>identifier</b>: esp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEspecialidadMed 18}\">Gastroenterología Adulto</span></p></blockquote></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
                  "code" : "01"
                }
              ]
            },
            "system" : "http://www.registrocivil.cl",
            "value" : "33333333-3"
          }
        ],
        "name" : [
          {
            "use" : "official",
            "family" : "Fernandez",
            "_family" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
                  "valueString" : "Alvarez"
                }
              ]
            },
            "given" : ["Maria"]
          }
        ],
        "birthDate" : "1995-09-12",
        "qualification" : [
          {
            "extension" : [
              {
                "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Mencion",
                "valueString" : "Cirugía Digestiva"
              }
            ],
            "identifier" : [
              {
                "value" : "cert"
              }
            ],
            "code" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional",
                  "code" : "1",
                  "display" : "MÉDICO CIRUJANO"
                }
              ],
              "text" : "Médico Cirujano"
            }
          },
          {
            "identifier" : [
              {
                "value" : "esp"
              }
            ],
            "code" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEspecialidadMed",
                  "code" : "18",
                  "display" : "GASTROENTEROLOGÍA ADULTO"
                }
              ],
              "text" : "Gastroenterología Adulto"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Practitioner",
        "ifNoneExist" : "identifier=http://www.registrocivil.cl|33333333-3"
      }
    },
    {
      "fullUrl" : "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "96f2b566-b17b-4e4e-ada0-3986748990ee",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_96f2b566-b17b-4e4e-ada0-3986748990ee\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional 96f2b566-b17b-4e4e-ada0-3986748990ee</b></p><a name=\"96f2b566-b17b-4e4e-ada0-3986748990ee\"> </a><a name=\"hc96f2b566-b17b-4e4e-ada0-3986748990ee\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerRoleLE.html\">PractitionerRole LE</a></p></div><p><b>practitioner</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-fbb0e12c-95ec-43f7-bff1-73009b307cb5\">Practitioner Maria Fernandez (official)</a></p><p><b>organization</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-5491b8d5-e06c-4f89-beb7-75a1989cdc81\">Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza</a></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE indicador}\">Indicador</span></p></div>"
        },
        "practitioner" : {
          "reference" : "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
        },
        "organization" : {
          "reference" : "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81"
        },
        "code" : [
          {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE",
                "code" : "indicador"
              }
            ]
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "PractitionerRole",
        "ifNoneExist" : "practitioner.identifier=http://www.registrocivil.cl|33333333-3&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|iniciador"
      }
    },
    {
      "fullUrl" : "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "22e862c5-6d96-44ec-869c-dba001058cb3",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PatientLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_22e862c5-6d96-44ec-869c-dba001058cb3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente 22e862c5-6d96-44ec-869c-dba001058cb3</b></p><a name=\"22e862c5-6d96-44ec-869c-dba001058cb3\"> </a><a name=\"hc22e862c5-6d96-44ec-869c-dba001058cb3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PatientLE.html\">Patient LE</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">ph: 987654321</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Pueblos Originarios Perteneciente\"><a href=\"StructureDefinition-PueblosOriginariosPerteneciente.html\">Pueblos Originarios Perteneciente</a></td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Religión\"><a href=\"StructureDefinition-Religion.html\">Religión</a></td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSReligion 1}\">Católica</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de países\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html\">Código de Países</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"País de origen del paciente\"><a href=\"StructureDefinition-PaisOrigenMPI.html\">País de origen del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Almacenar si el paciente pertenece a algun pueblo originario\"><a href=\"StructureDefinition-PueblosOriginarios.html\">Pueblos Originarios</a></td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/PueblosOriginariosCS 01}\">Mapuche</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Pueblos Afrodescendiente\"><a href=\"StructureDefinition-PueblosAfrodescendiente.html\">Pueblos Afrodescendiente</a></td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad De Género\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html\">Identidad De Género</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero 1}\">Masculino</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PaisOrigenMPI",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "urn:iso:std:iso:3166",
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Religion",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSReligion",
                  "code" : "1",
                  "display" : "Católica"
                }
              ]
            }
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginariosPerteneciente",
            "valueBoolean" : true
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosAfrodescendiente",
            "valueBoolean" : false
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PueblosOriginarios",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/PueblosOriginariosCS",
                  "code" : "01",
                  "display" : "Mapuche"
                }
              ]
            }
          },
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "urn:iso:std:iso:3166",
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          },
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
                  "code" : "1",
                  "display" : "Masculino"
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "type" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "urn:iso:std:iso:3166",
                        "code" : "152",
                        "display" : "Chile"
                      }
                    ]
                  }
                }
              ],
              "coding" : [
                {
                  "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
                  "code" : "01",
                  "display" : "RUN"
                }
              ]
            },
            "value" : "4444444-4"
          }
        ],
        "name" : [
          {
            "use" : "official",
            "family" : "Pérez",
            "_family" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
                  "valueString" : "Olivares"
                }
              ]
            },
            "given" : ["Juan"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "987654321"
          }
        ],
        "gender" : "male",
        "birthDate" : "1980-01-01",
        "deceasedBoolean" : false
      },
      "request" : {
        "method" : "POST",
        "url" : "Patient",
        "ifNoneExist" : "identifier=4444444-4"
      }
    },
    {
      "fullUrl" : "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "b97a87f6-060d-48de-9e4d-db93518fd278",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ConditionDiagnosticoLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_b97a87f6-060d-48de-9e4d-db93518fd278\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condición b97a87f6-060d-48de-9e4d-db93518fd278</b></p><a name=\"b97a87f6-060d-48de-9e4d-db93518fd278\"> </a><a name=\"hcb97a87f6-060d-48de-9e4d-db93518fd278\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionDiagnosticoLE.html\">Condition Diagnostico LE</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 K43.9}\">Hernia ventral sin obstrucción ni gangrena</span></p><p><b>subject</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-22e862c5-6d96-44ec-869c-dba001058cb3\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</a></p><p><b>encounter</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-50e8af13-6d21-4d92-966d-e7c83cc89fbc\">Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --&gt; (ongoing)</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "encounter-diagnosis"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/sid/icd-10",
              "code" : "K43.9"
            }
          ],
          "text" : "Hernia ventral sin obstrucción ni gangrena"
        },
        "subject" : {
          "reference" : "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
        },
        "encounter" : {
          "reference" : "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    },
    {
      "fullUrl" : "urn:uuid:38a17703-0731-4c3f-88fd-1202dc99d7ce",
      "resource" : {
        "resourceType" : "ServiceRequest",
        "id" : "38a17703-0731-4c3f-88fd-1202dc99d7ce",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestCirugiaLE"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio 38a17703-0731-4c3f-88fd-1202dc99d7ce</b></p><a name=\"38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><a name=\"hc38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ServiceRequestCirugiaLE.html\">ServiceRequest Cirugía LE</a></p></div><p><b>Extension String Fundamento Priorizacion</b>: Paciente con dolor abdominal crónico</p><p><b>Requirió Comite</b>: false</p><p><b>Extension Tipo Priorización</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion 5}\">Usuarios con dos o más años en LE</span></p><p><b>identifier</b>: CIR-2024-0001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta 1}\">Cirugía Mayor Electiva</span></p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 39607008}\">estructura del pulmón</span></p><p><b>subject</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-22e862c5-6d96-44ec-869c-dba001058cb3\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</a></p><p><b>encounter</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-50e8af13-6d21-4d92-966d-e7c83cc89fbc\">Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --&gt; (ongoing)</a></p><p><b>authoredOn</b>: 2024-12-02 10:00:00-0400</p><p><b>requester</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-96f2b566-b17b-4e4e-ada0-3986748990ee\">PractitionerRole Indicador</a></p><p><b>reasonReference</b>: <a href=\"Bundle-EjBundleAtender.html#urn-uuid-b97a87f6-060d-48de-9e4d-db93518fd278\">Condition Other and unspecified ventral hernia without obstruction or gangrene</a></p></div>"
        },
        "extension" : [
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionStringFundamentoPriorizacion",
            "valueString" : "Paciente con dolor abdominal crónico"
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/RequirioComite",
            "valueBoolean" : false
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionTipoPriorizacion",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion",
                  "code" : "5",
                  "display" : "Usuarios con dos o más años en LE"
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "value" : "CIR-2024-0001"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta",
                "code" : "1",
                "display" : "Cirugía Mayor Electiva"
              }
            ]
          }
        ],
        "priority" : "routine",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "39607008"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
        },
        "encounter" : {
          "reference" : "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc"
        },
        "authoredOn" : "2024-12-02T10:00:00-04:00",
        "requester" : {
          "reference" : "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee"
        },
        "reasonReference" : [
          {
            "reference" : "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "ServiceRequest"
      }
    }
  ]
}

```
