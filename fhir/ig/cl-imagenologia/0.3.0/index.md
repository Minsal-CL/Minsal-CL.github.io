# Inicio - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ImplementationGuide/hl7.fhir.cl.minsal.imagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:Imagenologia |

# Guía de Implementación FHIR R4 - Imagenología

## Introducción

Esta Guía de Implementación define el modelo de interoperabilidad para el intercambio de **solicitudes de examen imagenológico**, **estudios de imagen** e **informes radiológicos** mediante HL7 FHIR R4.

El objetivo principal es establecer un modelo canónico FHIR que permita recibir la mensajería HL7 v2 que hoy intercambian el HIS, el RIS y el PACS —`ORM^O01` para la orden y `ORU^R01` para el informe— y transformarla a recursos FHIR estandarizados, disponibles para el Portal Ciudadano y para el resto de los sistemas de la red.

La guía utiliza los recursos base de **FHIR R4 (4.0.1)** y declara dependencia con **NID 0.4.9** y **CL-Core 1.9.4**. Los perfiles de identidad derivan de los perfiles de NID.

Para el flujo de mensajería paso a paso, con los mensajes que debe enviar y recibir cada sistema, ver [Casos de uso](casos-de-uso.md).

## Alcance inicial

Esta primera versión contempla:

* Recepción de solicitudes de examen imagenológico mediante HL7 v2 `ORM^O01` y `OMG^O19`, declarados estructuralmente equivalentes.
* Recepción de informes radiológicos mediante HL7 v2 `ORU^R01`, con el informe en PDF codificado en Base64.
* Trazabilidad del estudio de imagen mediante `ImagingStudy`, cuando el Bus dispone de dato DICOM (Study Instance UID o endpoint de recuperación).
* Envío transaccional de la solicitud y del informe mediante `Bundle`, conservando el identificador del mensaje de origen.
* Identificación del paciente y resolución de identidad mediante MPI.
* Identificación del profesional solicitante, del médico radiólogo informante y del servicio ejecutante.
* Homologación terminológica del código del procedimiento.
* Validación de los recursos FHIR contra los perfiles definidos en esta guía.
* Trazabilidad entre el mensaje HL7 v2 y los recursos FHIR generados.

Queda fuera del alcance de esta guía la sincronización de pacientes (`ADT`): la resuelve el servicio común de identidad (MPI / NID), de la misma forma para todos los dominios clínicos.

## Principio de diseño

La Guía de Implementación define cómo debe representarse la información **una vez transformada a FHIR**. La especificación del mensaje HL7 v2 de entrada se mantiene separada del modelo canónico FHIR.

El flujo general es:

flowchart TD A["HIS / RCE / CPOE"] -->|"HL7 v2 ORM^O01"| B["Bus de Interoperabilidad"] B --> C["Validación HL7 v2"] C --> D["Homologación terminológica"] D --> E["Transformación FHIR R4"] E --> F["Validación contra la Guía de Implementación"] F --> G["Modelo canónico de imagenología"]

## Recursos focales

El dominio imagenológico tiene tres recursos focales, uno por cada eslabón del flujo:

| | | | |
| :--- | :--- | :--- | :--- |
| Orden del examen | `ServiceRequest` | [MinsalServiceRequestImagen](StructureDefinition-MinsalServiceRequestImagen.md) | `ORM^O01` |
| Estudio realizado | `ImagingStudy` | [EstudioImagenologicoMinsal](StructureDefinition-EstudioImagenologicoMinsal.md) | Accession Number (`OBR-18`) |
| Informe del radiólogo | `DiagnosticReport` | [InformeRadiologicoMinsal](StructureDefinition-InformeRadiologicoMinsal.md) | `ORU^R01` |

Los siguientes recursos proporcionan contexto:

* [PacienteImagenologia](StructureDefinition-PacienteImagenologia.md) (perfil de `Patient` sobre `MINSALPaciente` de NID)
* [MinsalPractitionerImagenologia](StructureDefinition-MinsalPractitionerImagenologia.md) (perfil de `Practitioner` sobre `MINSALPrestadorProfesional` de NID)
* [OrganizacionParticipanteImagenologia](StructureDefinition-OrganizacionParticipanteImagenologia.md) (perfil de `Organization` sobre `MINSALPrestadorOrganizacional` de NID)
* [MinsalBundleSolicitudImagenologia](StructureDefinition-MinsalBundleSolicitudImagenologia.md) (perfil de `Bundle` para el envío transaccional de la solicitud)
* [MinsalBundleInformeImagenologia](StructureDefinition-MinsalBundleInformeImagenologia.md) (perfil de `Bundle` para el envío transaccional del informe)
* `Encounter`, para el contexto asistencial cuando el paciente está hospitalizado o en urgencia.

