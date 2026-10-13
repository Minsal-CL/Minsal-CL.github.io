# Tipo de identificador de paciente aceptado en HL7 v2 (PID-3/CX.5) - Guía de Implementación FHIR - Laboratorio Clínico v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de identificador de paciente aceptado en HL7 v2 (PID-3/CX.5)**

## ValueSet: Tipo de identificador de paciente aceptado en HL7 v2 (PID-3/CX.5) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/VSTipoIdentificadorPacienteV2 | *Version*:0.6.2 |
| Draft as of 2026-10-13 | *Computable Name*:VSTipoIdentificadorPacienteV2 |

 
ValueSet documental, no normativo de FHIR: no está enlazado como binding de ningún elemento de esta guía. Su único propósito es declarar, de forma verificable y legible por máquina, el subconjunto de la tabla `CSTipoIdentificador` (CL-Core) que esta guía acepta en el componente CX.5 de cada repetición de PID-3 al recibir mensajes HL7 v2 (ORM^O01 / OML^O21 / ORU^R01). No reemplaza ni se superpone al binding real de terminología de `Patient.identifier.type`, que define `MINSALPaciente` (guía NID) contra la tabla de EIS; ver la regla de conformidad de recepción en la página [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md#regla-de-conformidad-de-pid-3-tipo-de-identificador-del-paciente). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "VSTipoIdentificadorPacienteV2",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/laboratorio/ValueSet/VSTipoIdentificadorPacienteV2",
  "version" : "0.6.2",
  "name" : "VSTipoIdentificadorPacienteV2",
  "title" : "Tipo de identificador de paciente aceptado en HL7 v2 (PID-3/CX.5)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-13T11:13:53-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "ValueSet documental, no normativo de FHIR: no está enlazado como binding de ningún elemento de esta guía. Su único propósito es declarar, de forma verificable y legible por máquina, el subconjunto de la tabla `CSTipoIdentificador` (CL-Core) que esta guía acepta en el componente CX.5 de cada repetición de PID-3 al recibir mensajes HL7 v2 (ORM^O01 / OML^O21 / ORU^R01). No reemplaza ni se superpone al binding real de terminología de `Patient.identifier.type`, que define `MINSALPaciente` (guía NID) contra la tabla de EIS; ver la regla de conformidad de recepción en la página [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.html#regla-de-conformidad-de-pid-3-tipo-de-identificador-del-paciente).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
      "version" : "1.9.4",
      "concept" : [{
        "code" : "01",
        "display" : "RUN"
      },
      {
        "code" : "02",
        "display" : "RUN Provisorio"
      },
      {
        "code" : "03",
        "display" : "RUN Madre"
      },
      {
        "code" : "05",
        "display" : "PPN"
      },
      {
        "code" : "06",
        "display" : "Documento de identificación del país de origen"
      },
      {
        "code" : "08",
        "display" : "NIP"
      },
      {
        "code" : "11",
        "display" : "IPE"
      },
      {
        "code" : "12",
        "display" : "Número de Ficha Clínica Sistema Local"
      },
      {
        "code" : "14",
        "display" : "OTRO"
      }]
    }]
  }
}

```
