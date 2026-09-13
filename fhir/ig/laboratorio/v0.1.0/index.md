# Inicio - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ImplementationGuide/hl7.fhir.cl.minsal.laboratorio | *Version*:0.2.1 |
| Draft as of 2026-09-10 | *Computable Name*:LaboratorioClinico |

# Guía de Implementación FHIR R4 - Laboratorio

## Introducción

Esta Guía de Implementación define el modelo de interoperabilidad para el intercambio de solicitudes de laboratorio clínico mediante HL7 FHIR R4.

El objetivo principal es establecer un modelo canónico FHIR que permita recibir solicitudes provenientes de sistemas clínicos mediante HL7 v2 y transformarlas a recursos FHIR estandarizados.

La guía utiliza directamente los recursos base de **FHIR R4 (4.0.1)**.

Para el flujo de mensajería paso a paso, con los mensajes que debe enviar y recibir cada sistema, ver [Casos de uso](casos-de-uso.md).

## Alcance inicial

Esta primera versión contempla:

* Recepción de solicitudes de laboratorio mediante HL7 v2 `ORM^O01`.
* Transformación de mensajes HL7 v2 a FHIR R4.
* Uso de `ServiceRequest` como recurso principal de la solicitud.
* Identificación del paciente.
* Contexto asistencial mediante `Encounter`.
* Identificación del profesional solicitante.
* Identificación del establecimiento de origen.
* Identificación del laboratorio ejecutor.
* Homologación terminológica.
* Uso de códigos locales junto con LOINC cuando exista homologación validada.
* Validación de recursos FHIR contra los perfiles definidos en esta guía.
* Trazabilidad entre el mensaje HL7 v2 y los recursos FHIR generados.

## Principio de diseño

La Guía de Implementación define cómo debe representarse la información una vez transformada a FHIR.

La especificación del mensaje HL7 v2 de entrada se mantiene separada del modelo canónico FHIR.

El flujo general es:

flowchart TD A["RCE / HIS / CPOE"] -->|"HL7 v2 ORM^O01"| B["Bus de Interoperabilidad"] B --> C["Validación HL7 v2"] C --> D["Homologación terminológica"] D --> E["Transformación FHIR R4"] E --> F["Validación contra la Guía de Implementación"] F --> G["Modelo canónico de laboratorio"]

## Recurso focal

Para una solicitud de laboratorio, el recurso clínico focal es:

**ServiceRequest**

Los siguientes recursos proporcionan contexto:

* PacienteLaboratorio (perfil de Patient)
* Encounter
* Practitioner
* PractitionerRole
* OrganizacionParticipanteLaboratorio (perfil de Organization)

El recurso `Specimen` se incorpora únicamente cuando existe información válida de la muestra en el sistema origen.

## Solicitud con múltiples prestaciones

Cuando una orden contiene más de un examen, se crea un `ServiceRequest` por cada prestación. Todos comparten el mismo `ServiceRequest.requisition`, que identifica la solicitud agrupadora.

El ejemplo `BundleSolicitudMultipleEjemplo` contiene cinco prestaciones FONASA:

| | | |
| :--- | :--- | :--- |
| `0301045` | Hemograma | `PrestacionHemogramaEjemplo` |
| `0302047` | Glucosa (glicemia) | `PrestacionGlicemiaEjemplo` |
| `0302012` | Bilirrubina total | `PrestacionBilirrubinaEjemplo` |
| `0302057` | Nitrógeno ureico | `PrestacionNitrogenoUreicoEjemplo` |
| `0302067` | Colesterol total | `PrestacionColesterolTotalEjemplo` |

Las cinco prestaciones referencian el mismo `PacienteLaboratorio`, profesional solicitante y valor `SOL-MULTIPLE-001` en `requisition`. El Bundle es de tipo `transaction`, por lo que permite crearlas en una sola operación, y sigue el perfil `MinsalBundleSolicitudLaboratorio`, que exige al menos una entrada `MinsalServiceRequestLab` y valida que todas las entradas de solicitud comparten el mismo `requisition`.

`requisition` es de uso obligatorio (must support) en `MinsalServiceRequestLab`. Su `system` identifica al establecimiento asignador mediante una URI construida a partir del Código de Establecimiento DEIS (por ejemplo `.../identificador/orden-grupo/116105`, código real del Hospital Dr. César Garavagno Burotto de Talca, usado también en los ejemplos de esta guía), y su `value` conserva el número local de la orden sin modificar. Este mecanismo evita que dos establecimientos distintos que reutilicen el mismo valor local (por ejemplo "12345") produzcan una colisión a escala nacional; corresponde al campo `ORC-4` (Placer Group Number) en HL7 v2, ver [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).

