# Referencia documental de un informe de laboratorio atomizado (Bundle documento FHIR) - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Referencia documental de un informe de laboratorio atomizado (Bundle documento FHIR)**

## Example DocumentReference: Referencia documental de un informe de laboratorio atomizado (Bundle documento FHIR)

Perfil: [Referencia documental MINSAL (IHE MHD, forma almacenada)](StructureDefinition-MinsalDocumentReferenceMhd.md)

**masterIdentifier**: Identifier type for XDS UniqueId/INF-LAB-EJEMPLO-003

**status**: Current

**type**: Reporte de laboratorio: Paciente:Punto temporal:Tipo:Documento:

**category**: Laboratory

**subject**: [Paciente Ejemplo Unknown, DoB Unknown ( https://ejemplo.cl/rut#12345678-5)](Patient-PacienteEjemploMhd.md)

**date**: 2026-11-04 10:00:00-0300

**author**: [Ejemplo Profesional (https://ejemplo.cl/run-profesional#11111111-1)](Practitioner-ProfesionalEjemploMhd.md)

**custodian**: [Laboratorio Clínico de Ejemplo](Organization-LaboratorioEjemploMhd.md)

> **content**

### Attachments

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Title** | **Creation** |
| * | application/fhir+json | Español (Chile) | [https://bus.minsal.cl/fhir/Bundle/informe-lab-atomizado-ejemplo-003](https://bus.minsal.cl/fhir/Bundle/informe-lab-atomizado-ejemplo-003) | Informe de laboratorio atomizado (ejemplo) | 2026-11-04 09:45:00-0300 |


### Contexts

| | | |
| :--- | :--- | :--- |
| - | **Period** | **Related** |
| * | 2026-11-04 09:30:00-0300 --> (ongoing) | [ServiceRequest Hemograma (código de prestación FONASA de la solicitud; no se fija un `system`/código concreto en este ejemplo transversal, ya que el arancel vigente lo define la guía de dominio de Laboratorio, no este repo)](ServiceRequest-SolicitudEjemploMhd.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "InformeLaboratorioAtomizadoEjemploMhd",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/mhd/StructureDefinition/MinsalDocumentReferenceMhd"]
  },
  "masterIdentifier" : {
    "type" : {
      "coding" : [{
        "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType",
        "code" : "uniqueId"
      }]
    },
    "system" : "https://ejemplo.cl/informes-laboratorio",
    "value" : "INF-LAB-EJEMPLO-003"
  },
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Reporte de laboratorio: Paciente:Punto temporal:Tipo:Documento:"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PacienteEjemploMhd"
  },
  "date" : "2026-11-04T10:00:00-03:00",
  "author" : [{
    "reference" : "Practitioner/ProfesionalEjemploMhd"
  }],
  "custodian" : {
    "reference" : "Organization/LaboratorioEjemploMhd"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/fhir+json",
      "language" : "es-CL",
      "url" : "https://bus.minsal.cl/fhir/Bundle/informe-lab-atomizado-ejemplo-003",
      "title" : "Informe de laboratorio atomizado (ejemplo)",
      "creation" : "2026-11-04T09:45:00-03:00"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2026-11-04T09:30:00-03:00"
    },
    "related" : [{
      "reference" : "ServiceRequest/SolicitudEjemploMhd"
    }]
  }
}

```
