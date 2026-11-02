# Inicio - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ImplementationGuide/hl7.fhir.cl.minsal.imagenologia | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:Imagenologia |

# Guía de Implementación FHIR R4 - Imagenología

## Introducción

Esta Guía de Implementación define el modelo de interoperabilidad para el intercambio de **solicitudes de examen imagenológico**, **estudios de imagen** e **informes radiológicos** mediante HL7 FHIR R4.

El objetivo principal es establecer un modelo canónico FHIR que permita recibir la mensajería HL7 v2 que hoy intercambian el HIS, el RIS y el PACS —`ORM^O01` para la orden y `ORU^R01` para el informe— y transformarla a recursos FHIR estandarizados, disponibles para el Portal Ciudadano y para el resto de los sistemas de la red.

La guía utiliza los recursos base de **FHIR R4 (4.0.1)** y declara dependencia con **NID 0.4.9** y **CL-Core 1.9.4**. Los perfiles de identidad derivan de los perfiles de NID.

Para el flujo de mensajería paso a paso, con los mensajes que debe enviar y recibir cada sistema, ver [Casos de uso](casos-de-uso.md).

## Alcance inicial

Esta guía contempla:

* Recepción de solicitudes de examen imagenológico mediante HL7 v2 `ORM^O01` y `OMG^O19`, declarados estructuralmente equivalentes.
* Recepción de informes radiológicos mediante HL7 v2 `ORU^R01`, con el informe en PDF codificado en Base64.
* Trazabilidad del estudio de imagen mediante `ImagingStudy`, cuando el Bus dispone de dato DICOM (Study Instance UID o endpoint de recuperación).
* Envío transaccional de la solicitud y del informe mediante `Bundle`, conservando el identificador del mensaje de origen.
* Identificación del paciente y resolución de identidad mediante MPI.
* Identificación del profesional solicitante, del médico radiólogo informante y del servicio ejecutante.
* Homologación terminológica del código del procedimiento.
* Validación de los recursos FHIR contra los perfiles definidos en esta guía.
* Trazabilidad entre el mensaje HL7 v2 y los recursos FHIR generados.
* Acceso del paciente a las imágenes de sus estudios desde el Portal Ciudadano **aunque el informe radiológico esté pendiente**, a través del visor existente del proveedor de origen y sin trasladar las imágenes. Ver [Acceso a imágenes sin informe](acceso-imagenes.md).

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
| Estudio realizado | `ImagingStudy` | [EstudioImagenologicoMinsal](StructureDefinition-EstudioImagenologicoMinsal.md) | Accession Number (`OBR-18`) y evento de disponibilidad del PACS |
| Informe del radiólogo | `DiagnosticReport` | [InformeRadiologicoMinsal](StructureDefinition-InformeRadiologicoMinsal.md) | `ORU^R01` |

Los siguientes recursos proporcionan contexto:

* [PacienteImagenologia](StructureDefinition-PacienteImagenologia.md) (perfil de `Patient` sobre `MINSALPaciente` de NID)
* [MinsalPractitionerImagenologia](StructureDefinition-MinsalPractitionerImagenologia.md) (perfil de `Practitioner` sobre `MINSALPrestadorProfesional` de NID)
* [OrganizacionParticipanteImagenologia](StructureDefinition-OrganizacionParticipanteImagenologia.md) (perfil de `Organization` sobre `MINSALPrestadorOrganizacional` de NID)
* [MinsalBundleSolicitudImagenologia](StructureDefinition-MinsalBundleSolicitudImagenologia.md) (perfil de `Bundle` para el envío transaccional de la solicitud)
* [MinsalBundleInformeImagenologia](StructureDefinition-MinsalBundleInformeImagenologia.md) (perfil de `Bundle` para el envío transaccional del informe)
* [MinsalBundleEstudioImagenologia](StructureDefinition-MinsalBundleEstudioImagenologia.md) (perfil de `Bundle` para el evento de disponibilidad del estudio)
* [EndpointAccesoImagenesMinsal](StructureDefinition-EndpointAccesoImagenesMinsal.md) (perfil de `Endpoint` con el que el proveedor declara cómo se accede a sus imágenes)
* `Encounter`, para el contexto asistencial cuando el paciente está hospitalizado o en urgencia.

