# Repositorio de Reportes de Biopsias Oncológicas del Ministerio de Salud - Repositorio de Reportes de Biopsias Oncológicas v0.3.2

* [**Table of Contents**](toc.md)
* **Repositorio de Reportes de Biopsias Oncológicas del Ministerio de Salud**

## Repositorio de Reportes de Biopsias Oncológicas del Ministerio de Salud

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ImplementationGuide/hl7.fhir.cl.minsal.r2bo | *Version*:0.3.2 |
| Active as of 2026-09-14 | *Computable Name*:RepositorioReportesBiopsiasOncologicas |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.40.8 | |

### Introducción

Con el objetivo de avanzar hacia una salud digital interoperable, centrada en el paciente y basada en datos confiables, el Ministerio de Salud de Chile ha desarrollado esta guía de implementación para el **Repositorio de Reportes de Biopsias Oncológicas (R2BO)**. Esta guía forma parte de los esfuerzos de fortalecimiento de la arquitectura de interoperabilidad nacional y se enmarca en la **Estrategia Nacional de Salud Digital 2020–2030**. Los Servicios de Anatomía Patológica desempeñan un rol central en la atención de la salud, especialmente en el diagnóstico oncológico. Estos servicios son responsables de generar informes de biopsias que contribuyen a la toma de decisiones clínicas, la continuidad del cuidado y la vigilancia sanitaria.

### Alcance

La creación del R2BO responde a múltiples hitos de política pública sanitaria, entre los que destacan:

* La **Ley Nacional del Cáncer N.º 21.258**, que establece la **notificación obligatoria** de los casos confirmados de cáncer a partir del diagnóstico anatomopatológico.
* El **Plan Nacional de Cáncer 2022-2027**, que establece el fortalecimiento de la vigilancia epidemiológica y la gestión de casos oncológicos mediante integración y desarrollo de los registros oncológicos.
* La **Ley N.º 21.668 de Interoperabilidad de la Ficha Clínica Electrónica**, que mandata a los establecimientos públicos y privados a implementar soluciones de intercambio de información clínica conforme a estándares interoperables definidos por la Autoridad Sanitaria.
* La **Resolución exenta N° 173**, del 31 de enero de 2024, Déjase constancia, en cumplimiento de lo mandatado en la Ley Nacional de Cáncer y su reglamento, del desarrollo e implementación de la plataforma de soporte del registro Nacional de Cáncer.

A partir de este marco, se reconoce la necesidad de consolidar datos clínicos de alta relevancia en el marco del **Sistema Nacional de Registros de Cáncer**, el cual incluye:

* El Sistema Integral de Gestión Oncológica **(SIGO)**,
* El Registro Nacional de Cáncer Infantil **(RENCI)**,
* Los Registros Poblacionales de Cáncer **(RPC)**
* Los Registros Hospitalarios de Cáncer **(RHC)**
* Egresos hospitalarios y estadísticas vitales del Departamento de Estadísticas e Información en Salud **(DEIS)**

En este contexto, la información generada por los Servicios de Anatomía Patológica adquiere una dimensión clave. Los reportes de biopsias son esenciales para la confirmación diagnóstica y requieren una estructura que permita su integración, trazabilidad y reutilización con fines clínicos, regulatorios y sanitarios.

### Descripción

El repositorio de reportes de biopsias oncológicas (R2BO) centraliza los informes de biopsias diferidas de tipo histológico validadas con diagnóstico oncológico. El modelo de intercambio se basa en el estándar HL7® FHIR®, y utiliza terminologías clínicas internacionales como SNOMED CT, CIE-O, CIE-10 y LOINC para asegurar interoperabilidad semántica. El diseño del proceso y de los modelos de datos se construyó utilizando una **metodología orientada a procesos, centrada en el paciente y basada en evidencia**, integrando perspectivas clínicas, normativas y técnicas. El desarrollo fue impulsado por un equipo multidisciplinario del Ministerio de Salud, con participación de:

#### Gabinete Ministerial

* La Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (TIC),

#### Subsecretaría de Salud Pública