flowchart TD DR["InformeRadiologicoMinsal

(el informe + PDF)"] DR -->|basedOn| SR["MinsalServiceRequestImagen

(la orden)"] DR -->|imagingStudy| IS["EstudioImagenologicoMinsal

(el estudio en el PACS)"] SR -->|subject| PAC["PacienteImagenologia"] DR -->|subject| PAC IS -->|subject| PAC

Cada flecha es una referencia FHIR: el informe apunta a la orden que lo originó y al estudio que interpreta, y los tres recursos apuntan al mismo paciente.

Los tres recursos se enlazan mediante el **Accession Number**: es el identificador que el RIS asigna al estudio y que, según la especificación de integración, el HIS debe conservar durante todo el flujo de mensajería.

## Solicitud con múltiples exámenes

Una orden puede contener más de un examen. Siguiendo la especificación de la interfaz ORM-In —"si una orden tiene más de un examen, es necesario enviar un mensaje HL7 por cada examen"— se crea **un `ServiceRequest` por examen**, y todos comparten el mismo `ServiceRequest.requisition`, que identifica la solicitud agrupadora (`ORC-4.1`).

| | | |
| :--- | :--- | :--- |
| `ORC-4.1`/`OBR-3.1` | Número de solicitud que agrupa los exámenes | `ServiceRequest.requisition` |
| `ORC-2.1`/`OBR-2.1` | Identificador del examen dentro de la solicitud | `ServiceRequest.identifier`(tipo`PLAC`) |
| `OBR-18` | Accession Number del estudio | `ImagingStudy.identifier`y`DiagnosticReport.identifier`(tipo`ACSN`) |

El ejemplo [BundleSolicitudImagenEjemplo](Bundle-BundleSolicitudImagenEjemplo.md) contiene dos exámenes de la misma solicitud:

| | | |
| :--- | :--- | :--- |
| `TC01` | TC CEREBRO | [SolicitudTcCerebroEjemplo](ServiceRequest-SolicitudTcCerebroEjemplo.md) |
| `MAMOB` | MAMOGRAFIA BILATERAL | [SolicitudMamografiaBilateralEjemplo](ServiceRequest-SolicitudMamografiaBilateralEjemplo.md) |

## Informes radiológicos

Los informes se consideran un flujo independiente de la solicitud. El modelo propuesto es:

flowchart TD A["ORU^R01"] --> B["InformeRadiologicoMinsal (DiagnosticReport)"] B --> C["presentedForm: informe PDF en Base64"] B --> D["imagingStudy: EstudioImagenologicoMinsal"] B --> E["basedOn: MinsalServiceRequestImagen (cuando existe)"]

Una diferencia importante respecto del dominio de laboratorio: la especificación de la interfaz ORU-Out establece que **"el sistema Enterprise Imaging enviará todos los informes generados, no sólo aquellos correspondientes a una orden/solicitud generada en el HIS"**. Por eso `InformeRadiologicoMinsal.basedOn` es **opcional**: el modelo debe aceptar informes sin solicitud previa registrada en el Bus, sin perder la obligación de enlazarlos cuando la solicitud sí existe.

### Recepción del informe PDF

Cuando el informe llega como un PDF codificado en Base64 en `OBX-5` (con `OBX-2 = ED`), se representa en `DiagnosticReport.presentedForm`:

* `contentType`: `application/pdf`;
* `data`: contenido Base64 del PDF;
* `title`: nombre legible del informe, cuando esté disponible;
* `creation`: fecha y hora de creación del informe (`OBX-14`).

La fecha de **validación** del informe es distinta de la de creación: viaja en `OBR-22` y se mapea a `DiagnosticReport.issued`. Esta distinción se corrigió en la versión 1.3 de la interfaz ORU-Out, que trasladó la fecha de validación desde `OBR-7.1` a `OBR-22`.

### Estados del informe

El RIS emite cuatro estados de informe, que se transforman según el ConceptMap [EstadoInformeRadiologicoV2AFhir](ConceptMap-EstadoInformeRadiologicoV2AFhir.md):

| | | |
| :--- | :--- | :--- |
| `P` | Preliminar | `preliminary` |
| `F` | Final | `final` |
| `C`/`A` | Corrección / Addendum | `corrected`/`amended` |
| `D` | Eliminado | `entered-in-error` |

Un informe eliminado en el RIS **no se borra** en FHIR: se marca como `entered-in-error` y se conserva, porque el registro pudo haber sido entregado al paciente y su trazabilidad es parte del expediente.

## Estado de la guía

Esta versión corresponde a una propuesta técnica y debe ser sometida a validación:

* clínica;
* técnica;
* terminológica;
* de arquitectura;
* de seguridad.

El catálogo de procedimientos de imagenología no se publica en esta guía: el `CodeSystem` [CodigoProcedimientoImagenologia](CodeSystem-CodigoProcedimientoImagenologia.md) declara únicamente el URI que identifica el sistema de códigos, y su contenido lo administra el servicio terminológico del Bus, que es también el responsable de su homologación a SNOMED CT, LOINC o al arancel FONASA. Es el mismo patrón que usa `CodigoPrestacionFonasa` en la Guía de Implementación de Laboratorio Clínico.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.imagenologia",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ImplementationGuide/hl7.fhir.cl.minsal.imagenologia",
  "version" : "0.3.0",
  "name" : "Imagenologia",
  "title" : "Guía de Implementación FHIR - Imagenología",
  "status" : "draft",
  "date" : "2026-09-28T13:58:41-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Guía de Implementación FHIR R4 para el intercambio de solicitudes de examen imagenológico, informes radiológicos y estudios de imagen entre HIS, RIS y PACS, incluyendo la transformación desde HL7 v2 (ORM^O01 y ORU^R01), la resolución de pacientes mediante MPI y la codificación de procedimientos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.imagenologia",
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
    "version" : "1.9.4"
  },
  {
    "id" : "hl7_fhir_cl_minsal_nid",
    "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
    "packageId" : "hl7.fhir.cl.minsal.nid",
    "version" : "0.4.9"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/history.html"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/history.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalBundleInformeImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalBundleInformeImagenologia"
      },
      "name" : "Bundle de Informe de Imagenología MINSAL",
      "description" : "Perfil para el envío transaccional del informe radiológico y, cuando exista dato DICOM, del estudio imagenológico asociado. Exige exactamente una entrada InformeRadiologicoMinsal. Es el artefacto que sostiene la trazabilidad del flujo ORU^R01: identifier conserva el MSH-10 del mensaje de origen, que en esta interfaz es la única red de seguridad, porque el emisor no reintenta. Sigue el modelo de MinsalBundleResultadoLaboratorio.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleInformeImagenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleInformeImagenEjemplo"
      },
      "name" : "Bundle de informe radiológico con estudio imagenológico",
      "description" : "Transacción FHIR que publica el informe radiológico de la TC de cerebro junto con el estudio imagenológico al que corresponde. Incluye el paciente ya resuelto contra el MPI, que el Bus publica con el id del maestro (PUT). Es el resultado de transformar un mensaje ORU^R01: identifier conserva el MSH-10.1 y timestamp el MSH-7.1, que son la cadena de trazabilidad entre el mensaje recibido y los recursos publicados. La invariante informe-estudio-referenciado exige que, si el Bundle trae el estudio, el informe lo referencie.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleInformeImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleSolicitudImagenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleSolicitudImagenEjemplo"
      },
      "name" : "Bundle de solicitud con dos exámenes imagenológicos",
      "description" : "Transacción FHIR que crea los dos exámenes de una misma solicitud (número 134): una tomografía computada de cerebro y una mamografía bilateral. Ambos comparten el par system+value de requisition. El paciente viaja como entrada obligatoria (D-012), ya resuelto contra el MPI y publicado con el id del maestro (PUT). El profesional solicitante y el servicio ejecutante se asumen preexistentes en el servidor de destino. identifier conserva el identificador del mensaje HL7 v2 de origen (MSH-10.1).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalBundleSolicitudImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalBundleSolicitudImagenologia"
      },
      "name" : "Bundle de Solicitud de Imagenología MINSAL",
      "description" : "Perfil para el envío transaccional de uno o más exámenes imagenológicos que pertenecen a una misma orden. Exige al menos una entrada MinsalServiceRequestImagen y valida que todas las entradas de solicitud comparten el mismo requisition. El paciente es obligatorio y conforme al perfil de NID (decisión D-012): en el canal FHIR directo lo envía el establecimiento, y en el canal HL7 v2 el Bus lo reconstruye desde el MPI (D-001). En ambos casos el Bus lo resuelve contra el MPI antes de publicar. Profesional solicitante y establecimiento se incluyen como entradas opcionales, para quien decida enviarlos en vez de asumir su preexistencia. Sigue el modelo de MinsalBundleSolicitudLaboratorio.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleSolicitudImagenFhirDirectoEjemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleSolicitudImagenFhirDirectoEjemplo"
      },
      "name" : "Bundle de solicitud enviado directamente en FHIR por un RCE",
      "description" : "Transacción que un RCE con integración FHIR nativa envía al Bus (Caso de uso 1, UC1-a). Incluye el paciente completo conforme al perfil de NID (decisión D-012) y dos exámenes de la misma solicitud, que comparten el par system+value de requisition. El paciente viaja como recurso nuevo con urn:uuid: el Bus lo resuelve contra el MPI antes de publicar y una búsqueda sin coincidencias no autoriza crearlo (D-001). Los exámenes llevan el código local y la prestación FONASA; si el emisor entrega solo el código local, el Bus agrega FONASA antes de validar (D-014). Los códigos FONASA son ilustrativos y deben confirmarse con el servicio terminológico.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-CodigoProcedimientoImagenologia.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/CodigoProcedimientoImagenologia"
      },
      "name" : "Códigos de procedimientos de imagenología",
      "description" : "Identificador canónico del catálogo local de procedimientos de imagenología del establecimiento emisor. El contenido es administrado externamente por el servicio terminológico (Ontology Server del Bus de Interoperabilidad), que es también el responsable de su homologación a SNOMED CT, LOINC o al arancel FONASA. Esta guía fija únicamente el URI que identifica el sistema de códigos, siguiendo el mismo patrón que CodigoPrestacionFonasa en la Guía de Implementación de Laboratorio Clínico.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-EstablecimientoOrigenImagenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/EstablecimientoOrigenImagenEjemplo"
      },
      "name" : "Establecimiento de origen de ejemplo",
      "description" : "Establecimiento que origina la solicitud de examen imagenológico, identificado con un Código de Establecimiento DEIS real y vigente: 116105, Hospital Dr. César Garavagno Burotto (Hospital de Talca), Servicio de Salud del Maule. identifier.system usa http://deis.minsal.cl/establecimientos, el mismo URI adoptado por las guías de Laboratorio Clínico, Tiempos de Espera Quirúrgico y Urgencia.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-EstadoSolicitudImagenHl7v2.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/EstadoSolicitudImagenHl7v2"
      },
      "name" : "Estado de la solicitud de imagen en HL7 v2",
      "description" : "Valores de control de la orden que el HIS envía en ORC-1 y describe en ORC-25 del mensaje ORM^O01.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-EstadoSolicitudImagenV2AFhir.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/EstadoSolicitudImagenV2AFhir"
      },
      "name" : "Estado de la solicitud: HL7 v2 a FHIR",
      "description" : "Equivalencias entre el control de la orden enviado en ORC-1 / ORC-25 y los valores de ServiceRequest.status.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-EstadoInformeRadiologicoHl7v2.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/EstadoInformeRadiologicoHl7v2"
      },
      "name" : "Estado del informe radiológico en HL7 v2",
      "description" : "Valores de estado del informe que el RIS envía en OBR-25 y OBX-11 del mensaje ORU^R01.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-EstadoInformeRadiologicoV2AFhir.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/EstadoInformeRadiologicoV2AFhir"
      },
      "name" : "Estado del informe radiológico: HL7 v2 a FHIR",
      "description" : "Equivalencias entre los estados del informe enviados por el RIS en OBR-25 / OBX-11 y los valores de DiagnosticReport.status.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-EstudioImagenologicoMinsal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EstudioImagenologicoMinsal"
      },
      "name" : "Estudio Imagenológico MINSAL",
      "description" : "Perfil para representar el estudio de imagen almacenado en el PACS: transporta el Accession Number, la modalidad DICOM y, cuando existan, el Study Instance UID y el endpoint de recuperación (WADO-RS). No forma parte del conjunto obligatorio de la fase 1: el Bus crea este recurso sólo cuando dispone de dato DICOM real (Study Instance UID o endpoint). Cuando el estudio no se crea, la trazabilidad se sostiene con el Accession Number registrado en InformeRadiologicoMinsal.identifier.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-EstudioTcCerebroEjemplo.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/EstudioTcCerebroEjemplo"
      },
      "name" : "Estudio: TC de cerebro",
      "description" : "Estudio de imagen realizado en el RIS/PACS. Se crea porque el Bus dispone del Study Instance UID DICOM; sin ese dato el estudio no se crea y la trazabilidad la sostiene el Accession Number del informe.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-InformeRadiologicoMinsal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/InformeRadiologicoMinsal"
      },
      "name" : "Informe Radiológico MINSAL",
      "description" : "Perfil para representar el informe radiológico generado por el RIS y recibido mediante HL7 v2 ORU^R01, incluyendo el informe en PDF codificado en Base64. Sigue el modelo de ResultadoDiagnosticoLaboratorio de la Guía de Implementación de Laboratorio Clínico, con dos divergencias documentadas que impone la interfaz ORU-Out v1.3: basedOn y performer son opcionales.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-InformeSinSolicitudEjemplo.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/InformeSinSolicitudEjemplo"
      },
      "name" : "Informe radiológico sin solicitud previa",
      "description" : "Informe emitido por el RIS para un estudio que no tiene orden registrada en el Bus. Es el caso que justifica que basedOn sea opcional en esta guía: ORU-Out v1.3 establece que Enterprise Imaging envía todos los informes generados, no sólo los correspondientes a una orden del HIS. El informe se publica igual y el paciente accede a él.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-InformeTcCerebroEjemplo.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/InformeTcCerebroEjemplo"
      },
      "name" : "Informe radiológico: TC de cerebro",
      "description" : "Informe radiológico final recibido mediante ORU^R01, con el PDF del informe codificado en Base64 en presentedForm. Referencia la solicitud original y el estudio imagenológico, y declara la fecha de validación (OBR-22) exigida por la invariante informe-final-con-issued.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/InformeRadiologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-MedicoRadiologoEjemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/MedicoRadiologoEjemplo"
      },
      "name" : "Médico radiólogo de ejemplo",
      "description" : "Profesional ficticio que informa el estudio imagenológico (OBR-32 del mensaje ORU^R01). Cumple el set de datos obligatorio de MINSALPrestadorProfesional (NID).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrganizacionParticipanteImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizacionParticipanteImagenologia"
      },
      "name" : "Organización participante en el flujo de imagenología",
      "description" : "Perfil para representar establecimientos de origen, servicios ejecutantes de imagenología, unidades de radiología y otras organizaciones participantes en el intercambio de solicitudes e informes. Extiende MINSALPrestadorOrganizacional (NID), el núcleo normativo de MINSAL para prestadores institucionales, según la jerarquía normativa nacional (decisión D-016). Sus reglas son idénticas a las de OrganizacionParticipanteLaboratorio.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PacienteImagenologiaEjemplo.html"
      }],
      "reference" : {
        "reference" : "Patient/PacienteImagenologiaEjemplo"
      },
      "name" : "Paciente de ejemplo",
      "description" : "Ejemplo ficticio de un paciente utilizado para validar el perfil. Cumple el set de datos obligatorio de MINSALPaciente (NID): identificador con el tipo RUN del CodeSystem de NID, nombre, sexo registral, fecha de nacimiento y estado de fallecimiento. No incluye datos demográficos opcionales: el recurso es una proyección del maestro del MPI y el modelo canónico minimiza datos (D-001).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PacienteImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PacienteImagenologia"
      },
      "name" : "Paciente de Imagenología",
      "description" : "Perfil de paciente utilizado en las solicitudes de examen imagenológico, los estudios de imagen y los informes radiológicos. Extiende MINSALPaciente (NID, Núcleo de Interoperabilidad de Datos), el núcleo normativo de identidad de MINSAL, según la jerarquía normativa nacional (decisión D-016). El recurso es una proyección del maestro del MPI (D-001): la identidad se resuelve contra el MPI antes de publicarse; ver la página Arquitectura.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PrioridadSolicitudImagenHl7v2.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/PrioridadSolicitudImagenHl7v2"
      },
      "name" : "Prioridad de la solicitud de imagen en HL7 v2",
      "description" : "Valores de prioridad que el HIS envía en ORC-7.6 y OBR-27.6 del mensaje ORM^O01.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-PrioridadSolicitudImagenV2AFhir.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/PrioridadSolicitudImagenV2AFhir"
      },
      "name" : "Prioridad de la solicitud: HL7 v2 a FHIR",
      "description" : "Equivalencias entre la prioridad enviada en ORC-7.6 / OBR-27.6 y los valores de ServiceRequest.priority.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalPractitionerImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalPractitionerImagenologia"
      },
      "name" : "Profesional de Imagenología MINSAL",
      "description" : "Perfil para representar al profesional solicitante del examen (ORC-12), al médico radiólogo que informa el estudio (OBR-32) y a cualquier otro profesional participante en el flujo imagenológico. Extiende MINSALPrestadorProfesional (NID), el núcleo normativo de MINSAL para prestadores individuales, según la jerarquía normativa nacional (decisión D-016). El RUN, la fecha de nacimiento y el título profesional quedan obligatorios por ese perfil, no por esta guía.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ProfesionalSolicitanteImagenEjemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ProfesionalSolicitanteImagenEjemplo"
      },
      "name" : "Profesional solicitante de ejemplo",
      "description" : "Profesional ficticio que solicita el examen imagenológico (ORC-12 del mensaje ORM^O01). Cumple el set de datos obligatorio de MINSALPrestadorProfesional (NID): RUN, nombre, fecha de nacimiento y título profesional, con el título tomado del CodeSystem de NID.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ServicioImagenologiaEjemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/ServicioImagenologiaEjemplo"
      },
      "name" : "Servicio ejecutante de imagenología de ejemplo",
      "description" : "Servicio de imagenología interno del mismo establecimiento (116105, Hospital de Talca), que ejecuta el examen e informa el estudio. Corresponde al servicio ejecutante de ORC-2.2 y OBR-4.3. Como unidad interna no tiene código DEIS propio: se identifica en el dominio local del establecimiento y cuelga de él mediante partOf.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/OrganizacionParticipanteImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalServiceRequestImagen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalServiceRequestImagen"
      },
      "name" : "Solicitud de Examen Imagenológico MINSAL",
      "description" : "Perfil para representar la solicitud de un examen imagenológico (TC, RM, mamografía y otros procedimientos) en el modelo canónico nacional FHIR R4. Corresponde al recurso focal de la solicitud recibida desde el HIS mediante HL7 v2 ORM^O01, o entregada directamente en FHIR. Cuando una orden agrupa varios exámenes se crea un ServiceRequest por examen, todos compartiendo el mismo par system+value en requisition. Sigue el modelo de MinsalServiceRequestLab de la Guía de Implementación de Laboratorio Clínico.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-SolicitudMamografiaBilateralEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/SolicitudMamografiaBilateralEjemplo"
      },
      "name" : "Solicitud: mamografía bilateral",
      "description" : "Segundo examen de la misma solicitud 134. Comparte con el primero el par system+value de requisition, que es lo que la invariante solicitud-imagen-requisition-compartido verifica en el Bundle. El motivo del estudio llega en OBR-31.2 y se conserva como texto: el catálogo de motivos de mamografía diagnóstica no forma parte de esta versión de la guía.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-SolicitudTcCerebroEjemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/SolicitudTcCerebroEjemplo"
      },
      "name" : "Solicitud: TC de cerebro",
      "description" : "Solicitud de tomografía computada de cerebro generada por el HIS y recibida mediante ORM^O01. El identificador corresponde al examen dentro de la solicitud (ORC-2.1 / OBR-2.1) y requisition al número de solicitud que agrupa los exámenes (ORC-4.1), con el system del establecimiento asignador.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"
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
