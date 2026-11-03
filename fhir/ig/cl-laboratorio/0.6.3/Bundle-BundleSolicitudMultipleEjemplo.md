# Bundle de solicitud con cinco prestaciones FONASA - Guía de Implementación FHIR - Laboratorio Clínico v0.6.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle de solicitud con cinco prestaciones FONASA**

## Example Bundle: Bundle de solicitud con cinco prestaciones FONASA



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleSolicitudMultipleEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleSolicitudLaboratorio"]
  },
  "type" : "transaction",
  "timestamp" : "2026-08-28T10:00:00-04:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:11111111-1111-4111-8111-111111111111",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "PrestacionHemogramaEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_PrestacionHemogramaEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio PrestacionHemogramaEjemplo</b></p><a name=\"PrestacionHemogramaEjemplo\"> </a><a name=\"hcPrestacionHemogramaEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestLab.html\">Solicitud de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/SOL-MULTIPLE-001-HEM</p><p><b>requisition</b>: <a href=\"NamingSystem-NSOrdenGrupoLaboratorio.html\" title=\"Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.\">OrdenGrupoLaboratorio</a>/SOL-MULTIPLE-001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 108252007}\">Laboratory procedure (procedure)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0301045}\">Hemograma</span></p><p><b>subject</b>: <a href=\"Patient-PacienteEjemplo.html\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-08-28 10:00:00-0400</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteEjemplo.html\">Practitioner María González </a></p><p><b>performer</b>: <a href=\"Organization-LaboratorioEjecutorEjemplo.html\">Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://ejemplo.cl/ordenes-laboratorio",
        "value" : "SOL-MULTIPLE-001-HEM"
      }],
      "requisition" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
        "value" : "SOL-MULTIPLE-001"
      },
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure (procedure)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0301045",
          "display" : "Hemograma"
        }],
        "text" : "Hemograma"
      },
      "subject" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "authoredOn" : "2026-08-28T10:00:00-04:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:22222222-2222-4222-8222-222222222222",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "PrestacionGlicemiaEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_PrestacionGlicemiaEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio PrestacionGlicemiaEjemplo</b></p><a name=\"PrestacionGlicemiaEjemplo\"> </a><a name=\"hcPrestacionGlicemiaEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestLab.html\">Solicitud de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/SOL-MULTIPLE-001-GLU</p><p><b>requisition</b>: <a href=\"NamingSystem-NSOrdenGrupoLaboratorio.html\" title=\"Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.\">OrdenGrupoLaboratorio</a>/SOL-MULTIPLE-001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 108252007}\">Laboratory procedure (procedure)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0302047}\">Glucosa (glicemia)</span></p><p><b>subject</b>: <a href=\"Patient-PacienteEjemplo.html\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-08-28 10:00:00-0400</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteEjemplo.html\">Practitioner María González </a></p><p><b>performer</b>: <a href=\"Organization-LaboratorioEjecutorEjemplo.html\">Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://ejemplo.cl/ordenes-laboratorio",
        "value" : "SOL-MULTIPLE-001-GLU"
      }],
      "requisition" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
        "value" : "SOL-MULTIPLE-001"
      },
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure (procedure)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0302047",
          "display" : "Glucosa (glicemia)"
        }],
        "text" : "Glucosa (glicemia)"
      },
      "subject" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "authoredOn" : "2026-08-28T10:00:00-04:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:33333333-3333-4333-8333-333333333333",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "PrestacionBilirrubinaEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_PrestacionBilirrubinaEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio PrestacionBilirrubinaEjemplo</b></p><a name=\"PrestacionBilirrubinaEjemplo\"> </a><a name=\"hcPrestacionBilirrubinaEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestLab.html\">Solicitud de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/SOL-MULTIPLE-001-BIL</p><p><b>requisition</b>: <a href=\"NamingSystem-NSOrdenGrupoLaboratorio.html\" title=\"Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.\">OrdenGrupoLaboratorio</a>/SOL-MULTIPLE-001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 108252007}\">Laboratory procedure (procedure)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0302012}\">Bilirrubina total</span></p><p><b>subject</b>: <a href=\"Patient-PacienteEjemplo.html\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-08-28 10:00:00-0400</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteEjemplo.html\">Practitioner María González </a></p><p><b>performer</b>: <a href=\"Organization-LaboratorioEjecutorEjemplo.html\">Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://ejemplo.cl/ordenes-laboratorio",
        "value" : "SOL-MULTIPLE-001-BIL"
      }],
      "requisition" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
        "value" : "SOL-MULTIPLE-001"
      },
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure (procedure)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0302012",
          "display" : "Bilirrubina total"
        }],
        "text" : "Bilirrubina total"
      },
      "subject" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "authoredOn" : "2026-08-28T10:00:00-04:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:44444444-4444-4444-8444-444444444444",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "PrestacionNitrogenoUreicoEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_PrestacionNitrogenoUreicoEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio PrestacionNitrogenoUreicoEjemplo</b></p><a name=\"PrestacionNitrogenoUreicoEjemplo\"> </a><a name=\"hcPrestacionNitrogenoUreicoEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestLab.html\">Solicitud de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/SOL-MULTIPLE-001-NUR</p><p><b>requisition</b>: <a href=\"NamingSystem-NSOrdenGrupoLaboratorio.html\" title=\"Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.\">OrdenGrupoLaboratorio</a>/SOL-MULTIPLE-001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 108252007}\">Laboratory procedure (procedure)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0302057}\">Nitrógeno ureico</span></p><p><b>subject</b>: <a href=\"Patient-PacienteEjemplo.html\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-08-28 10:00:00-0400</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteEjemplo.html\">Practitioner María González </a></p><p><b>performer</b>: <a href=\"Organization-LaboratorioEjecutorEjemplo.html\">Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://ejemplo.cl/ordenes-laboratorio",
        "value" : "SOL-MULTIPLE-001-NUR"
      }],
      "requisition" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
        "value" : "SOL-MULTIPLE-001"
      },
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure (procedure)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0302057",
          "display" : "Nitrógeno ureico"
        }],
        "text" : "Nitrógeno ureico"
      },
      "subject" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "authoredOn" : "2026-08-28T10:00:00-04:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:55555555-5555-4555-8555-555555555555",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "PrestacionColesterolTotalEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_PrestacionColesterolTotalEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio PrestacionColesterolTotalEjemplo</b></p><a name=\"PrestacionColesterolTotalEjemplo\"> </a><a name=\"hcPrestacionColesterolTotalEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalServiceRequestLab.html\">Solicitud de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: Placer Identifier/SOL-MULTIPLE-001-COL</p><p><b>requisition</b>: <a href=\"NamingSystem-NSOrdenGrupoLaboratorio.html\" title=\"Dominio de identificador para `ServiceRequest.requisition` (número de orden agrupadora que comparten todas las prestaciones de una misma solicitud de laboratorio, ver `MinsalServiceRequestLab.requisition`). El URI sigue el patrón `.../identificador/orden-grupo/{códigoEstablecimientoDEIS}`, uno distinto por establecimiento asignador, para evitar colisiones entre establecimientos que reutilicen el mismo número local de orden. El código numérico de este ejemplo (116105) corresponde al establecimiento usado en los ejemplos de esta guía; no es un valor fijo universal, cada establecimiento real recibe su propio URI reemplazando ese segmento por su propio código DEIS.\">OrdenGrupoLaboratorio</a>/SOL-MULTIPLE-001</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 108252007}\">Laboratory procedure (procedure)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa 0302067}\">Colesterol total</span></p><p><b>subject</b>: <a href=\"Patient-PacienteEjemplo.html\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</a></p><p><b>authoredOn</b>: 2026-08-28 10:00:00-0400</p><p><b>requester</b>: <a href=\"Practitioner-ProfesionalSolicitanteEjemplo.html\">Practitioner María González </a></p><p><b>performer</b>: <a href=\"Organization-LaboratorioEjecutorEjemplo.html\">Organization Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://ejemplo.cl/ordenes-laboratorio",
        "value" : "SOL-MULTIPLE-001-COL"
      }],
      "requisition" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/identificador/orden-grupo/116105",
        "value" : "SOL-MULTIPLE-001"
      },
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure (procedure)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa",
          "code" : "0302067",
          "display" : "Colesterol total"
        }],
        "text" : "Colesterol total"
      },
      "subject" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "authoredOn" : "2026-08-28T10:00:00-04:00",
      "requester" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "performer" : [{
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:66666666-6666-4666-8666-666666666666",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PacienteEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PacienteEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente PacienteEjemplo</b></p><a name=\"PacienteEjemplo\"> </a><a name=\"hcPacienteEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PacienteLaboratorio.html\">Paciente de Laboratorio</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Ana Pérez (official) Female, DoB: 1990-01-02 ( RUN: RunPacienteNid#12345678-5 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><a href=\"tel:+56900000000\">+56900000000</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"País de origen del paciente\"><a href=\"https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-PaisOrigenMPI.html\">País de origen del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de países\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CodigoPaises.html\">Código de Países</a></td><td colspan=\"3\"><span title=\"Codes:{urn:iso:std:iso:3166 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad De Género\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-IdentidadDeGenero.html\">Identidad De Género</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero 2}\">Femenina</span></td></tr></table></div>"
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
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run",
        "value" : "12345678-5"
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Pérez",
        "given" : ["Ana"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+56900000000",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1990-01-02",
      "deceasedBoolean" : false
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "urn:uuid:77777777-7777-4777-8777-777777777777",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "ProfesionalSolicitanteEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ProfesionalSolicitanteEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional ProfesionalSolicitanteEjemplo</b></p><a name=\"ProfesionalSolicitanteEjemplo\"> </a><a name=\"hcProfesionalSolicitanteEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MinsalPractitionerLaboratorio.html\">Profesional de Laboratorio MINSAL</a></p></div><p><b>identifier</b>: RUN/9876543-3 (use: official, )</p><p><b>name</b>: María González </p><p><b>birthDate</b>: 1978-03-15</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Period</b></td><td><b>Issuer</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></td><td>2003-11-01 --&gt; (ongoing)</td><td>Universidad de Chile</td></tr></table></div>"
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
        "system" : "https://api.cl/system/run",
        "value" : "9876543-3"
      }],
      "name" : [{
        "family" : "González",
        "given" : ["María"]
      }],
      "birthDate" : "1978-03-15",
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
        },
        "period" : {
          "start" : "2003-11-01"
        },
        "issuer" : {
          "display" : "Universidad de Chile"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  },
  {
    "fullUrl" : "urn:uuid:88888888-8888-4888-8888-888888888888",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "LaboratorioEjecutorEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_LaboratorioEjecutorEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización LaboratorioEjecutorEjemplo</b></p><a name=\"LaboratorioEjecutorEjemplo\"> </a><a name=\"hcLaboratorioEjecutorEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-OrganizacionParticipanteLaboratorio.html\">Organización participante en el flujo de laboratorio</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-NSEstablecimientoDeis.html\" title=\"Identificador nacional de establecimientos de salud, administrado por el Departamento de Estadísticas e Información de Salud (DEIS) de MINSAL. Adoptado como estándar de facto por esta guía para `Organization.identifier` de establecimientos (ver Casos de uso), y usado también por otras guías del portafolio Minsal-CL. La definición y gobernanza del catálogo de códigos DEIS corresponde al propio DEIS, no a esta guía; este recurso solo declara el dominio para que el IG Publisher lo resuelva localmente al validar los ejemplos.\">EstablecimientoDeis</a>/116105</p><p><b>active</b>: true</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)</p></div>"
      },
      "identifier" : [{
        "system" : "http://deis.minsal.cl/establecimientos",
        "value" : "116105"
      }],
      "active" : true,
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Laboratorio Clínico, Hospital Dr. César Garavagno Burotto (Talca)"
    },
    "request" : {
      "method" : "POST",
      "url" : "Organization"
    }
  }]
}

```
