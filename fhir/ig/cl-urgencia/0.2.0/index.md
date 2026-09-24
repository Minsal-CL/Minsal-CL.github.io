# Inicio - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ImplementationGuide/hl7.fhir.cl.minsal.urgencia.eventos | *Version*:0.2.0 |
| Draft as of 2026-09-24 | *Computable Name*:UrgenciaAdmisionAlta |

## Objetivo

Esta guía define **lo mínimo** que un establecimiento debe informar a la red cuando atiende a una persona en su unidad de urgencia, para que cualquier otro punto de la red (APS, especialidad, otro hospital, SAMU) sepa:

1. **Quién**fue atendido.
1. **Dónde**y**cuándo**ocurrió la atención.
1. **Cómo terminó**: alta (con destino), o abandono voluntario (fuga o NEA).
1. **Qué tenía**el paciente: hipótesis y diagnóstico de egreso.
1. **Qué se le indicó**: medicamentos al alta.
1. **Dónde está el detalle clínico completo**: el documento DAU en PDF.

El foco es la **continuidad de la atención**, no el registro clínico exhaustivo. El detalle clínico (anamnesis, examen físico, signos vitales, exámenes, procedimientos) sigue en el PDF generado por el HIS/RCE.

## Tres eventos

La atención de urgencia se informa mediante **tres transacciones FHIR** (`Bundle` de tipo `transaction`), una por cada hito:

| | | | |
| :--- | :--- | :--- | :--- |
| **Admisión** | Al admitir al paciente en urgencia | Abierto (`in-progress`) | Paciente, establecimiento, fecha/hora de admisión, motivo de consulta, procedencia, medio de llegada |
| **Alta** | Al dar el alta médica | Cerrado (`finished`) | Fecha/hora de alta, destino, diagnóstico de egreso, medicamentos indicados, PDF |
| **Abandono** | Al constatar que el paciente se retiró sin alta (fuga o NEA) | Cerrado (`finished`) | Fecha/hora de abandono, tipo de abandono, hipótesis diagnóstica y PDF si existen |

Todo episodio abre con una **admisión** y cierra con un **alta** o un **abandono**.

stateDiagram-v2 direction LR [*] --> EnAtencion: Admisión EnAtencion --> Cerrado: Alta EnAtencion --> Cerrado: Abandono (fuga / NEA) Cerrado --> [*] state "En atención (in-progress)" as EnAtencion state "Cerrado (finished)" as Cerrado

## Flujo general

