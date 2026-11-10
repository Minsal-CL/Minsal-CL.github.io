# Inicio - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* **Inicio**

## Inicio

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/mhd/ImplementationGuide/hl7.fhir.cl.minsal.mhd | *Versión*:0.3.0 |
| Borrador al 2026-11-09 | *Nombre computable*:MHDMinsal |

### Guía de Implementación FHIR - Perfil MHD Nacional MINSAL

#### Estado

Esta guía define el perfil transversal de documentos clínicos del Ministerio de Salud para el Bus de Interoperabilidad, sobre IHE Mobile access to Health Documents (MHD). Fija los elementos comunes a cualquier documento clínico publicado mediante las transacciones ITI-65 (Provide Document Bundle), ITI-67 (Find Document References), e ITI-68 (Retrieve Document), con independencia del dominio clínico. Antes de publicar o buscar, el identificador nacional del paciente se obtiene del índice maestro de pacientes (MPI) con ITI-83 (PIXm) o ITI-78 (PDQm).

Cada guía de dominio extiende estos perfiles con el tipo de documento y los perfiles de paciente, prestador y solicitud que le corresponden. Esta guía no reemplaza la guía de dominio: aporta la parte común.

Los perfiles no fijan un dominio. No hay bindings, códigos fijos ni tipos de referencia propios de laboratorio o de imagenología. Laboratorio es, a la fecha, el primer dominio que hereda estos perfiles. Cualquier otra guía del portafolio puede adoptarlos del mismo modo.

#### Perfiles

* `MinsalDocumentReferenceMhd`: forma almacenada y consultable del documento (ITI-67 e ITI-68). El contenido se recupera por `content.attachment.url`.
* `MinsalProvideBundleMhd` y `MinsalSubmissionSetMhd`: el Bundle de ITI-65 y su lista SubmissionSet. La lista es obligatoria. Los `DocumentReference` van de cero a varios.

Los tres derivan de IHE MHD 4.2.5. La publicación se hace por ITI-65. Los ejemplos de laboratorio e imagenología ilustran el perfil, incluida la trazabilidad hacia la solicitud de origen. No limitan lo que el perfil admite.

El modelo de federación, los escenarios de origen y el detalle de las transacciones están en [Arquitectura y flujos](arquitectura-y-flujos.md). El `CapabilityStatement` del nodo central está en [Perfiles](artifacts.md).

#### Alcance frente a las guías de dominio

Esta guía define solo lo común a cualquier documento clínico del Bus. El `DocumentReference` de cada dominio, con `subject`, `author`, `custodian` y `context.related` restringidos a sus perfiles de paciente, prestador y solicitud, se define en la guía de ese dominio y hereda de los perfiles de esta guía. Laboratorio ya cuenta con `MinsalDocumentReferenceLaboratorio`. Imagenología y los demás dominios siguen el mismo patrón. El diseño común no se duplica en cada guía.

#### Dependencias

Esta guía se apoya en las siguientes especificaciones:

* HL7 FHIR R4, como base del intercambio.
* IHE MHD 4.2.5, para los perfiles de `DocumentReference`, los actores y las transacciones ITI-65, ITI-67 e ITI-68.
* IHE PIXm 3.1.0, para la transacción ITI-83, que traduce un identificador local del paciente al identificador nacional.
* IHE PDQm 3.2.0, para la transacción ITI-78, que busca al paciente por datos demográficos.
* IHE BALP 1.1.4, para el patrón de auditoría de la recuperación y del reemplazo de un documento, y de las consultas al MPI.
* HL7 Terminology y el paquete de extensiones FHIR, que toda guía FHIR incorpora de forma automática.
* FHIR Tooling Extensions 1.3.0, que define la extensión de snapshot heredada en los identificadores de IHE MHD.

Esta guía fija cómo se obtiene el identificador nacional del paciente (ITI-83 e ITI-78), pero no el perfil de `Patient`, ni la identificación del profesional y de la organización. Eso lo define la guía de cada dominio.