* División de Planificación Sanitaria, Departamento de Estadísticas e Información en Salud (DEIS),
* División de Prevención y Control de Enfermedades, Agencia Nacional de Prevención y Control del Cáncer (ANACAN),
* División de Planificación Sanitaria, Oficina de Vigilancia Epidemiológica de Cáncer del Departamento de Epidemiología

#### Subsecretaría de Redes Asistenciales

* Departamento de Salud Digital,
* División de Gestión de la Red Asistencial - Departamento de GES y Redes Complejas (Unidad de Oncología),
* División de Gestión de la red Asistencial – Departamento de gestión ambulatoria y Apoyo Diagnóstico (Anatomía Patológica)

### Objetivo General del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

Implementar un repositorio interoperable que permita la consolidación y consulta de los informes de biopsias diferidas con diagnóstico oncológico histológico validado y generados en todos los Servicios de Anatomía Patológica del país.

### Objetivos específicos del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

* Proveer el insumo del reporte de anatomía patológica de una biopsia para la generación de la notificación obligatoria de cáncer en el Sistema Integral de Seguimiento Oncológico (SIGO), mandatada por la Ley Nº 21.258.
* Promover el uso de estándares de interoperabilidad, como HL7 FHIR, SNOMED CT, CIE–O, CIE–10 y LOINC, para el intercambio y representación de datos clínicos.
* Habilitar a MINSAL desarrollar procesos de auditoría clínica, control de calidad y análisis institucional mediante datos estandarizados.
* Habilitar a MINSAL para consolidar información crítica que pueda ser utilizada para investigación, planificación sanitaria y vigilancia epidemiológica.

### Alcance del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

Según lo definido en el Artículo 47° del Decreto N°42 “Reglamento de la Ley Nacional del Cáncer”, será obligatorio reportar al R2BO los casos establecidos en las letras b, c, d, e y f:

* b) Todas las neoplasias malignas de localización primaria
* c) Todas las neoplasias malignas de localización secundaria.
* d) Todas las neoplasias múltiples.
* e) Todas las neoplasias benignas o de comportamiento incierto del Sistema Nervioso Central (SNC).
* f) Todas las neoplasias in situ de cáncer de mama y cuello uterino NIE III.

### Objetivo General de la Guía de Implementación

Proveer las directrices que garanticen la tributación de los informes definidos al repositorio de reportes de biopsias oncológicas (R2BO), conforme a los estándares nacionales definidos por el Ministerio de Salud.

### Objetivos Específicos de la Guía de Implementación

* Documentar los perfiles HL7 FHIR y extensiones nacionales utilizadas en el modelo de interoperabilidad.
* Proporcionar ejemplos de casos de uso clínicos y sanitarios que demuestran la aplicación del modelo.
* Habilitar la implementación técnica mediante especificaciones detalladas y directrices prácticas.

### Autores y contribuidores