flowchart LR HIS["HIS / RCE

urgencia"] -->|"transacción FHIR

admisión · alta · abandono"| BUS["Bus de Interoperabilidad

MINSAL"] BUS --> REP["Repositorio FHIR"] REP --> RED["Red asistencial

APS · especialidad · hospitales"] REP --> HCC["HCC

Portal Ciudadano"]

La información queda disponible para los equipos de la red que continúan la atención y para el propio paciente en **HCC (Portal Ciudadano)**.

## Principio del modelo

El recurso central es el **`Encounter`**: representa un único episodio de urgencia, desde la admisión hasta su cierre. No se crea un recurso distinto para cada evento: cada transacción **actualiza el mismo `Encounter`** mediante `PUT` condicional por su **ID DAU**, con el estado del momento.

```
Patient ............ ¿Quién?
Organization ....... ¿Dónde?
Encounter .......... ¿Qué atención ocurrió, cuándo y cómo terminó?
Condition .......... ¿Qué diagnóstico se registró?
MedicationRequest .. ¿Qué medicamentos se indicaron al alta?
DocumentReference .. ¿Dónde está el documento clínico completo? → PDF

```

## Perfiles

| | | |
| :--- | :--- | :--- |
| [Bundle de admisión](StructureDefinition-bundle-admision-urgencia.md) | `Bundle`(transaction) | Evento admisión. |
| [Bundle de alta](StructureDefinition-bundle-alta-urgencia.md) | `Bundle`(transaction) | Evento alta. |
| [Bundle de abandono](StructureDefinition-bundle-abandono-urgencia.md) | `Bundle`(transaction) | Evento abandono. |
| [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md) | `Encounter` | Episodio. Variantes por evento:[admisión](StructureDefinition-encuentro-urgencia-admision.md),[alta](StructureDefinition-encuentro-urgencia-alta.md),[abandono](StructureDefinition-encuentro-urgencia-abandono.md). |
| [MINSAL Paciente](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPaciente.html)(NID) | `Patient` | Perfil nacional del NID, usado directamente. |
| [MINSAL Prestador Organizacional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorOrganizacional.html)(NID) | `Organization` | Perfil nacional del NID, usado directamente. Se identifica por código DEIS. |
| [MINSAL Prestador Profesional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/StructureDefinition-MINSALPrestadorProfesional.html)(NID) | `Practitioner` | Perfil nacional del NID, usado directamente. Opcional en los mensajes. |
| [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md) | `Condition` | Hipótesis o diagnóstico de egreso. Basado en CL-Core`CoreDiagnosticoCl`. |
| [Indicación de medicamento](StructureDefinition-indicacion-medicamento-urgencia.md) | `MedicationRequest` | Medicamentos indicados al alta. Opcional. |
| [Documento de urgencia](StructureDefinition-documento-urgencia.md) | `DocumentReference` | Enlace al PDF del DAU. |

## Cómo leer esta guía

* [Modelo de eventos](modelo.md): qué contiene cada transacción y cómo se relacionan los recursos.
* [Arquitectura](arquitectura.md): envío al Bus, validaciones y consulta desde la red.
* [Casos de uso](casos-de-uso.md): escenarios de admisión, alta, fuga y consulta por otro establecimiento.
* [Mapeo CMBD](mapeo-cmbd.md): correspondencia campo a campo entre el CMBD de Urgencia (DEIS) y FHIR.

## Dependencias

| | | |
| :--- | :--- | :--- |
| FHIR R4 | `4.0.1` | Estándar base. |
| CL-Core | `1.9.2` | Perfiles base de encuentro y diagnóstico. |
| [NID](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/artifacts.html) | `0.4.6` | Paciente, prestador profesional y prestador organizacional; terminología de previsión, tramo FONASA, leyes previsionales y título profesional. |
| CIE-10 | — | Diagnósticos (preferente). |
| SNOMED CT | — | Diagnósticos (alternativo). |
| LOINC | — | Tipo de documento (`59258-4`Emergency department Discharge summary). |
| MPI MINSAL | — | Resolución de identidad del paciente (dependencia externa). |



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.urgencia.eventos",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/ImplementationGuide/hl7.fhir.cl.minsal.urgencia.eventos",
  "version" : "0.2.0",
  "name" : "UrgenciaAdmisionAlta",
  "title" : "Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono)",
  "status" : "draft",
  "date" : "2026-09-24T11:47:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Guía de Implementación FHIR R4 que define los eventos mínimos de admisión, alta y abandono de una atención de urgencia para la continuidad de la atención en la red asistencial.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.urgencia.eventos",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.4.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_cl_clcore",
    "uri" : "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
    "packageId" : "hl7.fhir.cl.clcore",
    "version" : "1.9.2"
  },
  {
    "id" : "hl7_fhir_cl_minsal_nid",
    "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
    "packageId" : "hl7.fhir.cl.minsal.nid",
    "version" : "0.4.6"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "grouping" : [{
      "id" : "bundles",
      "name" : "Bundles por evento",
      "description" : "Un `Bundle` de tipo `transaction` por cada evento de la atención de urgencia (admisión, alta y abandono) y su estructura común."
    },
    {
      "id" : "encuentro",
      "name" : "Encuentro de urgencia",
      "description" : "El episodio de urgencia (`Encounter`) y las reglas que debe cumplir en cada evento. Es un solo recurso que se actualiza en la admisión, el alta o el abandono."
    },
    {
      "id" : "clinicos",
      "name" : "Contenido clínico",
      "description" : "Diagnóstico, indicación de medicamentos al alta y referencia al documento clínico en PDF. Paciente, profesional y establecimiento usan directamente los perfiles del NID."
    },
    {
      "id" : "extensiones",
      "name" : "Extensiones",
      "description" : "Datos del CMBD de Urgencia sin elemento FHIR equivalente. Todas son opcionales."
    },
    {
      "id" : "conjuntos-valores",
      "name" : "Conjuntos de valores",
      "description" : "Códigos permitidos en cada elemento codificado de la guía."
    },
    {
      "id" : "sistemas-codigos",
      "name" : "Sistemas de códigos",
      "description" : "Códigos locales de la guía, tomados del CMBD de Urgencia del DEIS. Se mantienen experimentales hasta su publicación en el Servidor Terminológico Nacional."
    },
    {
      "id" : "ejemplos",
      "name" : "Ejemplos",
      "description" : "Un episodio con admisión y alta, otro cerrado por abandono (fuga), y los actores que participan."
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-bundle-admision-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bundle-admision-urgencia"
      },
      "name" : "Bundle de admisión de urgencia",
      "description" : "Evento admisión: el paciente es admitido en urgencia. Abre el episodio (Encounter en in-progress) y avisa a la red que el paciente se encuentra en atención.",
      "exampleBoolean" : false,
      "groupingId" : "bundles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-bundle-alta-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bundle-alta-urgencia"
      },
      "name" : "Bundle de alta de urgencia",
      "description" : "Evento alta: el profesional da el alta de urgencia. Cierra el episodio (Encounter en finished) e informa diagnóstico de egreso, destino, medicamentos indicados y el documento clínico en PDF.",
      "exampleBoolean" : false,
      "groupingId" : "bundles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-bundle-abandono-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bundle-abandono-urgencia"
      },
      "name" : "Bundle de abandono de urgencia",
      "description" : "Evento abandono: el paciente se retira voluntariamente sin alta médica (fuga o NEA). Cierra el episodio (Encounter en finished). Si alcanzó a ser evaluado, puede incluir la hipótesis diagnóstica y el documento clínico.",
      "exampleBoolean" : false,
      "groupingId" : "bundles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-bundle-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bundle-urgencia"
      },
      "name" : "Bundle de urgencia (base)",
      "description" : "Estructura común de los tres Bundle de urgencia. No se usa directamente: se usa el perfil del evento correspondiente.",
      "exampleBoolean" : false,
      "groupingId" : "bundles"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-encuentro-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encuentro-urgencia"
      },
      "name" : "Encuentro de urgencia",
      "description" : "Episodio de atención en una unidad de urgencia, desde la admisión hasta el alta o el abandono. Basado en EncounterCL de CL-Core. Es el recurso que la red usa para saber que el paciente estuvo en urgencia, cuándo y cómo terminó.",
      "exampleBoolean" : false,
      "groupingId" : "encuentro"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-encuentro-urgencia-admision.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encuentro-urgencia-admision"
      },
      "name" : "Encuentro de urgencia - estado en la admisión",
      "description" : "Reglas del episodio de urgencia al momento de la admisión: abierto (in-progress), sin fecha de término ni destino. No es un recurso distinto: es el mismo Encounter que después se actualiza con el alta o el abandono.",
      "exampleBoolean" : false,
      "groupingId" : "encuentro"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-encuentro-urgencia-alta.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encuentro-urgencia-alta"
      },
      "name" : "Encuentro de urgencia - estado en el alta",
      "description" : "Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado.",
      "exampleBoolean" : false,
      "groupingId" : "encuentro"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-encuentro-urgencia-abandono.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encuentro-urgencia-abandono"
      },
      "name" : "Encuentro de urgencia - estado en el abandono",
      "description" : "Reglas del episodio de urgencia cuando el paciente se retira voluntariamente sin alta médica (fuga o NEA): cerrado (finished), con la fecha y hora en que se constató el abandono y el tipo de abandono. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado.",
      "exampleBoolean" : false,
      "groupingId" : "encuentro"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-diagnostico-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/diagnostico-urgencia"
      },
      "name" : "Diagnóstico de urgencia",
      "description" : "Hipótesis o diagnóstico de egreso de la atención de urgencia. Basado en CoreDiagnosticoCl de CL-Core. El tipo de diagnóstico del CMBD (hipótesis, confirmado, descartado) se expresa con `verificationStatus`.",
      "exampleBoolean" : false,
      "groupingId" : "clinicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-indicacion-medicamento-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/indicacion-medicamento-urgencia"
      },
      "name" : "Indicación de medicamento al alta",
      "description" : "Medicamento indicado al alta de urgencia para que el paciente continúe su tratamiento. Acepta nombre genérico y posología en texto libre (CMBD: INDICACIÓN DE FÁRMACOS e ID RECETA).",
      "exampleBoolean" : false,
      "groupingId" : "clinicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-documento-urgencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/documento-urgencia"
      },
      "name" : "Documento de la atención de urgencia",
      "description" : "Referencia al documento clínico de la atención (DAU o epicrisis de urgencia) en PDF. Permite a cualquier establecimiento de la red descubrir y descargar el detalle clínico completo.",
      "exampleBoolean" : false,
      "groupingId" : "clinicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-medio-llegada.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medio-llegada"
      },
      "name" : "Medio de llegada",
      "description" : "Medio de transporte con que el paciente llega a la unidad de urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-prevision.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/prevision"
      },
      "name" : "Previsión de salud",
      "description" : "Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo.",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ley-previsional.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ley-previsional"
      },
      "name" : "Ley previsional o programa",
      "description" : "Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD).",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-clasificacion-consulta.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/clasificacion-consulta"
      },
      "name" : "Clasificación de la consulta",
      "description" : "Clasificación médico-legal de la consulta registrada en la admisión.",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-pronostico-medico-legal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/pronostico-medico-legal"
      },
      "name" : "Pronóstico médico-legal",
      "description" : "Pronóstico médico-legal registrado al cierre de la atención.",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-pertinencia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/pertinencia"
      },
      "name" : "Pertinencia de la atención",
      "description" : "Indica si la consulta fue pertinente para una unidad de urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-diagnostico-ges.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/diagnostico-ges"
      },
      "name" : "Diagnóstico GES",
      "description" : "Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES).",
      "exampleBoolean" : false,
      "groupingId" : "extensiones"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-estado-encuentro-urgencia.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-estado-encuentro-urgencia"
      },
      "name" : "Estado del encuentro de urgencia",
      "description" : "Subconjunto de estados de Encounter usados en urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-procedencia.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-procedencia"
      },
      "name" : "Procedencia del paciente",
      "description" : "Procedencia del paciente al consultar en urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-medio-llegada.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-medio-llegada"
      },
      "name" : "Medio de llegada",
      "description" : "Medio de llegada del paciente a urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-unidad-atencion.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-unidad-atencion"
      },
      "name" : "Unidad de atención de urgencia",
      "description" : "Tipo de atención de urgencia asignada en la admisión.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-clasificacion-consulta.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-clasificacion-consulta"
      },
      "name" : "Clasificación de la consulta",
      "description" : "Clasificación médico-legal de la consulta de urgencia.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-destino-egreso.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-destino-egreso"
      },
      "name" : "Destino de egreso de urgencia",
      "description" : "Todos los desenlaces con que puede cerrarse un episodio de urgencia: destinos de alta y tipos de abandono.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-destino-alta.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-destino-alta"
      },
      "name" : "Destino al alta de urgencia",
      "description" : "Destinos válidos para el evento de alta.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tipo-abandono.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tipo-abandono"
      },
      "name" : "Tipo de abandono de la atención",
      "description" : "Tipos de abandono válidos para el evento de abandono.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-pronostico-medico-legal.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-pronostico-medico-legal"
      },
      "name" : "Pronóstico médico-legal",
      "description" : "Pronóstico médico-legal registrado al cierre de la atención.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-diagnostico-urgencia.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-diagnostico-urgencia"
      },
      "name" : "Diagnósticos de urgencia",
      "description" : "Diagnósticos codificados en CIE-10 (preferente) o SNOMED CT. Se acepta texto libre cuando el diagnóstico no está codificado.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-uso-diagnostico.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-uso-diagnostico"
      },
      "name" : "Uso del diagnóstico en el episodio",
      "description" : "Indica si el diagnóstico corresponde a la hipótesis inicial o al diagnóstico de egreso.",
      "exampleBoolean" : false,
      "groupingId" : "conjuntos-valores"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-procedencia.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/procedencia"
      },
      "name" : "Procedencia del paciente",
      "description" : "Origen del paciente al consultar en urgencia (CMBD Urgencia: PROCEDENCIA DEL PACIENTE).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-medio-llegada.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/medio-llegada"
      },
      "name" : "Medio de llegada",
      "description" : "Medio de transporte con que el paciente llega a urgencia (CMBD Urgencia: LLEGADA).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-unidad-atencion.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/unidad-atencion"
      },
      "name" : "Unidad de atención de urgencia",
      "description" : "Tipo de atención asignada en la admisión (CMBD Urgencia: UNIDAD DE ATENCIÓN).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-clasificacion-consulta.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/clasificacion-consulta"
      },
      "name" : "Clasificación de la consulta",
      "description" : "Clasificación médico-legal de la consulta (CMBD Urgencia: CLASIFICACIÓN DE LA CONSULTA).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-destino-alta.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/destino-alta"
      },
      "name" : "Destino al alta de urgencia",
      "description" : "Destino indicado por el profesional al dar el alta de urgencia (CMBD Urgencia: DESTINO_ALTA; NT 149 con ajustes DGTIC).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-tipo-abandono.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/tipo-abandono"
      },
      "name" : "Tipo de abandono de la atención",
      "description" : "Momento en que el paciente abandona voluntariamente la atención de urgencia. Códigos alineados con CodeSystem abandono de la guía de Urgencia publicada (hl7.fhir.cl.minsal.urgencia 0.1.2-ballot).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-pronostico-medico-legal.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/pronostico-medico-legal"
      },
      "name" : "Pronóstico médico-legal",
      "description" : "Pronóstico médico-legal registrado al cierre (CMBD Urgencia: PRONÓSTICO MÉDICO LEGAL).",
      "exampleBoolean" : false,
      "groupingId" : "sistemas-codigos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleAdmisionEj.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleAdmisionEj"
      },
      "name" : "Bundle de admisión",
      "description" : "Admisión de la paciente a urgencia: abre el episodio DAU-2026-000123.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-admision-urgencia",
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleAltaEj.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleAltaEj"
      },
      "name" : "Bundle de alta",
      "description" : "Alta a domicilio del episodio DAU-2026-000123 con diagnóstico, indicación de medicamento y PDF.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-alta-urgencia",
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleAbandonoEj.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleAbandonoEj"
      },
      "name" : "Bundle de abandono (fuga)",
      "description" : "Cierre del episodio DAU-2026-000456 porque la paciente se retiró sin alta médica.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-abandono-urgencia",
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PacienteUrgenciaEj.html"
      }],
      "reference" : {
        "reference" : "Patient/PacienteUrgenciaEj"
      },
      "name" : "Paciente de urgencia",
      "description" : "Paciente chilena identificada por RUN, conforme a MINSALPaciente del NID.",
      "exampleBoolean" : true,
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ProfesionalUrgenciaEj.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ProfesionalUrgenciaEj"
      },
      "name" : "Médica de urgencia",
      "description" : "Médica cirujana que da el alta, conforme a MINSALPrestadorProfesional del NID.",
      "exampleBoolean" : true,
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-EstablecimientoUrgenciaEj.html"
      }],
      "reference" : {
        "reference" : "Organization/EstablecimientoUrgenciaEj"
      },
      "name" : "Hospital de ejemplo",
      "description" : "Establecimiento emisor identificado por su código DEIS, conforme a MINSALPrestadorOrganizacional del NID.",
      "exampleBoolean" : true,
      "groupingId" : "ejemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-EstablecimientoDestinoEj.html"
      }],
      "reference" : {
        "reference" : "Organization/EstablecimientoDestinoEj"
      },
      "name" : "CESFAM de ejemplo",
      "description" : "Establecimiento de atención primaria al que se deriva a la paciente para control.",
      "exampleBoolean" : true,
      "groupingId" : "ejemplos"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Inicio",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "modelo.html"
        }],
        "nameUrl" : "modelo.html",
        "title" : "Modelo de eventos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "arquitectura.html"
        }],
        "nameUrl" : "arquitectura.html",
        "title" : "Arquitectura",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "casos-de-uso.html"
        }],
        "nameUrl" : "casos-de-uso.html",
        "title" : "Casos de uso",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapeo-cmbd.html"
        }],
        "nameUrl" : "mapeo-cmbd.html",
        "title" : "Mapeo CMBD",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "artifacts.html"
        }],
        "nameUrl" : "artifacts.html",
        "title" : "Artefactos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "historial-de-cambios.html"
        }],
        "nameUrl" : "historial-de-cambios.html",
        "title" : "Historial de cambios",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
