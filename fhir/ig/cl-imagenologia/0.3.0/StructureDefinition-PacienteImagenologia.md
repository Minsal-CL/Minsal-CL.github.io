# Paciente de Imagenología - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente de Imagenología**

## Resource Profile: Paciente de Imagenología 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:PacienteImagenologia |

 
Perfil de paciente utilizado en las solicitudes de examen imagenológico, los estudios de imagen y los informes radiológicos. Extiende MINSALPaciente (NID, Núcleo de Interoperabilidad de Datos), el núcleo normativo de identidad de MINSAL, según la jerarquía normativa nacional (decisión D-016). El recurso es una proyección del maestro del MPI (D-001): la identidad se resuelve contra el MPI antes de publicarse; ver la página Arquitectura. 

**Usages:**

* Use this Profile: [Bundle de Informe de Imagenología MINSAL](StructureDefinition-MinsalBundleInformeImagenologia.md) and [Bundle de Solicitud de Imagenología MINSAL](StructureDefinition-MinsalBundleSolicitudImagenologia.md)
* Refer to this Profile: [Estudio Imagenológico MINSAL](StructureDefinition-EstudioImagenologicoMinsal.md), [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md) and [Solicitud de Examen Imagenológico MINSAL](StructureDefinition-MinsalServiceRequestImagen.md)
* Examples for this Profile: [Patient/PacienteImagenologiaEjemplo](Patient-PacienteImagenologiaEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-PacienteImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PacienteImagenologia.csv), [Excel](StructureDefinition-PacienteImagenologia.xlsx), [Schematron](StructureDefinition-PacienteImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PacienteImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia",
  "version" : "0.3.0",
  "name" : "PacienteImagenologia",
  "title" : "Paciente de Imagenología",
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
  "description" : "Perfil de paciente utilizado en las solicitudes de examen imagenológico, los estudios de imagen y los informes radiológicos. Extiende MINSALPaciente (NID, Núcleo de Interoperabilidad de Datos), el núcleo normativo de identidad de MINSAL, según la jerarquía normativa nacional (decisión D-016). El recurso es una proyección del maestro del MPI (D-001): la identidad se resuelve contra el MPI antes de publicarse; ver la página Arquitectura.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "short" : "Cuando el identificador es el RUN, se usa el dominio de identidad publicado por NID para pacientes (https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run)."
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor del identificador. Para el RUN, incluye dígito verificador (formato \"12345678-5\"). El Bus valida el dígito verificador: ni el HIS ni el RIS lo hacen."
    }]
  }
}

```
