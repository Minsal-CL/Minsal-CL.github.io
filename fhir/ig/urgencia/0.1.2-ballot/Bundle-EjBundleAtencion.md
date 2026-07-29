# Bundle Atención - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Atención**

## Example Bundle: Bundle Atención



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjBundleAtencion",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAtencion"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "d1391b7b-302a-49f8-a908-8116599e137e",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_d1391b7b-302a-49f8-a908-8116599e137e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter d1391b7b-302a-49f8-a908-8116599e137e</b></p><a name=\"d1391b7b-302a-49f8-a908-8116599e137e\"> </a><a name=\"hcd1391b7b-302a-49f8-a908-8116599e137e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EncounterUrg.html\">Encuentro Urgencia</a></p></div><p><b>Acompañante</b>: false</p><p><b>identifier</b>: 126402-0025</p><p><b>status</b>: In Progress</p><blockquote><p><b>statusHistory</b></p><p><b>status</b>: Arrived</p><p><b>period</b>: 2024-10-25 13:18:00-0400 --&gt; (ongoing)</p></blockquote><blockquote><p><b>statusHistory</b></p><p><b>status</b>: Triaged</p><p><b>period</b>: 2024-10-25 13:30:00-0400 --&gt; (ongoing)</p></blockquote><blockquote><p><b>statusHistory</b></p><p><b>status</b>: In Progress</p><p><b>period</b>: 2024-10-25 14:12:00-0400 --&gt; (ongoing)</p></blockquote><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER\">ActCode: EMER</a> (emergency)</p><p><b>priority</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-ugo C3}\">Atención Prioritaria</span></p><p><b>subject</b>: <a href=\"Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.html\">Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType ADM}\">admitter</span></p><p><b>period</b>: 2024-10-25 13:18:00-0400 --&gt; (ongoing)</p><p><b>individual</b>: <a href=\"Practitioner-b9f6967f-51b5-49f4-8576-ce9f588523c2.html\">Practitioner Mario Donoso </a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/participant-type emergency}\">Emergency</span></p><p><b>individual</b>: <a href=\"RelatedPerson-bb7f34f7-8f4e-42c8-aa84-1f64bf584a05.html\">RelatedPerson Jose Luis Perez </a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia triage}\">Categorizador</span></p><p><b>period</b>: 2024-10-25 13:30:00-0400 --&gt; (ongoing)</p><p><b>individual</b>: <a href=\"Practitioner-d04739d3-ba47-4f0f-920f-bcd66b474963.html\">Practitioner Juan Carlos Perez Gonzalez(official)</a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType ATND}\">attender</span></p><p><b>period</b>: 2024-10-25 14:12:00-0400 --&gt; (ongoing)</p><p><b>individual</b>: <a href=\"Bundle-EjBundleAtencion.html#urn-uuid-190cd208-48b1-4920-a283-6bc37cbde13a\">Practitioner Luis Gonzalez (official)</a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType CON}\">consultant</span></p><p><b>period</b>: 2024-10-25 14:29:00-0400 --&gt; (ongoing)</p><p><b>individual</b>: <a href=\"Bundle-EjBundleAtencion.html#urn-uuid-fbb0e12c-95ec-43f7-bff1-73009b307cb5\">Practitioner Maria Fernandez (official)</a></p></blockquote><p><b>period</b>: 2024-10-25 13:18:00-0400 --&gt; (ongoing)</p><p><b>reasonCode</b>: <span title=\"Codes:\">Dolor abdominal de 24 horas de evolución</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td><td><b>Rank</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-EjBundleAtencion.html#urn-uuid-e27704ff-fa1a-4750-9d23-36ce567f35b0\">Condition Acute appendicitis</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role AD}\">Admission diagnosis</span></td><td>1</td></tr></table><blockquote><p><b>hospitalization</b></p><p><b>Medio de Llegada</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/MedioDeLlegada 5}\">Vehículo particular</span></p><p><b>Consulta por Accidente</b>: false</p><p><b>admitSource</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/Procedencia 9}\">Domicilio</span></p></blockquote><p><b>serviceProvider</b>: <a href=\"Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.html\">Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza</a></p></div>"
        },
        "extension" : [
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante",
            "valueBoolean" : false
          }
        ],
        "identifier" : [
          {
            "value" : "126402-0025"
          }
        ],
        "status" : "in-progress",
        "statusHistory" : [
          {
            "status" : "arrived",
            "period" : {
              "start" : "2024-10-25T13:18:00-04:00"
            }
          },
          {
            "status" : "triaged",
            "period" : {
              "start" : "2024-10-25T13:30:00-04:00"
            }
          },
          {
            "status" : "in-progress",
            "period" : {
              "start" : "2024-10-25T14:12:00-04:00"
            }
          }
        ],
        "class" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "EMER"
        },
        "priority" : {
          "coding" : [
            {
              "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/categorizacion-ugo",
              "code" : "C3",
              "display" : "Atención Prioritaria"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
        },
        "participant" : [
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                    "code" : "ADM"
                  }
                ]
              }
            ],
            "period" : {
              "start" : "2024-10-25T13:18:00-04:00"
            },
            "individual" : {
              "reference" : "Practitioner/b9f6967f-51b5-49f4-8576-ce9f588523c2"
            }
          },
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/participant-type",
                    "version" : "4.0.1",
                    "code" : "emergency"
                  }
                ]
              }
            ],
            "individual" : {
              "reference" : "RelatedPerson/bb7f34f7-8f4e-42c8-aa84-1f64bf584a05"
            }
          },
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia",
                    "code" : "triage"
                  }
                ]
              }
            ],
            "period" : {
              "start" : "2024-10-25T13:30:00-04:00"
            },
            "individual" : {
              "reference" : "Practitioner/d04739d3-ba47-4f0f-920f-bcd66b474963"
            }
          },
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                    "code" : "ATND"
                  }
                ]
              }
            ],
            "period" : {
              "start" : "2024-10-25T14:12:00-04:00"
            },
            "individual" : {
              "reference" : "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
            }
          },
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                    "code" : "CON"
                  }
                ]
              }
            ],
            "period" : {
              "start" : "2024-10-25T14:29:00-04:00"
            },
            "individual" : {
              "reference" : "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
            }
          }
        ],
        "period" : {
          "start" : "2024-10-25T13:18:00-04:00"
        },
        "reasonCode" : [
          {
            "text" : "Dolor abdominal de 24 horas de evolución"
          }
        ],
        "diagnosis" : [
          {
            "condition" : {
              "reference" : "urn:uuid:e27704ff-fa1a-4750-9d23-36ce567f35b0"
            },
            "use" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
                  "code" : "AD"
                }
              ]
            },
            "rank" : 1
          }
        ],
        "hospitalization" : {
          "extension" : [
            {
              "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/MedioDeLlegada",
                    "code" : "5",
                    "display" : "Vehículo particular"
                  }
                ]
              }
            },
            {
              "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente",
              "valueBoolean" : false
            }
          ],
          "admitSource" : {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/Procedencia",
                "code" : "9",
                "display" : "Domicilio"
              }
            ]
          }
        },
        "serviceProvider" : {
          "reference" : "Organization/5491b8d5-e06c-4f89-beb7-75a1989cdc81"
        }
      },
      "request" : {
        "method" : "PUT",
        "url" : "Encounter?identifier=126402-0025"
      }
    },
    {
      "fullUrl" : "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "190cd208-48b1-4920-a283-6bc37cbde13a",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_190cd208-48b1-4920-a283-6bc37cbde13a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner 190cd208-48b1-4920-a283-6bc37cbde13a</b></p><a name=\"190cd208-48b1-4920-a283-6bc37cbde13a\"> </a><a name=\"hc190cd208-48b1-4920-a283-6bc37cbde13a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PrestadorProfesional.html\">Prestador Profesional de Urgencia</a></p></div><p><b>identifier</b>: RUN/55555555-5 (use: official, )</p><p><b>name</b>: Luis Gonzalez (Official)</p><p><b>birthDate</b>: 1992-05-26</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional 30}\">Médico General</span></td></tr></table></div>"
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
            "value" : "55555555-5"
          }
        ],
        "name" : [
          {
            "use" : "official",
            "family" : "Gonzalez",
            "_family" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
                  "valueString" : "Nuñez"
                }
              ]
            },
            "given" : ["Luis"]
          }
        ],
        "birthDate" : "1992-05-26",
        "qualification" : [
          {
            "identifier" : [
              {
                "value" : "cert"
              }
            ],
            "code" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional",
                  "code" : "30",
                  "display" : "MÉDICO GENERAL"
                }
              ],
              "text" : "Médico General"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Practitioner",
        "ifNoneExist" : "identifier=55555555-5"
      }
    },
    {
      "fullUrl" : "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "fbb0e12c-95ec-43f7-bff1-73009b307cb5",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_fbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner fbb0e12c-95ec-43f7-bff1-73009b307cb5</b></p><a name=\"fbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><a name=\"hcfbb0e12c-95ec-43f7-bff1-73009b307cb5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PrestadorProfesional.html\">Prestador Profesional de Urgencia</a></p></div><p><b>identifier</b>: RUN/33333333-3 (use: official, )</p><p><b>name</b>: Maria Fernandez (Official)</p><p><b>birthDate</b>: 1995-09-12</p><blockquote><p><b>qualification</b></p><p><b>Mención profesional añadida al título profesional</b>: Cirugía General</p><p><b>identifier</b>: cert</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional 1}\">Médico Cirujano</span></p></blockquote><blockquote><p><b>qualification</b></p><p><b>identifier</b>: esp</p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/EspecialidadMedica 18}\">Gastroenterología Adulto</span></p></blockquote></div>"
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
                "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Mencion",
                "valueString" : "Cirugía General"
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
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional",
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
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/EspecialidadMedica",
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
        "ifNoneExist" : "identifier=33333333-3"
      }
    },
    {
      "fullUrl" : "urn:uuid:7ea8cb9a-fc10-44ad-8c52-de03c4517b30",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "7ea8cb9a-fc10-44ad-8c52-de03c4517b30",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionAnamnesis"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_7ea8cb9a-fc10-44ad-8c52-de03c4517b30\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 7ea8cb9a-fc10-44ad-8c52-de03c4517b30</b></p><a name=\"7ea8cb9a-fc10-44ad-8c52-de03c4517b30\"> </a><a name=\"hc7ea8cb9a-fc10-44ad-8c52-de03c4517b30\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservacionAnamnesis.html\">Observación Anamnesis</a></p></div><p><b>status</b>: Registered</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 84100007}\">Anamnesis</span></p><p><b>subject</b>: <a href=\"Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.html\">Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Bundle-Ej1BundleAdmision.html#urn-uuid-d1391b7b-302a-49f8-a908-8116599e137e\">Encounter: extension = false; identifier = 126402-0025; status = arrived; class = emergency (ActCode#EMER); priority = Sin Categorizar; period = 2024-10-25 13:18:00-0400 --&gt; (ongoing)</a></p><p><b>effective</b>: 2024-10-25 14:18:00-0400</p><p><b>performer</b>: <a href=\"Bundle-EjBundleAtencion.html#urn-uuid-190cd208-48b1-4920-a283-6bc37cbde13a\">Practitioner Luis Gonzalez (official)</a></p><p><b>value</b>: MOTIVO DE CONSULTA:\nDolor abdominal de 24 horas de evolución.\n\nHISTORIA ACTUAL:\nInicio en región periumbilical hace 24 horas, posteriormente migra a fosa iliaca derecha.\nIntensidad progresiva, EVA actual 8/10.\nAsociado a:\n- Anorexia desde inicio de síntomas\n- Náuseas y dos episodios de vómitos\n- Sensación febril no cuantificada\nDolor aumenta al caminar y con movimientos bruscos.\nNo reporta diarrea ni síntomas urinarios.\nAutomedicación con Paracetamol sin alivio.\n\nANTECEDENTES:\nMórbidos: No\nQuirúrgicos: No\nAlergias: No\nMedicamentos habituales: No\nÚltima ingesta: &gt;12 horas (anorexia)</p></div>"
        },
        "status" : "registered",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "84100007"
            }
          ],
          "text" : "Anamnesis"
        },
        "subject" : {
          "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
        },
        "encounter" : {
          "reference" : "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
        },
        "effectiveDateTime" : "2024-10-25T14:18:00-04:00",
        "performer" : [
          {
            "reference" : "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
          }
        ],
        "valueString" : "MOTIVO DE CONSULTA:\nDolor abdominal de 24 horas de evolución.\n\nHISTORIA ACTUAL:\nInicio en región periumbilical hace 24 horas, posteriormente migra a fosa iliaca derecha.\nIntensidad progresiva, EVA actual 8/10.\nAsociado a:\n- Anorexia desde inicio de síntomas\n- Náuseas y dos episodios de vómitos\n- Sensación febril no cuantificada\nDolor aumenta al caminar y con movimientos bruscos.\nNo reporta diarrea ni síntomas urinarios.\nAutomedicación con Paracetamol sin alivio.\n\nANTECEDENTES:\nMórbidos: No\nQuirúrgicos: No\nAlergias: No\nMedicamentos habituales: No\nÚltima ingesta: >12 horas (anorexia)"
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:e27704ff-fa1a-4750-9d23-36ce567f35b0",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "e27704ff-fa1a-4750-9d23-36ce567f35b0",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConditionDiagnosticoLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_e27704ff-fa1a-4750-9d23-36ce567f35b0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition e27704ff-fa1a-4750-9d23-36ce567f35b0</b></p><a name=\"e27704ff-fa1a-4750-9d23-36ce567f35b0\"> </a><a name=\"hce27704ff-fa1a-4750-9d23-36ce567f35b0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionDiagnosticoLE.html\">Condition Diagnostico</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 K35}\">Acute appendicitis</span></p><p><b>subject</b>: <a href=\"Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.html\">Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Bundle-Ej1BundleAdmision.html#urn-uuid-d1391b7b-302a-49f8-a908-8116599e137e\">Encounter: extension = false; identifier = 126402-0025; status = arrived; class = emergency (ActCode#EMER); priority = Sin Categorizar; period = 2024-10-25 13:18:00-0400 --&gt; (ongoing)</a></p><p><b>recorder</b>: <a href=\"Bundle-EjBundleAtencion.html#urn-uuid-190cd208-48b1-4920-a283-6bc37cbde13a\">Practitioner Luis Gonzalez (official)</a></p><p><b>note</b>: </p><blockquote><div><p>Paciente con dolor abdominal agudo, compatible con apendicitis aguda.</p>\n</div></blockquote></div>"
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
              "code" : "provisional"
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
              "code" : "K35",
              "display" : "Acute appendicitis"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
        },
        "encounter" : {
          "reference" : "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
        },
        "recorder" : {
          "reference" : "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
        },
        "note" : [
          {
            "text" : "Paciente con dolor abdominal agudo, compatible con apendicitis aguda."
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    }
  ]
}

```