El paciente, el profesional solicitante y el establecimiento referenciados en el ejemplo se asumen ya registrados previamente en el servidor de destino, resueltos mediante el flujo de identidad descrito en [Arquitectura](arquitectura.md); por eso no aparecen como entradas propias del `BundleSolicitudMultipleEjemplo`. El perfil `MinsalBundleSolicitudLaboratorio` permite incluirlos como entradas opcionales cuando un establecimiento decida enviarlos junto con la solicitud en vez de asumir su preexistencia.

### Identificación del tipo de código

El tipo se distingue mediante `Coding.system`; no debe deducirse por la forma del código ni por su descripción.

| | | |
| :--- | :--- | :--- |
| FONASA | `FONASA`en CE/CWE.3 | `https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/CodeSystem/CodigoPrestacionFonasa` |
| LOINC | `LN`en CE/CWE.3 | `http://loinc.org` |
| Local | identificador acordado, por ejemplo`L` | URI del catálogo local del emisor |

Ejemplo HL7 v2:

```
OBR|1|||0301045^Hemograma^FONASA
OBR|2|||58410-2^CBC panel - Blood by Automated count^LN

```

El URI FONASA definido por esta guía es provisional y permite identificar el catálogo hasta que el servicio terminológico publique o confirme un URI canónico oficial. Los códigos deben validarse contra la versión vigente del arancel antes de usarse en producción.

## Resultados de laboratorio

Los resultados se consideran un flujo independiente de la solicitud.

El modelo propuesto es:

flowchart TD A["ORU^R01"] --> B["ResultadoDiagnosticoLaboratorio (DiagnosticReport)"] --> C["Observation"]

`ResultadoDiagnosticoLaboratorio.basedOn` referencia la `MinsalServiceRequestLab` que originó el resultado, y ambos recursos referencian el mismo `PacienteLaboratorio`.

## Estado de la guía

Esta versión corresponde a una propuesta técnica y debe ser sometida a validación:

* clínica;
* técnica;
* terminológica;
* de arquitectura;
* de seguridad.

### Recepción del informe PDF

El mensaje HL7 v2 `ORU^R01` se transforma a `DiagnosticReport`. La orden original no se vuelve a crear: `DiagnosticReport.basedOn` referencia el `ServiceRequest` previamente registrado.

Cuando el informe llega como un PDF codificado en Base64 en `OBX-5`, se representa en `DiagnosticReport.presentedForm`:

* `contentType`: `application/pdf`;
* `data`: contenido Base64 del PDF;
* `title`: nombre legible del informe, cuando esté disponible;
* `creation`: fecha de creación del documento, cuando la fuente la informe.

Los resultados estructurados, cuando existan, se representan mediante recursos `Observation` referenciados desde `DiagnosticReport.result`. El PDF no reemplaza los resultados estructurados.

### Codificación y servicio terminológico

El emisor debe informar si cada código corresponde a LOINC o al catálogo FONASA. El código y la identificación de su sistema se conservan en `Coding`; `text` se usa únicamente como descripción legible.

El servicio terminológico valida los códigos y, cuando corresponda, realiza la traducción entre FONASA y LOINC. Esta operación es distinta del mapeo estructural de HL7 v2 a FHIR y no debe inferirse a partir del texto del examen.