flowchart TD DR["InformeRadiologicoMinsal

(el informe + PDF)"] DR -->|basedOn| SR["MinsalServiceRequestImagen

(la orden)"] DR -->|imagingStudy| IS["EstudioImagenologicoMinsal

(el estudio en el PACS)"] SR -->|subject| PAC["PacienteImagenologia"] DR -->|subject| PAC IS -->|subject| PAC IS -->|endpoint| EP["EndpointAccesoImagenesMinsal

(visor del proveedor)"]

Cada flecha es una referencia FHIR: el informe apunta a la orden que lo originó y al estudio que interpreta, y los tres recursos apuntan al mismo paciente. El estudio apunta al mecanismo con que el proveedor permite ver sus imágenes. El estudio puede existir y estar disponible sin informe: la flecha va del informe al estudio, nunca al revés.

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

La interfaz de referencia ORU-Out establece que el RIS envía todos los informes generados, no sólo los correspondientes a una orden generada en el HIS. Por eso `InformeRadiologicoMinsal.basedOn` es **opcional**: el modelo debe aceptar informes sin solicitud previa registrada en el Bus, sin perder la obligación de enlazarlos cuando la solicitud sí existe.

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

El catálogo de procedimientos de imagenología no se publica en esta guía: cada establecimiento tiene su catálogo local, identificado con un `system` construido con su código DEIS (ver [Arquitectura](arquitectura.md), **Sistemas de identificadores por establecimiento**). Su contenido lo administra el servicio terminológico, que es también el responsable de su homologación al arancel FONASA y, desde ella, a SNOMED CT o LOINC.

## Camino al piloto

La **0.5.0 es la versión candidata a piloto**. Incorpora las decisiones que condicionaban el informe y publica el [perfil de conformidad HL7 v2](conformidad-hl7v2.md) con su set de certificación. El piloto empieza por el informe radiológico (Caso de uso 2); la solicitud entra en una segunda etapa.

Para iniciar el piloto falta lo que no depende de la guía:

1. Establecimiento y emisor del piloto, con su perfil de emisor declarado en el acuerdo de integración.
1. Procedimiento de conciliación del Bus: quién atiende la cola, de dónde sale la demografía para el alta centralizada de pacientes y el plazo máximo en cola.
1. Catálogo local del establecimiento cargado en el servidor terminológico, con su homologación a FONASA.
1. Bus y repositorio verificados: actualización condicional dentro de la transacción, clave de partición por Accession Number, validación contra esta guía antes de publicar y monitoreo de la cola de conciliación.
1. Set de certificación ejecutado con la mensajería del establecimiento, con el acuse y el resultado esperados en cada caso.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.imagenologia",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ImplementationGuide/hl7.fhir.cl.minsal.imagenologia",
  "version" : "0.5.0",
  "name" : "Imagenologia",
  "title" : "Guía de Implementación FHIR - Imagenología",
  "status" : "draft",
  "date" : "2026-11-02T11:03:04-03:00",
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
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
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
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
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
        "valueUri" : "StructureDefinition-MinsalBundleEstudioImagenologia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalBundleEstudioImagenologia"
      },
      "name" : "Bundle de Disponibilidad de Estudio Imagenológico MINSAL",
      "description" : "Perfil para el evento de disponibilidad de un estudio imagenológico: informa que un estudio está registrado o que sus imágenes están disponibles en el PACS/VNA del proveedor, con o sin informe radiológico (D-017, D-019). El evento puede originarse en el RIS, en el PACS o en un adaptador de integración; el proveedor lo entrega al Bus como transacción FHIR. El estudio viaja como actualización condicional por identificador, de modo que reenviar el mismo evento no duplica el recurso. Incluye el paciente, que el Bus resuelve contra el MPI antes de publicar (D-001, D-012). No transporta imágenes ni credenciales.",
      "exampleBoolean" : false
    },
    {
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
      "description" : "Transacción FHIR que publica el informe radiológico de la TC de cerebro junto con el estudio imagenológico al que corresponde. Incluye el paciente ya resuelto contra el MPI, que el Bus publica con el id del maestro (PUT). Es el resultado de transformar un mensaje ORU^R01. El informe y el estudio viajan como actualización condicional por identificador (D-025): el mismo Bundle crea el informe la primera vez y lo actualiza con cada versión sucesiva (P, F, C, A, D) sin duplicarlo. identifier conserva el MSH-10.1 y timestamp el MSH-7.1, que son la cadena de trazabilidad entre el mensaje recibido y los recursos publicados. La invariante informe-estudio-referenciado exige que, si el Bundle trae el estudio, el informe lo referencie.",
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
      "description" : "Transacción FHIR que crea o actualiza, con actualización condicional por identificador (D-025), los dos exámenes de una misma solicitud (número 134): una tomografía computada de cerebro y una mamografía bilateral. Ambos comparten el par system+value de requisition. El paciente viaja como entrada obligatoria (D-012), ya resuelto contra el MPI y publicado con el id del maestro (PUT). El profesional solicitante y el servicio ejecutante se asumen preexistentes en el servidor de destino. identifier conserva el identificador del mensaje HL7 v2 de origen (MSH-10.1).",
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
      "description" : "Transacción que un RCE con integración FHIR nativa envía al Bus (Caso de uso 1, UC1-a). Incluye el paciente completo conforme al perfil de NID (decisión D-012) y dos exámenes de la misma solicitud, enviados con actualización condicional por identificador (D-025), que comparten el par system+value de requisition. El paciente viaja como recurso nuevo con urn:uuid: el Bus lo resuelve contra el MPI antes de publicar y una búsqueda sin coincidencias no autoriza crearlo (D-001). Los exámenes llevan el código local y la prestación FONASA; si el emisor entrega solo el código local, el Bus agrega FONASA antes de validar (D-014). Los códigos FONASA son ilustrativos y deben confirmarse con el servicio terminológico.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleSolicitudImagenologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-EndpointAccesoImagenesMinsal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EndpointAccesoImagenesMinsal"
      },
      "name" : "Endpoint de Acceso a Imágenes MINSAL",
      "description" : "Declaración, por parte de un proveedor RIS/PACS, del mecanismo mediante el cual un paciente accede a las imágenes de sus estudios en la infraestructura de origen: IHE Invoke Image Display (modalidad A), API del proveedor (modalidad B) o portal web del proveedor (modalidad C). El connectionType determina la modalidad y, con ella, el nivel de conformidad (D-020). El recurso describe la dirección del servicio; el contexto del estudio y los mecanismos de autenticación y autorización se resuelven en tiempo de ejecución y no se almacenan aquí. Un mismo Endpoint es referenciado por todos los estudios del proveedor que se acceden por ese mecanismo.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-EstudioMamografiaDisponibleSinInformeEjemplo.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/EstudioMamografiaDisponibleSinInformeEjemplo"
      },
      "name" : "Escenario A: estudio con imágenes disponibles e informe pendiente",
      "description" : "Mamografía bilateral realizada, con sus cuatro instancias almacenadas en el PACS del proveedor y sin informe radiológico emitido. status = available porque hay instancias asociadas; el estudio es visualizable porque referencia un mecanismo de acceso activo. La ausencia de informe se expresa por la ausencia de un InformeRadiologicoMinsal que referencie este estudio, no por un estado del estudio. procedureCode y basedOn permiten al portal mostrar de qué examen se trata.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-EstudioRmRegistradoSinImagenesEjemplo.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/EstudioRmRegistradoSinImagenesEjemplo"
      },
      "name" : "Escenario C: estudio registrado, imágenes todavía no disponibles",
      "description" : "Resonancia magnética agendada en el RIS, que ya asignó el Accession Number y el Study Instance UID (los publica en la lista de trabajo de la modalidad), pero el PACS aún no tiene instancias. status = registered y sin endpoint: el portal puede informar que el examen está registrado, pero no ofrece abrir imágenes. Registrar el examen no implica que las imágenes se puedan consultar.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-EstudioTcTemporalmenteNoDisponibleEjemplo.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/EstudioTcTemporalmenteNoDisponibleEjemplo"
      },
      "name" : "Escenario D: imágenes temporalmente no consultables",
      "description" : "Estudio cuyas imágenes estuvieron disponibles y hoy no pueden consultarse (por ejemplo, porque el proveedor las está migrando a otro archivo). status sigue en available, porque las instancias existen: volver a registered contradiría la semántica de FHIR R4. El proveedor retiró la referencia endpoint mientras dura la indisponibilidad y la repondrá con un nuevo evento cuando se restablezca (D-018).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ResultadoImagenesNoDisponiblesEjemplo.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ResultadoImagenesNoDisponiblesEjemplo"
      },
      "name" : "Escenario D: imágenes temporalmente no disponibles al abrir el visor",
      "description" : "Respuesta cuando el mecanismo de acceso del proveedor no responde o informa que el estudio no puede abrirse en este momento. Es un error transitorio: el estado del estudio no cambia y el paciente puede reintentar más tarde.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ResultadoPacienteNoResueltoEjemplo.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ResultadoPacienteNoResueltoEjemplo"
      },
      "name" : "Escenario E: estudio que no se vincula de forma inequívoca con el paciente",
      "description" : "Respuesta del Bus a un evento de disponibilidad cuyo paciente devuelve múltiples coincidencias en el MPI. El estudio no se publica y el evento queda en conciliación auditada; el paciente no lo ve en el portal hasta que la identidad se resuelva. La respuesta no repite datos personales del paciente.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ResultadoAccesoDenegadoEjemplo.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ResultadoAccesoDenegadoEjemplo"
      },
      "name" : "Escenario F: acceso denegado al abrir las imágenes",
      "description" : "Respuesta del servicio nacional de autorización cuando el paciente autenticado no está autorizado para el estudio solicitado (por ejemplo, el estudio pertenece a otra persona o la política de publicación lo retiene). El mensaje no revela si el estudio existe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ResultadoSesionExpiradaEjemplo.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ResultadoSesionExpiradaEjemplo"
      },
      "name" : "Escenario F: sesión o apertura expirada",
      "description" : "Respuesta cuando la sesión del paciente en el portal, o la apertura de un solo uso del visor, expiró. El portal pide autenticarse de nuevo y genera una apertura nueva; nunca reutiliza la anterior.",
      "exampleBoolean" : true
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
      "description" : "Perfil para representar el estudio de imagen almacenado en el PACS/VNA del proveedor: transporta el Accession Number, el Study Instance UID, la modalidad DICOM, el estado del estudio y la referencia al mecanismo de acceso a las imágenes (endpoint). El recurso contiene sólo metadatos: las imágenes permanecen en el PACS/VNA de origen (D-021). El Bus crea este recurso sólo cuando dispone de dato DICOM real (D-008), ya sea porque llega un evento de disponibilidad (MinsalBundleEstudioImagenologia) o porque acompaña al informe. Su ciclo de vida es independiente del informe radiológico (D-017): un estudio puede estar disponible sin informe.",
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
      "description" : "Estudio de imagen realizado en el RIS/PACS. Se crea porque el Bus dispone del Study Instance UID DICOM; sin ese dato el estudio no se crea y la trazabilidad la sostiene el Accession Number del informe. Ilustra además el escenario B de acceso a imágenes: imágenes disponibles e informe emitido. El informe (InformeTcCerebroEjemplo) referencia este estudio; el estudio no cambia por la llegada del informe y sigue referenciando el mecanismo de acceso del proveedor.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-BundleDisponibilidadEstudioEjemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/BundleDisponibilidadEstudioEjemplo"
      },
      "name" : "Evento de disponibilidad: imágenes disponibles sin informe",
      "description" : "Transacción que el adaptador del proveedor envía al Bus cuando el PACS confirma que la mamografía tiene instancias almacenadas. El estudio viaja como actualización condicional por Study Instance UID: si el Bus recibe dos veces el mismo evento, el resultado es el mismo recurso. identifier es la clave de deduplicación del evento y timestamp su orden. El paciente viaja completo y como recurso nuevo con urn:uuid, conforme al perfil de NID (D-012): el emisor no conoce el identificador del maestro, y el Bus lo resuelve contra el MPI antes de publicar; sin coincidencia única el evento no se aplica (D-001, escenario E). El estudio no lleva basedOn porque el adaptador del proveedor no conoce el identificador de la solicitud en el repositorio nacional: el Bus la enlaza al resolver, igual que en el flujo del informe. La referencia al mecanismo de acceso sí es un identificador conocido por el proveedor, porque el Endpoint es parte del registro que administra MINSAL. No contiene imágenes, credenciales ni datos del informe.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalBundleEstudioImagenologia"
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
      "description" : "Informe emitido por el RIS para un estudio que no tiene orden registrada en el Bus. Es el caso que justifica que basedOn sea opcional en esta guía: la interfaz de referencia ORU-Out v1.3 establece que el RIS envía todos los informes generados, no sólo los correspondientes a una orden del HIS. El informe se publica igual y el paciente accede a él.",
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
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-MecanismoAccesoImagenes.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/MecanismoAccesoImagenes"
      },
      "name" : "Mecanismo de acceso a imágenes del proveedor",
      "description" : "Tipos de conexión para el acceso del paciente a las imágenes que no tienen código en endpoint-connection-type de HL7: la API de visualización del proveedor (modalidad B) y el portal web del proveedor (modalidad C).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Endpoint"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Endpoint-EndpointApiProveedorEjemplo.html"
      }],
      "reference" : {
        "reference" : "Endpoint/EndpointApiProveedorEjemplo"
      },
      "name" : "Mecanismo de acceso: API de visualización del proveedor (modalidad B)",
      "description" : "API documentada del proveedor que el servicio nacional de autorización invoca servidor a servidor para obtener una apertura de un solo uso del visor del proveedor. address es la URL base de la API; las credenciales de cliente y la aserción de acceso viajan en cada llamada y nunca se almacenan en el Endpoint.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Endpoint"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Endpoint-EndpointPortalProveedorEjemplo.html"
      }],
      "reference" : {
        "reference" : "Endpoint/EndpointPortalProveedorEjemplo"
      },
      "name" : "Mecanismo de acceso: portal web del proveedor (modalidad C)",
      "description" : "Portal web del proveedor en el que el paciente se autentica y busca su estudio. Es la modalidad de conformidad básica: el portal nacional dirige al paciente a la dirección de entrada, que no identifica al paciente ni al estudio.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Endpoint"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Endpoint-EndpointIidVisorEjemplo.html"
      }],
      "reference" : {
        "reference" : "Endpoint/EndpointIidVisorEjemplo"
      },
      "name" : "Mecanismo de acceso: visor del proveedor invocado con IHE IID (modalidad A)",
      "description" : "Visor web existente del proveedor, invocado mediante IHE Invoke Image Display. address es la URL de invocación IID, sin parámetros: el contexto del estudio (petición por estudio con su Study Instance UID, según RAD-106) se agrega en tiempo de ejecución. IID no autentica ni autoriza al paciente: el visor exige además la aserción de acceso del servicio nacional de autorización (D-022).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EndpointAccesoImagenesMinsal"
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
      "description" : "Profesional ficticio en su forma de recurso completo, conforme al set de datos obligatorio de MINSALPrestadorProfesional (NID), para el canal FHIR directo. Cuando el informe llega por HL7 v2 (OBR-32), el radiólogo se representa con referencia lógica por RUN y no con este recurso (D-027), como muestran los informes de ejemplo.",
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
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-TipoConexionAccesoImagenes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/TipoConexionAccesoImagenes"
      },
      "name" : "Tipo de conexión para acceso a imágenes",
      "description" : "Tipos de conexión admitidos en EndpointAccesoImagenesMinsal: IHE IID y los dos mecanismos locales para el acceso de pacientes, más los servicios DICOMweb de consulta y recuperación, que pueden registrarse para usos profesionales pero no constituyen acceso del paciente.",
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
          "valueUrl" : "acceso-imagenes.html"
        }],
        "nameUrl" : "acceso-imagenes.html",
        "title" : "Acceso a imágenes sin informe",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "acceso-imagenes-proveedores.html"
        }],
        "nameUrl" : "acceso-imagenes-proveedores.html",
        "title" : "Integración de proveedores de imágenes",
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
          "valueUrl" : "conformidad-hl7v2.html"
        }],
        "nameUrl" : "conformidad-hl7v2.html",
        "title" : "Perfil de conformidad HL7 v2",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "decisiones-de-diseno.html"
        }],
        "nameUrl" : "decisiones-de-diseno.html",
        "title" : "Decisiones de diseño",
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
