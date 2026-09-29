# Profesional de Imagenología MINSAL - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional de Imagenología MINSAL**

## Resource Profile: Profesional de Imagenología MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia | *Version*:0.3.0 |
| Draft as of 2026-09-28 | *Computable Name*:MinsalPractitionerImagenologia |

 
Perfil para representar al profesional solicitante del examen (ORC-12), al médico radiólogo que informa el estudio (OBR-32) y a cualquier otro profesional participante en el flujo imagenológico. Extiende MINSALPrestadorProfesional (NID), el núcleo normativo de MINSAL para prestadores individuales, según la jerarquía normativa nacional (decisión D-016). El RUN, la fecha de nacimiento y el título profesional quedan obligatorios por ese perfil, no por esta guía. 

**Usages:**

* Use this Profile: [Bundle de Solicitud de Imagenología MINSAL](StructureDefinition-MinsalBundleSolicitudImagenologia.md)
* Refer to this Profile: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md) and [Solicitud de Examen Imagenológico MINSAL](StructureDefinition-MinsalServiceRequestImagen.md)
* Examples for this Profile: [Practitioner/MedicoRadiologoEjemplo](Practitioner-MedicoRadiologoEjemplo.md) and [Practitioner/ProfesionalSolicitanteImagenEjemplo](Practitioner-ProfesionalSolicitanteImagenEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-MinsalPractitionerImagenologia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MinsalPractitionerImagenologia.csv), [Excel](StructureDefinition-MinsalPractitionerImagenologia.xlsx), [Schematron](StructureDefinition-MinsalPractitionerImagenologia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MinsalPractitionerImagenologia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalPractitionerImagenologia",
  "version" : "0.3.0",
  "name" : "MinsalPractitionerImagenologia",
  "title" : "Profesional de Imagenología MINSAL",
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
  "description" : "Perfil para representar al profesional solicitante del examen (ORC-12), al médico radiólogo que informa el estudio (OBR-32) y a cualquier otro profesional participante en el flujo imagenológico. Extiende MINSALPrestadorProfesional (NID), el núcleo normativo de MINSAL para prestadores individuales, según la jerarquía normativa nacional (decisión D-016). El RUN, la fecha de nacimiento y el título profesional quedan obligatorios por ese perfil, no por esta guía.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    }]
  }
}

```