Favor referirse a la página de [Autores y contribuidores](contributors.md).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.r2bo",
  "language" : "en",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ImplementationGuide/hl7.fhir.cl.minsal.r2bo",
  "version" : "0.3.2",
  "name" : "RepositorioReportesBiopsiasOncologicas",
  "title" : "Repositorio de Reportes de Biopsias Oncológicas",
  "status" : "active",
  "date" : "2026-09-14",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Este es un repositorio que permitira almacenar y consultar los reportes de anatomías patólogicas oncológicas de los pacientes en Chile. El objetivo es que los laboratorios puedan compartir la información de los pacientes y sus informes con otros laboratorios y hospitales, permitiendo una mejor atención y seguimiento de los pacientes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.r2bo",
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
    "id" : "hl7_fhir_cl_minsal_nid",
    "uri" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ImplementationGuide/hl7.fhir.cl.minsal.nid",
    "packageId" : "hl7.fhir.cl.minsal.nid",
    "version" : "0.4.9"
  },
  {
    "id" : "hl7_fhir_cl_clcore",
    "uri" : "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
    "packageId" : "hl7.fhir.cl.clcore",
    "version" : "1.9.4"
  },
  {
    "id" : "hl7_fhir_us_mcode",
    "uri" : "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode",
    "packageId" : "hl7.fhir.us.mcode",
    "version" : "4.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
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
        "valueString" : "trial-use"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "auto-oid-root"
      },
      {
        "url" : "value",
        "valueString" : "2.16.840.1.113883.2.22.40.8"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/_resources/exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/history.html"
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
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
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
        "valueString" : "2025+"
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
        "valueString" : "trial-use"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "auto-oid-root"
      },
      {
        "url" : "value",
        "valueString" : "2.16.840.1.113883.2.22.40.8"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/_resources/exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/history.html"
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
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-r2bo-minsal-cliente-informe.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/r2bo-minsal-cliente-informe"
      },
      "name" : "CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud",
      "description" : "CapabilityStatement para definir las caracteristicas mínimas del cliente que realiza la creación de informes de anatomía patológica y sus resultados.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-r2bo-minsal-consumidor.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/r2bo-minsal-consumidor"
      },
      "name" : "CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud",
      "description" : "CapabilityStatement para definir las caracteristicas mínimas del  para ver las interacciones posibles para buscar informes de anatomía patológica y sus resultados.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-r2bo-minsal-analisis.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/r2bo-minsal-analisis"
      },
      "name" : "CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud",
      "description" : "CapabilityStatement para definir las caracteristicas mínimas del \"Cliente Analista\" que realiza analisis secundario de informes de anatomía patológica y sus resultados, para tomar decisiones de salud pública.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-r2bo-minsal-server.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/r2bo-minsal-server"
      },
      "name" : "CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud",
      "description" : "CapabilityStatement para definir las caracteristicas mínimas del servidor para ver las interacciones posibles",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-r2bo-generar-informe-bundle-ejemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/r2bo-generar-informe-bundle-ejemplo"
      },
      "name" : "Ejemplo de Enviar un Informe de Anatomía Patológica",
      "description" : "Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-bundle-generar-notificacion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-r2bo-solicitud-informe-apa-ej.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/r2bo-solicitud-informe-apa-ej"
      },
      "name" : "Ejemplo de una Solicitud de Biopsia",
      "description" : "Solicitud de biopsia de tejido mamario",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-especialistas-autorizado-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-especialistas-autorizado-VS"
      },
      "name" : "Especialistas Autorizados",
      "description" : "Estos son los especialistas autorizados para realizar informes anatomías patológicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-Addenda-Reportebiopsia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-Addenda-Reportebiopsia"
      },
      "name" : "Extensión de Adendas Biopsia",
      "description" : "Está es una modificación de la extension la cual es la referencia a un reporte prevío que necesita ser actualizado",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-extension-grado-diferenciacion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-extension-grado-diferenciacion"
      },
      "name" : "Extensión del Grado de Diferenciación",
      "description" : "Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-hospital-collector.html"
      }],
      "reference" : {
        "reference" : "Organization/hospital-collector"
      },
      "name" : "Hospital Dr Hernan Henriquez Aravena",
      "description" : "Hospital de la comuna de Temuco",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-r2bo-informe-biopsia-ex.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/r2bo-informe-biopsia-ex"
      },
      "name" : "Informe de Anatomía Patológica de Biopsia de Mama",
      "description" : "Ejecución de un informe de anatomía patológica de biopsia de mama",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ModeloLogicoPacienteR2BO.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ModeloLogicoPacienteR2BO"
      },
      "name" : "Modelo Logico De un Paciente del R2BO",
      "description" : "Modelo lógico para el conjunto de datos mínimo de un paciente del R2BO.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ModeloLogicoInformePatologicoR2BO.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ModeloLogicoInformePatologicoR2BO"
      },
      "name" : "Modelo Lógico de Informe Patológico del R2BO",
      "description" : "Modelo lógico para el conjunto de datos mínimo de un informe patológico del R2BO",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-r2bo-specimen-example.html"
      }],
      "reference" : {
        "reference" : "Specimen/r2bo-specimen-example"
      },
      "name" : "Muestra de Mama",
      "description" : "Muestra de tejido de mamario",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-r2bo-tnm-categoria-metastasis-distantel-ex.html"
      }],
      "reference" : {
        "reference" : "Observation/r2bo-tnm-categoria-metastasis-distantel-ex"
      },
      "name" : "Observacion de Ejemplo: Categoria TNM Metástasis Distante",
      "description" : "Ejemplo de una observación de categoría TNM de metástasis distante de un reporte de biopsia",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-metastasis-distante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-r2bo-tnm-categoria-nodo-regional-ex.html"
      }],
      "reference" : {
        "reference" : "Observation/r2bo-tnm-categoria-nodo-regional-ex"
      },
      "name" : "Observacion de Ejemplo: Categoria TNM Nodos Regional",
      "description" : "Ejemplo de una observación de categoría TNM de nodos regionales de un reporte de biopsia",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-nodo-regional"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-r2bo-tnm-categoria-tumor-primario-ex.html"
      }],
      "reference" : {
        "reference" : "Observation/r2bo-tnm-categoria-tumor-primario-ex"
      },
      "name" : "Observacion de Ejemplo: Categoria TNM Tumor Primario",
      "description" : "Ejemplo de una observación de categoría TNM de un tumor primario de un reporte de biopsia",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-tnm-categoria-tumor-primario"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-r2bo-estadificacion-tnm-ex.html"
      }],
      "reference" : {
        "reference" : "Observation/r2bo-estadificacion-tnm-ex"
      },
      "name" : "Observacion de Ejemplo: Grupo Estadificación TNM",
      "description" : "Ejemplo de una observación del grupo de estadificacion TNM de un reporte de biopsia",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-paciente-requiere-examen.html"
      }],
      "reference" : {
        "reference" : "Patient/paciente-requiere-examen"
      },
      "name" : "Paciente Que Requiere un Examen",
      "description" : "Ejemplo de un paciente dentro del Indice Maestro del Paciente.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-bundle-generar-notificacion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-bundle-generar-notificacion"
      },
      "name" : "Perfil de Bundle: Generar Notificación Obligatoria",
      "description" : "Perfil de Bundle que contiene los recursos necesarios para generar la notificación oncológica por anatomía patológica y cargarlos en el repositorio.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-tnm-categoria-metastasis-distante.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-tnm-categoria-metastasis-distante"
      },
      "name" : "Perfil de Categoria TNM de Metástasis Distante",
      "description" : "Categoría que describe la extensión de la metástasis de un tumor en ubicaciones anatómicas remotas, basada en evidencia como exámenes físicos, imágenes y/o biopsias.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-tnm-categoria-nodo-regional.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-tnm-categoria-nodo-regional"
      },
      "name" : "Perfil de Categoria TNM Nodos Regional",
      "description" : "Categoría de la presencia o ausencia de metástasis en los ganglios linfáticos regionales, basada en evidencia como exámenes físicos, imágenes y/o biopsias.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-tnm-categoria-tumor-primario.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-tnm-categoria-tumor-primario"
      },
      "name" : "Perfil de Categoria TNM Tumor Primario",
      "description" : "Categoría del tumor primario, basada en su tamaño y extensión, basada en evidencia como exámenes físicos, imágenes y/o biopsias.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-estadificacion-tnm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-estadificacion-tnm"
      },
      "name" : "Perfil de Grupo Estadificación TNM",
      "description" : "Perfil grupo de estadificación TNM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-muestra-biopsia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-muestra-biopsia"
      },
      "name" : "Perfil de Muestra",
      "description" : "Muestra de tejido o fluido biológico para análisis de antomía patologica.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-categoria-tnm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-categoria-tnm"
      },
      "name" : "Perfil de Origen para las Categorías T, N,  M (Abstracto)",
      "description" : "Perfil para originar las Categorías T, N, M",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-resultados-reporte-biopsia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-resultados-reporte-biopsia"
      },
      "name" : "Perfil de Para Todas las Observaciones de los Resultados de Biopsias",
      "description" : "Perfil para todas las observaciones de los resultados de biopsias",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-rol-profesional-minsal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-rol-profesional-minsal"
      },
      "name" : "Perfil de Rol Profesional",
      "description" : "Rol que cumple un profesional en un establecimiento de salud. Este puede ser un profesional solicitante, el medico intervencionista o un anatomopatólogo que realiza un informe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-solicitud-informe-apa.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-solicitud-informe-apa"
      },
      "name" : "Perfil de Solicitud de Informe de Anatomía Patológica",
      "description" : "Solicitud generada por el médico para la realización de un informe de anatomía patológica",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-informe-biopsia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-informe-biopsia"
      },
      "name" : "Perfil del Reporte de Anatomía Patológica",
      "description" : "Reporte de anatomía patológica",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-profesional-hospital-anatopatologo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/profesional-hospital-anatopatologo"
      },
      "name" : "Profesional Anatopatologó",
      "description" : "Profesional que realiza el informe de anatomía patológica",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-r2bo-anatopatologo-hospital.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/r2bo-anatopatologo-hospital"
      },
      "name" : "Profesional de Anatomía Patológica del Hospital",
      "description" : "Profesional que realiza el informe de anatomía patológica en un hospital",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-ProfesionalHospital.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ProfesionalHospital"
      },
      "name" : "Profesional del Hospital",
      "description" : "Profesional que trabaja en un hospital",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-profesional-hospital-collector.html"
      }],
      "reference" : {
        "reference" : "Practitioner/profesional-hospital-collector"
      },
      "name" : "Profesional recolector de muestra",
      "description" : "Profesional que recolecta muestras en un hospital",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-profesional-autorizado-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-profesional-autorizado-VS"
      },
      "name" : "Profesionales Autorizados",
      "description" : "Estos son los profesionales autorizados para realizar informes o solicitudes de anatomías patológicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-r2bo-localizacion-MedicinaGeneral.html"
      }],
      "reference" : {
        "reference" : "Location/r2bo-localizacion-MedicinaGeneral"
      },
      "name" : "Servicio de Medicina General",
      "description" : "Servicio de Medicina General de un establecimiento de salud",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-servicio-solicitante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-r2bo-servicio-solicitante.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/r2bo-servicio-solicitante"
      },
      "name" : "Servicio Solicitante del Informe",
      "description" : "Servicio con el cual es solicitado el informe de Anatomía Patológica.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-tnm-categoria-metastasis-distante-patologico-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-tnm-categoria-metastasis-distante-patologico-vs"
      },
      "name" : "Set de Valores Categoría TNM Patológico Metastásico Distante",
      "description" : "Set de valores utilizados para la categoría TNM patológico metastásico distante",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-tnm-categoria-nodo-regional-patologico-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-tnm-categoria-nodo-regional-patologico-vs"
      },
      "name" : "Set de Valores Categoría TNM Patológico Nodos Regional",
      "description" : "Set de valores utilizados para la categoría TNM patológico Nodos Regional",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-tnm-categoria-tumor-primario-patologico-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-tnm-categoria-tumor-primario-patologico-vs"
      },
      "name" : "Set de Valores Categoría TNM Patológico Tumor Primario",
      "description" : "Set de valores utilizados para la categoría TNM patológico tumor primaro",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-morfologicos-cie11-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-morfologicos-cie11-VS"
      },
      "name" : "Set de Valores CIE-11 Códigos de Extensión Histopatológicos",
      "description" : "Set de valores utilizados para CIE-11 Códigos de Extensión Histopatológicos par ser usado en la morfología de neoplasias",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-categoria-reporte-biopsia-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-categoria-reporte-biopsia-vs"
      },
      "name" : "Set de Valores de la Categoría Reportes de Biopsia",
      "description" : "Códigos de tipos de categoría de reportes de biopsias en HL7",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-reporte-biopsia-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-reporte-biopsia-vs"
      },
      "name" : "Set de Valores de los Reportes de Biopsia",
      "description" : "Códigos de tipos de reportes de biopsias en Snomed y LOINC",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-tipo-especimen-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-tipo-especimen-vs"
      },
      "name" : "Set de Valores de los Tipos de Especimen",
      "description" : "Códigos de tipos de especimen en Snomed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-morfologicosct-cieo-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-morfologicosct-cieo-VS"
      },
      "name" : "Set de Valores Morfología",
      "description" : "Set de valores utilizados para morfologías en CIE-O 3.2 Morfológico",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-categorias-pTNM-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-categorias-pTNM-VS"
      },
      "name" : "Set de Valores para Categorias pTNM",
      "description" : "Set de valores para las categorias para el TNM patológico",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-grado-diferenciacion-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-grado-diferenciacion-vs"
      },
      "name" : "Set de Valores Para Grado de Diferenciación",
      "description" : "Grado de diferenciación tumoral según clasificación de la OMS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-Estadificacion-patologico-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-Estadificacion-patologico-vs"
      },
      "name" : "Set de Valores para la Estadificación",
      "description" : "Set de valores utilizados para la estadificación",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-estructuras-anatomicas-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-estructuras-anatomicas-VS"
      },
      "name" : "Set de Valores Para los Sitios del Cuerpo",
      "description" : "Set de valores para las distintas estructuras corporales de donde se obtienen las muestras",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-observaciones-biopsia-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-observaciones-biopsia-VS"
      },
      "name" : "Set de Valores para Observaciones Biopsia",
      "description" : "Observaciones realizadas durante el informe de biopsia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-procedimientos-biopsias-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-procedimientos-biopsias-VS"
      },
      "name" : "Set de Valores Para Procedimientos",
      "description" : "Set de valores utilizados para los procedimientos al momento de extraer muestras de tejido",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-topografica-cie11-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-topografica-cie11-VS"
      },
      "name" : "Set de Valores para Topografía",
      "description" : "Set de valores utilizados para la topografía de la CIE-11 para Anatomía y topografía",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-topografica-cieo-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-topografica-cieo-VS"
      },
      "name" : "Set de Valores para Topografía según la CIE-O 3.2",
      "description" : "Set de valores utilizados para la topografía de la CIE-O 3.2 Tográfico",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-r2bo-grado-diferenciacion-CS.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/r2bo-grado-diferenciacion-CS"
      },
      "name" : "Sistema de Codificación del Grado de Diferenciación",
      "description" : "Grado de diferenciación tumoral según clasificación de la OMS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-hallazgos-clinicos-cie10-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-hallazgos-clinicos-cie10-VS"
      },
      "name" : "ValueSet Para Hallazgos Clínicos",
      "description" : "Este ValueSet contiene los códigos que representan las neoplasias de la CIE 10",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-r2bo-hallazgos-clinicos-cie11-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/r2bo-hallazgos-clinicos-cie11-VS"
      },
      "name" : "ValueSet Para Hallazgos Clínicos de la CIE 11 para neoplasias",
      "description" : "Este ValueSet contiene los códigos de la CIE 11 para hallazgos clínicos de neoplasias, que son utilizados en la definición de perfiles de recursos FHIR para la interoperabilidad en salud.",
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
        "title" : "Repositorio de Reportes de Biopsias Oncológicas del Ministerio de Salud",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "contributors.html"
          }],
          "nameUrl" : "contributors.html",
          "title" : "Contribuidores",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "design-consideration.html"
        }],
        "nameUrl" : "design-consideration.html",
        "title" : "Consideraciones de Diseño",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "InteraccionesConServidor.html"
        }],
        "nameUrl" : "InteraccionesConServidor.html",
        "title" : "Interacciones con el Repositorio Interoperable de Anatomías Patológicas",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-hl7.fhir.cl.minsal.r2bo.html"
        }],
        "nameUrl" : "ImplementationGuide-hl7.fhir.cl.minsal.r2bo.html",
        "title" : "Recurso Guía de Implementación del Repositorio Interoperable de Anatomías",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Historial de Cambios",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Downloads.html"
        }],
        "nameUrl" : "Downloads.html",
        "title" : "Descargas",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-tx-cache",
      "value" : "input\\txcache"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
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
      "value" : "input/vocabulary"
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
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    }]
  }
}

```