##### Análisis de versiones cruzadas

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.cl.minsal.mhd.r4)](package.r4.tgz) and [R4B (hl7.fhir.cl.minsal.mhd.r4b)](package.r4b.tgz) are available.

##### Perfiles globales

*There are no Global profiles defined*

##### Declaración de propiedad intelectual

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [CapabilityStatementNodoCentralMhd](CapabilityStatement-CapabilityStatementNodoCentralMhd.md), [MHDMinsal](index.md), [MinsalDocumentReferenceMhd](StructureDefinition-MinsalDocumentReferenceMhd.md), [MinsalProvideBundleMhd](StructureDefinition-MinsalProvideBundleMhd.md) and [MinsalSubmissionSetMhd](StructureDefinition-MinsalSubmissionSetMhd.md)


* Some content from IHE® Copyright © 2015 [IHE International, Inc](http://www.ihe.net/Governance/#Intellectual_Property) .

* [IHE Format Code set for use with Document Sharing](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.6.0/CodeSystem-formatcode.html): [DocumentReference/InformeImagenologiaEjemploMhd](DocumentReference-InformeImagenologiaEjemploMhd.md), [DocumentReference/InformeLaboratorioEjemploMhd](DocumentReference-InformeLaboratorioEjemploMhd.md) and [DocumentReference/InformeLaboratorioReemplazoEjemploMhd](DocumentReference-InformeLaboratorioReemplazoEjemploMhd.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [DocumentReference/InformeImagenologiaEjemploMhd](DocumentReference-InformeImagenologiaEjemploMhd.md), [DocumentReference/InformeLaboratorioAtomizadoEjemploMhd](DocumentReference-InformeLaboratorioAtomizadoEjemploMhd.md), [DocumentReference/InformeLaboratorioEjemploMhd](DocumentReference-InformeLaboratorioEjemploMhd.md) and [DocumentReference/InformeLaboratorioReemplazoEjemploMhd](DocumentReference-InformeLaboratorioReemplazoEjemploMhd.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [diagnosticServiceSectionId](http://terminology.hl7.org/7.5.0/CodeSystem-v2-0074.html): [DocumentReference/InformeImagenologiaEjemploMhd](DocumentReference-InformeImagenologiaEjemploMhd.md), [DocumentReference/InformeLaboratorioAtomizadoEjemploMhd](DocumentReference-InformeLaboratorioAtomizadoEjemploMhd.md), [DocumentReference/InformeLaboratorioEjemploMhd](DocumentReference-InformeLaboratorioEjemploMhd.md) and [DocumentReference/InformeLaboratorioReemplazoEjemploMhd](DocumentReference-InformeLaboratorioReemplazoEjemploMhd.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.mhd",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/ImplementationGuide/hl7.fhir.cl.minsal.mhd",
  "version" : "0.3.0",
  "name" : "MHDMinsal",
  "title" : "Guía de Implementación FHIR - Perfil MHD Nacional MINSAL",
  "status" : "draft",
  "date" : "2026-11-09T23:03:48-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Perfil IHE Mobile access to Health Documents (MHD) transversal de MINSAL: define los elementos comunes a todo documento clínico publicado en el Bus de Interoperabilidad (ITI-65/67/68), para que las guías de dominio (Laboratorio, Imagenología, etc.) lo extiendan agregando su tipo de documento y contenido específico. Define el perfil de DocumentReference y los del envío ITI-65 (Provide Bundle y SubmissionSet), ilustrados con ejemplos de laboratorio e imagenología.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.mhd",
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
    "id" : "ihe_iti_mhd",
    "uri" : "https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd",
    "packageId" : "ihe.iti.mhd",
    "version" : "4.2.5"
  },
  {
    "id" : "ihe_iti_balp",
    "uri" : "https://profiles.ihe.net/ITI/BALP/ImplementationGuide/ihe.iti.balp",
    "packageId" : "ihe.iti.balp",
    "version" : "1.1.4"
  },
  {
    "id" : "ihe_iti_pixm",
    "uri" : "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm",
    "packageId" : "ihe.iti.pixm",
    "version" : "3.1.0"
  },
  {
    "id" : "ihe_iti_pdqm",
    "uri" : "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm",
    "packageId" : "ihe.iti.pdqm",
    "version" : "3.2.0"
  },
  {
    "id" : "hl7_fhir_uv_tools_r4",
    "uri" : "http://hl7.org/fhir/tools/ImplementationGuide/hl7.fhir.uv.tools",
    "packageId" : "hl7.fhir.uv.tools.r4",
    "version" : "1.3.0"
  }],
  "definition" : {
    "extension" : [{
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
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/history.html"
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
        "valueUri" : "StructureDefinition-MinsalProvideBundleMhd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalProvideBundleMhd"
      },
      "name" : "Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)",
      "description" : "Bundle de ITI-65. Hereda IHE.MHD.Minimal.ProvideBundle: una entrada SubmissionSet 1..1 (perfil `MinsalSubmissionSetMhd`) y entradas DocumentReference 0..* (perfil `MinsalDocumentReferenceMhd`). El documento nuevo de un reemplazo y el PATCH del documento anterior viajan en este mismo Bundle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-CapabilityStatementNodoCentralMhd.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/CapabilityStatementNodoCentralMhd"
      },
      "name" : "CapabilityStatement del nodo central (índice nacional) MHD",
      "description" : "Describe las capacidades del nodo central de MINSAL para las transacciones IHE MHD de la fase 1 (modelo mediado, ver Arquitectura y flujos): responde búsquedas y recuperaciones de documentos (actuando como Document Responder) y recibe publicaciones de los nodos custodios (actuando como Document Recipient). Verifica el paciente de cada publicación contra el MPI nacional (actuando como consumidor PIXm, ITI-83). No declara interacciones propias: importa los CapabilityStatement oficiales de IHE MHD y PIXm que ya las definen, para no duplicar ni arriesgar que se desalineen de la especificación.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-CentroImagenologiaEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "Organization/CentroImagenologiaEjemploMhd"
      },
      "name" : "Centro de imagenología de ejemplo (transversal, sin perfilar)",
      "description" : "Organización base FHIR R4, sin perfil, usada como `custodian` (nodo custodio) en el ejemplo de imagenología.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-LaboratorioEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "Organization/LaboratorioEjemploMhd"
      },
      "name" : "Laboratorio de ejemplo (transversal, sin perfilar)",
      "description" : "Organización base FHIR R4, sin perfil, usada como `custodian` (nodo custodio) en los ejemplos de laboratorio.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalSubmissionSetMhd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalSubmissionSetMhd"
      },
      "name" : "Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal)",
      "description" : "Lista de tipo SubmissionSet que viaja en un ITI-65. Hereda IHE.MHD.Minimal.SubmissionSet. En un retiro o un reemplazo, List.note lleva quién lo pide (authorString) y el motivo (text).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PacienteEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "Patient/PacienteEjemploMhd"
      },
      "name" : "Paciente de ejemplo (transversal, sin perfilar)",
      "description" : "Paciente base FHIR R4, sin perfil CL-Core/NID, usado solo para ilustrar los ejemplos de este repo transversal. Las guías de dominio deben usar su propio perfil de paciente.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ProfesionalEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ProfesionalEjemploMhd"
      },
      "name" : "Profesional de ejemplo (transversal, sin perfilar)",
      "description" : "Profesional base FHIR R4, sin perfil, usado como `author` en los ejemplos de este repo transversal. Las guías de dominio deben usar su propio perfil de prestador.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-InformeLaboratorioReemplazoEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/InformeLaboratorioReemplazoEjemploMhd"
      },
      "name" : "Reemplazo de un informe de laboratorio (depreca la versión anterior)",
      "description" : "Ejemplo de la nueva versión de un documento que reemplaza a `InformeLaboratorioEjemploMhd`. `status` sigue en `current` porque este documento es el vigente; la deprecación del anterior se expresa con `relatesTo.code = replaces` apuntando a su `id`. En la transacción real (ver sección Reemplazo y deprecación de un documento), este `DocumentReference` viaja junto con un `PATCH` que cambia el `status` del documento anterior a `superseded`.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-InformeImagenologiaEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/InformeImagenologiaEjemploMhd"
      },
      "name" : "Referencia documental de un informe de imagenología (forma almacenada)",
      "description" : "Ejemplo orientado a imagenología: mismo perfil transversal que el ejemplo de laboratorio, cambiando `type`/`category` y el custodio. `type` usa LOINC 18748-4 'Diagnostic imaging study' (verificado como el código vigente para el tipo de documento de un informe de imágenes diagnósticas) y `category` usa v2-0074#RAD 'Radiology' (confirmado vigente; el código IMG del mismo CodeSystem está obsoleto).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-InformeLaboratorioEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/InformeLaboratorioEjemploMhd"
      },
      "name" : "Referencia documental de un informe de laboratorio (forma almacenada)",
      "description" : "Ejemplo orientado a laboratorio: mismo perfil transversal que el ejemplo de imagenología, cambiando `type`/`category` y el custodio. Representa la forma almacenada (ITI-67/68): el contenido se recupera por `content.attachment.url`, no viaja inline. Incluye `context.related` apuntando a `SolicitudEjemploMhd`, para ilustrar la trazabilidad hacia la solicitud de origen cuando esta viene codificada en un sistema distinto (ej. FONASA) del que usa el resultado (LOINC).",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-InformeLaboratorioAtomizadoEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/InformeLaboratorioAtomizadoEjemploMhd"
      },
      "name" : "Referencia documental de un informe de laboratorio atomizado (Bundle documento FHIR)",
      "description" : "Ejemplo del modelo de contenido atomizado: `content.attachment.contentType` es `application/fhir+json` y la URL apunta a un Bundle documento FHIR (Composition + DiagnosticReport + Observation por resultado). Por regla de ITI-65, `hash` y `size` no se informan.",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MinsalDocumentReferenceMhd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MinsalDocumentReferenceMhd"
      },
      "name" : "Referencia documental MINSAL (IHE MHD, forma almacenada)",
      "description" : "Perfil transversal de DocumentReference (IHE MHD, perfil Minimal) para la forma almacenada y consultable de un documento clínico publicado en el Bus de Interoperabilidad: contiene los metadatos y la URL (`content.attachment.url`) desde la cual se recupera el contenido (transacciones ITI-67 y ITI-68). El contenido no va inline (`content.attachment.data` 0..0, heredado de IHE MHD Minimal). Las guías de dominio del portafolio (laboratorio, imagenología, etc.) heredan de este perfil y fijan lo específico de su documento; no reemplaza el perfil de dominio, lo complementa con la parte común a todas las guías.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-SolicitudEjemploMhd.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/SolicitudEjemploMhd"
      },
      "name" : "Solicitud de examen de ejemplo (transversal, sin perfilar)",
      "description" : "Solicitud de origen del informe de laboratorio de ejemplo, codificada con el código de prestación FONASA del hemograma (no LOINC: la solicitud y el resultado no siempre comparten sistema de codificación). Existe para demostrar `context.related` en `InformeLaboratorioEjemploMhd`: el resultado atomizado puede traer varios códigos LOINC (uno por cada componente del hemograma) y aun así trazarse hacia esta única solicitud de origen.",
      "exampleBoolean" : true
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
          "valueUrl" : "arquitectura-y-flujos.html"
        }],
        "nameUrl" : "arquitectura-y-flujos.html",
        "title" : "Arquitectura y flujos",
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
