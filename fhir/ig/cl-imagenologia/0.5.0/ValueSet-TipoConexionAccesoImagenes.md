# Tipo de conexión para acceso a imágenes - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de conexión para acceso a imágenes**

## ValueSet: Tipo de conexión para acceso a imágenes 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ValueSet/TipoConexionAccesoImagenes | *Version*:0.5.0 |
| Draft as of 2026-11-02 | *Computable Name*:TipoConexionAccesoImagenes |

 
Tipos de conexión admitidos en EndpointAccesoImagenesMinsal: IHE IID y los dos mecanismos locales para el acceso de pacientes, más los servicios DICOMweb de consulta y recuperación, que pueden registrarse para usos profesionales pero no constituyen acceso del paciente. 

 **References** 

* [Endpoint de Acceso a Imágenes MINSAL](StructureDefinition-EndpointAccesoImagenesMinsal.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "TipoConexionAccesoImagenes",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/ValueSet/TipoConexionAccesoImagenes",
  "version" : "0.5.0",
  "name" : "TipoConexionAccesoImagenes",
  "title" : "Tipo de conexión para acceso a imágenes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-02T11:03:04-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Tipos de conexión admitidos en EndpointAccesoImagenesMinsal: IHE IID y los dos mecanismos locales para el acceso de pacientes, más los servicios DICOMweb de consulta y recuperación, que pueden registrarse para usos profesionales pero no constituyen acceso del paciente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
      "concept" : [{
        "code" : "ihe-iid",
        "display" : "IHE IID"
      },
      {
        "code" : "dicom-wado-rs",
        "display" : "DICOM WADO-RS"
      },
      {
        "code" : "dicom-qido-rs",
        "display" : "DICOM QIDO-RS"
      }]
    },
    {
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/imagenologia/CodeSystem/MecanismoAccesoImagenes"
    }]
  }
}

```
