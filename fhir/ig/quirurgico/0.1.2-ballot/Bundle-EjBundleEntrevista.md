# Bundle Entrevista LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Entrevista LE**

## Example Bundle: Bundle Entrevista LE



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "EjBundleEntrevista",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/BundleEntrevistaLE"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:6c7dae68-552d-44cb-b414-e5024ae8e0a0",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "6c7dae68-552d-44cb-b414-e5024ae8e0a0",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EncounterEntrevistaLE"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_6c7dae68-552d-44cb-b414-e5024ae8e0a0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encuentro 6c7dae68-552d-44cb-b414-e5024ae8e0a0</b></p><a name=\"6c7dae68-552d-44cb-b414-e5024ae8e0a0\"> </a><a name=\"hc6c7dae68-552d-44cb-b414-e5024ae8e0a0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EncounterEntrevistaLE.html\">Encounter Entrevista LE</a></p></div><p><b>En Condicion Cirugia</b>: true</p><p><b>Extension Resultado Evaluación Pre-Qx</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSResultadoEvaluacionPreQuirurgica 1}\">El Paciente requiere intervención quirúrgica.</span></p><p><b>identifier</b>: 1234567890</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"CodeSystem-CSModalidadAtencionCodigo.html#CSModalidadAtencionCodigo-1\">Modalidad Atencion Codigo: 1</a> (Presencial)</p><p><b>subject</b>: <a href=\"Patient-22e862c5-6d96-44ec-869c-dba001058cb3.html\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</a></p><p><b>basedOn</b>: <a href=\"ServiceRequest-38a17703-0731-4c3f-88fd-1202dc99d7ce.html\">ServiceRequest estructura del pulmón</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-EjBundleEntrevista.html#urn-uuid-0e5c9353-5f8e-4801-b7fc-59395f14344c\">PractitionerRole Entrevistador</a></td></tr></table><p><b>appointment</b>: <a href=\"Appointment-76adaeb4-4885-4aa6-96c1-13b9df9a61d7.html\">Appointment: extension = Llamada,; identifier = CITA-20241027-001; status = booked; serviceType = Entrevista Pre Quirúrgica; start = 2024-10-27 10:00:00-0400; end = 2024-10-27 10:30:00-0400; created = 2024-10-25 14:00:00-0400</a></p><p><b>period</b>: 2024-12-02 10:00:00-0400 --&gt; (ongoing)</p></div>"
        },
        "extension" : [
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/EnCondicionCirugia",
            "valueBoolean" : true
          },
          {
            "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionResultadoEvaluacionPreQx",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSResultadoEvaluacionPreQuirurgica",
                  "code" : "1",
                  "display" : "El Paciente requiere intervención quirúrgica."
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "value" : "1234567890"
          }
        ],
        "status" : "finished",
        "class" : {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSModalidadAtencionCodigo",
          "code" : "1",
          "display" : "Presencial"
        },
        "subject" : {
          "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
        },
        "basedOn" : [
          {
            "reference" : "ServiceRequest/38a17703-0731-4c3f-88fd-1202dc99d7ce"
          }
        ],
        "participant" : [
          {
            "individual" : {
              "reference" : "urn:uuid:0e5c9353-5f8e-4801-b7fc-59395f14344c"
            }
          }
        ],
        "appointment" : [
          {
            "reference" : "Appointment/76adaeb4-4885-4aa6-96c1-13b9df9a61d7"
          }
        ],
        "period" : {
          "start" : "2024-12-02T10:00:00-04:00"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Encounter"
      }
    },
    {
      "fullUrl" : "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional 2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210</b></p><a name=\"2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210\"> </a><a name=\"hc2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerProfesionalLE.html\">Prestador Profesional LE</a></p></div><p><b>identifier</b>: RUN/55555555-5 (use: official, )</p><p><b>name</b>: Paula Hernandez (Official)</p><p><b>birthDate</b>: 1990-05-15</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional 3}\">Enfermera</span></td></tr></table></div>"
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
            "family" : "Hernandez",
            "_family" : {
              "extension" : [
                {
                  "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
                  "valueString" : "Navarro"
                }
              ]
            },
            "given" : ["Paula"]
          }
        ],
        "birthDate" : "1990-05-15",
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
                  "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional",
                  "code" : "3",
                  "display" : "ENFERMERAS(OS)"
                }
              ],
              "text" : "Enfermera"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Practitioner",
        "ifNoneExist" : "identifier=http://www.registrocivil.cl|55555555-5"
      }
    },
    {
      "fullUrl" : "urn:uuid:0e5c9353-5f8e-4801-b7fc-59395f14344c",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "0e5c9353-5f8e-4801-b7fc-59395f14344c",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_0e5c9353-5f8e-4801-b7fc-59395f14344c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional 0e5c9353-5f8e-4801-b7fc-59395f14344c</b></p><a name=\"0e5c9353-5f8e-4801-b7fc-59395f14344c\"> </a><a name=\"hc0e5c9353-5f8e-4801-b7fc-59395f14344c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerRoleLE.html\">PractitionerRole LE</a></p></div><p><b>practitioner</b>: <a href=\"Bundle-EjBundleAgendarCirugia.html#urn-uuid-2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210\">Practitioner Paula Hernandez (official)</a></p><p><b>organization</b>: <a href=\"Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.html\">Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza</a></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE entrevistador}\">Entrevistador</span></p></div>"
        },
        "practitioner" : {
          "reference" : "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
        },
        "organization" : {
          "reference" : "Organization/5491b8d5-e06c-4f89-beb7-75a1989cdc81"
        },
        "code" : [
          {
            "coding" : [
              {
                "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE",
                "code" : "entrevistador"
              }
            ]
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "PractitionerRole",
        "ifNoneExist" : "practitioner.identifier=http://www.registrocivil.cl|55555555-5&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|entrevistador"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio 38a17703-0731-4c3f-88fd-1202dc99d7ce</b></p><a name=\"38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><a name=\"hc38a17703-0731-4c3f-88fd-1202dc99d7ce\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ServiceRequestCirugiaLE.html\">ServiceRequest Cirugía LE</a></p></div><p><b>Extension String Fundamento Priorizacion</b>: Paciente con dolor abdominal crónico</p><p><b>Requirió Comite</b>: false</p><p><b>Extension Tipo Priorización</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion 5}\">Usuarios con dos o más años en LE</span></p><p><b>identifier</b>: CIR-2024-0001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta 1}\">Cirugía Mayor Electiva</span></p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 39607008}\">estructura del pulmón</span></p><p><b>subject</b>: <a href=\"Patient-22e862c5-6d96-44ec-869c-dba001058cb3.html\">Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)</a></p><p><b>encounter</b>: <a href=\"Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.html\">Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --&gt; (ongoing)</a></p><p><b>authoredOn</b>: 2024-12-02 10:00:00-0400</p><p><b>requester</b>: <a href=\"PractitionerRole-96f2b566-b17b-4e4e-ada0-3986748990ee.html\">PractitionerRole Indicador</a></p><p><b>reasonReference</b>: <a href=\"Condition-b97a87f6-060d-48de-9e4d-db93518fd278.html\">Condition Other and unspecified ventral hernia without obstruction or gangrene</a></p></div>"
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
          "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
        },
        "encounter" : {
          "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
        },
        "authoredOn" : "2024-12-02T10:00:00-04:00",
        "requester" : {
          "reference" : "PractitionerRole/96f2b566-b17b-4e4e-ada0-3986748990ee"
        },
        "reasonReference" : [
          {
            "reference" : "Condition/b97a87f6-060d-48de-9e4d-db93518fd278"
          }
        ]
      },
      "request" : {
        "method" : "PUT",
        "url" : "ServiceRequest?identifier=CIR-2024-0001"
      }
    }
  ]
}

```
