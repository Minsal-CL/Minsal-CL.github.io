# Estudio Imagenológico MINSAL - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estudio Imagenológico MINSAL**

## Resource Profile: Estudio Imagenológico MINSAL 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:EstudioImagenologicoMinsal |

 
Perfil para representar el estudio de imagen almacenado en el PACS/VNA del proveedor: transporta el Accession Number, el Study Instance UID, la modalidad DICOM, el estado del estudio y la referencia al mecanismo de acceso a las imágenes (endpoint). El recurso contiene sólo metadatos: las imágenes permanecen en el PACS/VNA de origen (D-021). El Bus crea este recurso sólo cuando dispone de dato DICOM real (D-008), ya sea porque llega un evento de disponibilidad (MinsalBundleEstudioImagenologia) o porque acompaña al informe. Su ciclo de vida es independiente del informe radiológico (D-017): un estudio puede estar disponible sin informe. 

**Usages:**

* Use this Perfil: [Bundle de Disponibilidad de Estudio Imagenológico MINSAL](StructureDefinition-MinsalBundleEstudioImagenologia.md) and [Bundle de Informe de Imagenología MINSAL](StructureDefinition-MinsalBundleInformeImagenologia.md)
* Refer to this Perfil: [Informe Radiológico MINSAL](StructureDefinition-InformeRadiologicoMinsal.md)
* Examples for this Perfil: [ImagingStudy/EstudioMamografiaDisponibleSinInformeEjemplo](ImagingStudy-EstudioMamografiaDisponibleSinInformeEjemplo.md), [ImagingStudy/EstudioRmRegistradoSinImagenesEjemplo](ImagingStudy-EstudioRmRegistradoSinImagenesEjemplo.md), [ImagingStudy/EstudioTcCerebroEjemplo](ImagingStudy-EstudioTcCerebroEjemplo.md) and [ImagingStudy/EstudioTcTemporalmenteNoDisponibleEjemplo](ImagingStudy-EstudioTcTemporalmenteNoDisponibleEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.imagenologia|current/StructureDefinition/StructureDefinition-EstudioImagenologicoMinsal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EstudioImagenologicoMinsal.csv), [Excel](StructureDefinition-EstudioImagenologicoMinsal.xlsx), [Schematron](StructureDefinition-EstudioImagenologicoMinsal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EstudioImagenologicoMinsal",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal",
  "version" : "0.5.0",
  "name" : "EstudioImagenologicoMinsal",
  "title" : "Estudio Imagenológico MINSAL",
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
  "description" : "Perfil para representar el estudio de imagen almacenado en el PACS/VNA del proveedor: transporta el Accession Number, el Study Instance UID, la modalidad DICOM, el estado del estudio y la referencia al mecanismo de acceso a las imágenes (endpoint). El recurso contiene sólo metadatos: las imágenes permanecen en el PACS/VNA de origen (D-021). El Bus crea este recurso sólo cuando dispone de dato DICOM real (D-008), ya sea porque llega un evento de disponibilidad (MinsalBundleEstudioImagenologia) o porque acompaña al informe. Su ciclo de vida es independiente del informe radiológico (D-017): un estudio puede estar disponible sin informe.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImagingStudy",
      "path" : "ImagingStudy",
      "constraint" : [{
        "key" : "estudio-identificador-inequivoco",
        "severity" : "error",
        "human" : "El estudio debe identificarse de forma inequívoca: con el Study Instance UID (system urn:dicom:uid) o con el Accession Number (type v2-0203#ACSN) acompañado del system del dominio que lo asigna.",
        "expression" : "identifier.where(system = 'urn:dicom:uid' and value.exists()).exists() or identifier.where(type.coding.where(system = 'http://terminology.hl7.org/CodeSystem/v2-0203' and code = 'ACSN').exists() and system.exists() and value.exists()).exists()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/EstudioImagenologicoMinsal"
      }]
    },
    {
      "id" : "ImagingStudy.identifier",
      "path" : "ImagingStudy.identifier",
      "short" : "Accession Number (OBR-18.1, tipo ACSN) y, cuando exista, el Study Instance UID DICOM con system urn:dicom:uid.",
      "comment" : "El Study Instance UID (system urn:dicom:uid, valor con prefijo urn:oid:) identifica el estudio de forma única a nivel global y es la clave de la actualización condicional del evento de disponibilidad. El Accession Number es único sólo dentro del dominio del RIS que lo asigna, por eso su system identifica ese dominio. La invariante estudio-identificador-inequivoco exige al menos uno de los dos.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.status",
      "path" : "ImagingStudy.status",
      "short" : "registered | available | cancelled | entered-in-error | unknown, con la semántica de FHIR R4",
      "comment" : "registered: el estudio existe, pero aún no tiene instancias. available: al menos una instancia está asociada al estudio en el PACS/VNA. El estado NO expresa si existe informe (eso lo indica la existencia de InformeRadiologicoMinsal) ni si el paciente puede ver las imágenes en este momento (eso lo indica endpoint y Endpoint.status). Recibir la orden, registrar el examen o completar el MPPS de la modalidad no implica available.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.modality",
      "path" : "ImagingStudy.modality",
      "short" : "Modalidad DICOM del estudio (CT, MR, MG, US, CR, DX...). No viaja como tal en la mensajería: se obtiene del objeto DICOM cuando el Bus consulta al PACS. Si no se resuelve desde una fuente DICOM, el estudio no se crea y el informe se publica igual.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.subject",
      "path" : "ImagingStudy.subject",
      "comment" : "Paciente resuelto contra el MPI (D-001). Un estudio cuyo paciente no se resuelve de forma inequívoca no se publica: queda en conciliación (ver la página Acceso a imágenes, escenario E).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/PacienteImagenologia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.started",
      "path" : "ImagingStudy.started",
      "short" : "Fecha y hora de inicio del examen (ORC-7.4 o atributo DICOM Study Date/Time).",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.basedOn",
      "path" : "ImagingStudy.basedOn",
      "short" : "Solicitud que originó el estudio, cuando existe en el Bus.",
      "comment" : "Mientras no exista informe, es la vía para que el portal muestre de qué examen se trata y lo vincule con la orden. Es opcional por la misma razón que InformeRadiologicoMinsal.basedOn: el RIS puede ejecutar estudios sin orden registrada en el HIS.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/StructureDefinition/MinsalServiceRequestImagen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.endpoint",
      "path" : "ImagingStudy.endpoint",
      "short" : "Mecanismo de acceso a las imágenes del estudio (EndpointAccesoImagenesMinsal) y, cuando corresponda, servicio DICOMweb.",
      "comment" : "El estudio es visualizable por el paciente cuando status = available y endpoint referencia al menos un EndpointAccesoImagenesMinsal de acceso de pacientes con status = active (D-018). Cuando un estudio puntual deja de poder consultarse, el emisor retira la referencia hasta que se restablezca. Un endpoint DICOMweb (dicom-wado-rs) no es un visor ni autentica pacientes. El endpoint nunca contiene credenciales ni tokens.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.numberOfSeries",
      "path" : "ImagingStudy.numberOfSeries",
      "short" : "Cantidad de series del estudio, cuando el PACS la informa.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.numberOfInstances",
      "path" : "ImagingStudy.numberOfInstances",
      "short" : "Cantidad de instancias del estudio, cuando el PACS la informa.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.procedureCode",
      "path" : "ImagingStudy.procedureCode",
      "short" : "Procedimiento realizado, con las mismas codificaciones del código del examen (catálogo local y prestación FONASA) cuando se conocen.",
      "comment" : "Permite al portal mostrar el nombre del examen mientras el informe está pendiente, sobre todo cuando el estudio no tiene solicitud registrada. No se exige la prestación FONASA por cardinalidad: la regla D-014 aplica a la solicitud y al informe.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.description",
      "path" : "ImagingStudy.description",
      "short" : "Descripción del estudio asignada por el PACS (atributo DICOM Study Description).",
      "mustSupport" : true
    }]
  }
}

```