Las reglas detalladas se encuentran en la página [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.laboratorio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ImplementationGuide/hl7.fhir.cl.minsal.laboratorio",
  "version" : "0.2.1",
  "name" : "LaboratorioClinico",
  "title" : "Guía de Implementación FHIR - Laboratorio Clínico",
  "status" : "draft",
  "date" : "2026-09-10T11:13:46-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Guía de Implementación FHIR R4 para el intercambio de solicitudes y resultados de laboratorio clínico, incluyendo transformación desde HL7 v2, resolución de pacientes mediante MPI y codificación de prestaciones FONASA/LOINC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.laboratorio",
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
    "version" : "7.3.0"
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
    "version" : "1.8.5"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/history.html"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/history.html"
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
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleSolicitudMultipleEjemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleSolicitudMultipleEjemplo"
      },
      "name" : "Bundle de solicitud con cinco prestaciones FONASA",
      "description" : "TransacciÃ³n FHIR que crea cinco prestaciones FONASA pertenecientes a una misma solicitud de laboratorio. El paciente, el profesional solicitante y el laboratorio ejecutor se asumen preexistentes en el servidor de destino (ver Inicio, secciÃ³n \"Solicitud con mÃºltiples prestaciones\"), por lo que no se incluyen como entradas propias de este Bundle.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalBundleSolicitudLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalBundleSolicitudLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalBundleSolicitudLaboratorio"
      },
      "name" : "Bundle de Solicitud de Laboratorio MINSAL",
      "description" : "Perfil para el envío transaccional de una o más prestaciones de laboratorio que pertenecen a una misma orden. Exige al menos una entrada `MinsalServiceRequestLab` y valida que todas las entradas de solicitud comparten el mismo `requisition`. Paciente, profesional solicitante y establecimiento se asumen preexistentes en el servidor de destino (resueltos previamente mediante el flujo de identidad descrito en Arquitectura); por eso se incluyen aquí solo como entradas opcionales, para el establecimiento que decida enviarlos junto con la solicitud en vez de asumir su preexistencia.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-CodigoPrestacionFonasa.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/CodigoPrestacionFonasa"
      },
      "name" : "Códigos de prestaciones FONASA",
      "description" : "Identificador canónico provisional para códigos de prestaciones FONASA. El contenido es administrado externamente por el servicio terminológico.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-EspecimenRechazadoEjemplo.html"
      }],
      "reference" : {
        "reference" : "Specimen/EspecimenRechazadoEjemplo"
      },
      "name" : "EspÃ©cimen rechazado por coagulaciÃ³n",
      "description" : "Muestra recibida en el laboratorio y rechazada por coagulaciÃ³n. SegÃºn lo acordado, la solicitud original no se reutiliza: se debe generar una nueva ServiceRequest con nuevo identificador y nueva etiqueta (ver Casos de uso, Caso de uso 4).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-EspecimenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Specimen/EspecimenEjemplo"
      },
      "name" : "Espécimen de ejemplo",
      "description" : "Muestra de sangre venosa asociada a la prestación de Hemograma del ejemplo de solicitud múltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalEspecimenLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalEspecimenLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalEspecimenLaboratorio"
      },
      "name" : "Espécimen de Laboratorio MINSAL",
      "description" : "Perfil para representar la muestra biológica asociada a una solicitud de laboratorio, cuando el sistema de origen informa esta información en el mensaje HL7 v2 (por ejemplo, en el segmento SPM de ORM^O01/ORU^R01).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-EstablecimientoOrigenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/EstablecimientoOrigenEjemplo"
      },
      "name" : "Establecimiento de origen de ejemplo",
      "description" : "Organización que origina la solicitud de laboratorio, identificada con un Código de Establecimiento DEIS real y vigente (ver [Códigos de establecimientos de salud vigentes](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes), referencia ya usada como criterio de identificación de organizaciones en NID): 116105, Hospital Dr. César Garavagno Burotto (Hospital de Talca), Servicio de Salud del Maule. `identifier.system` usa `http://deis.minsal.cl/establecimientos`, el mismo URI que ya usan las guías de Tiempos de Espera Quirúrgico y Urgencia para este mismo dato; CoreOrganizacionCl aún no fija un `system` oficial (queda pendiente en su definición), por lo que se adopta este URI como estándar de facto compartido, en vez de crear uno propio de esta guía.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-LaboratorioEjecutorEjemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/LaboratorioEjecutorEjemplo"
      },
      "name" : "Laboratorio ejecutor de ejemplo",
      "description" : "Laboratorio clínico interno del mismo establecimiento (116105, Hospital de Talca) que ejecuta las prestaciones solicitadas; escenario habitual en hospitales públicos, que procesan sus exámenes de rutina (hemograma, glicemia, perfil bioquímico) en su propio laboratorio en vez de derivarlos a un tercero. Mismo `system` de Código de Establecimiento DEIS que el establecimiento de origen.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/OrganizacionParticipanteLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-motivo-cancelacion-solicitud-laboratorio.html"
      }],
      "reference" : {
        "reference" : "ValueSet/motivo-cancelacion-solicitud-laboratorio"
      },
      "name" : "Motivo de Cancelación de Solicitud de Laboratorio",
      "description" : "Motivo por el cual una solicitud de laboratorio se cancela antes de la toma de muestra, sin que exista un Specimen asociado (por ejemplo, el paciente no concurre a la toma de muestra). Este ValueSet no define códigos propios; referencia el CodeSystem externo SNOMED CT. Binding extensible: permite agregar otros códigos SNOMED CT si se identifican nuevos motivos de cancelación sin muestra.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-motivo-rechazo-muestra-laboratorio.html"
      }],
      "reference" : {
        "reference" : "ValueSet/motivo-rechazo-muestra-laboratorio"
      },
      "name" : "Motivo de Rechazo de Muestra de Laboratorio",
      "description" : "Subconjunto del catálogo oficial HL7 v2 Tabla 0490 (Specimen Reject Reason) con los motivos de rechazo de muestra reconocidos por esta guía: cantidad insuficiente, coagulación y problema de etiquetado. Este ValueSet no define códigos propios; selecciona un subconjunto del CodeSystem externo `http://terminology.hl7.org/CodeSystem/v2-0490`, el mismo catálogo que usa HL7 v2 en el segmento SPM-21. Binding extensible: si en el futuro se identifica un motivo de rechazo no incluido aquí (por ejemplo hemólisis o contaminación), puede usarse cualquier otro código válido del mismo CodeSystem.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizacionParticipanteLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizacionParticipanteLaboratorio"
      },
      "name" : "Organización participante en el flujo de laboratorio",
      "description" : "Perfil para representar establecimientos de origen, laboratorios ejecutores y otras organizaciones participantes en el intercambio de solicitudes y resultados de laboratorio. Extiende el perfil de organización de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Organization de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PacienteEjemplo.html"
      }],
      "reference" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "name" : "Paciente de ejemplo",
      "description" : "Ejemplo ficticio de un paciente utilizado para validar el perfil. Usa un identificador RUN con el tipo y el sistema de identificación reales definidos por NID, y cumple las cardinalidades obligatorias heredadas de CL-Core (CorePacienteCl): nombre oficial con uso, apellido y nombre; sexo administrativo; fecha de nacimiento.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/PacienteLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PacienteLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PacienteLaboratorio"
      },
      "name" : "Paciente de Laboratorio",
      "description" : "Perfil de paciente utilizado en las solicitudes y resultados de laboratorio. Extiende el perfil de paciente de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Patient de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-PrestacionBilirrubinaEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/PrestacionBilirrubinaEjemplo"
      },
      "name" : "PrestaciÃ³n FONASA: Bilirrubina total",
      "description" : "PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-PrestacionColesterolTotalEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/PrestacionColesterolTotalEjemplo"
      },
      "name" : "PrestaciÃ³n FONASA: Colesterol total",
      "description" : "PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-PrestacionGlicemiaEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/PrestacionGlicemiaEjemplo"
      },
      "name" : "PrestaciÃ³n FONASA: Glucosa (glicemia)",
      "description" : "PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-PrestacionHemogramaEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/PrestacionHemogramaEjemplo"
      },
      "name" : "PrestaciÃ³n FONASA: Hemograma",
      "description" : "PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-PrestacionNitrogenoUreicoEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/PrestacionNitrogenoUreicoEjemplo"
      },
      "name" : "PrestaciÃ³n FONASA: NitrÃ³geno ureico",
      "description" : "PrestaciÃ³n de laboratorio identificada mediante cÃ³digo FONASA dentro de una solicitud mÃºltiple.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalPractitionerLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalPractitionerLaboratorio"
      },
      "name" : "Profesional de Laboratorio MINSAL",
      "description" : "Perfil para representar al profesional solicitante, ejecutor o interpretador de resultados en el flujo de laboratorio. Extiende el perfil de prestador de CL-Core (hl7.fhir.cl.clcore) en lugar del recurso base Practitioner de FHIR R4, para alinearse con el resto del portafolio de guías MINSAL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ProfesionalSolicitanteEjemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ProfesionalSolicitanteEjemplo"
      },
      "name" : "Profesional solicitante de ejemplo",
      "description" : "Profesional ficticio que solicita las prestaciones del ejemplo. Usa la slice `identifier[run]` ya definida por CorePrestadorCl (CL-Core), con el mismo `system` de referencia que usa la guÃ­a MPI/HPD de MINSAL para el RUN de prestadores (`https://api.cl/system/run`, ver `IG_hpd`).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalPractitionerLaboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ResultadoDiagnosticoLaboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ResultadoDiagnosticoLaboratorio"
      },
      "name" : "Resultado diagnóstico de laboratorio",
      "description" : "Perfil para representar el resultado de una solicitud de laboratorio y el informe PDF recibido desde un mensaje HL7 v2 ORU^R01.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-SolicitudCanceladaNoPresentacionEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/SolicitudCanceladaNoPresentacionEjemplo"
      },
      "name" : "Solicitud cancelada por no presentaciÃ³n del paciente",
      "description" : "Solicitud de laboratorio cancelada porque el paciente no concurriÃ³ a la toma de muestra. No existe Specimen asociado (ver Casos de uso, Caso de uso 4).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/StructureDefinition/MinsalServiceRequestLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalServiceRequestLab.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalServiceRequestLab"
      },
      "name" : "Solicitud de Laboratorio MINSAL",
      "description" : "Perfil para representar una solicitud de examen de laboratorio clínico en el modelo canónico nacional FHIR R4.",
      "exampleBoolean" : false
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
          "valueUrl" : "mapeo-v2-fhir.html"
        }],
        "nameUrl" : "mapeo-v2-fhir.html",
        "title" : "Mapeo HL7 v2 a FHIR",
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
