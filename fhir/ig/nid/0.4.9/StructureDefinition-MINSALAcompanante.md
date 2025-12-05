# MINSAL Acompañante - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **MINSAL Acompañante**

## Resource Profile: MINSAL Acompañante 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante | *Version*:0.4.9 |
| Draft as of 2025-12-05 | *Computable Name*:MINSALAcompanante |

 
Información sobre una persona que participa en la atención a un paciente, pero que no es el destinatario de la asistencia sanitaria ni tiene una responsabilidad formal en el proceso asistencial. 

**Usages:**

* Refer to this Profile: [MINSAL Paciente](StructureDefinition-MINSALPaciente.md)
* Examples for this Profile: [RelatedPerson/EjemploAcompanate](RelatedPerson-EjemploAcompanate.md)
* CapabilityStatements using this Profile: [Indice Maestro Paciente: "Cliente de Origen PIXm"](CapabilityStatement-MPI.IHE.PIXm.Origen.md) and [Administrador del Indice Maestro Paciente](CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.nid|current/StructureDefinition/MINSALAcompanante)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSALAcompanante.csv), [Excel](StructureDefinition-MINSALAcompanante.xlsx), [Schematron](StructureDefinition-MINSALAcompanante.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSALAcompanante",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante",
  "version" : "0.4.9",
  "name" : "MINSALAcompanante",
  "title" : "MINSAL Acompañante",
  "status" : "draft",
  "date" : "2025-12-05T14:30:03-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Información sobre una persona que participa en la atención a un paciente, pero que no es el destinatario de la asistencia sanitaria ni tiene una responsabilidad formal en el proceso asistencial.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "short" : "El paciente al cual está relacionado la persona",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "short" : "Relación con el paciente",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
        "short" : "Nombre asociado a la persona",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "mpi-rela-1",
            "severity" : "error",
            "human" : "RelatedPerson.name.given, RelatedPerson.name.family o RelatedPerson.name.text DEBEN estar presentes",
            "expression" : "family.exists() or given.exists() or text.exists()",
            "source" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAcompanante"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name.family.extension",
        "path" : "RelatedPerson.name.family.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Extensión para el segundo apellido",
        "definition" : "Extensión para la declaración de un segundo apellido"
      },
      {
        "id" : "RelatedPerson.name.family.extension:segundoApellido",
        "path" : "RelatedPerson.name.family.extension",
        "sliceName" : "segundoApellido",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.telecom",
        "path" : "RelatedPerson.telecom",
        "short" : "Un medio de comunicación con la persona",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.telecom.system",
        "path" : "RelatedPerson.telecom.system",
        "short" : "phone | email",
        "definition" : "Sistema de contacto",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet/VSSistemasComunicacion"
        }
      },
      {
        "id" : "RelatedPerson.telecom.value",
        "path" : "RelatedPerson.telecom.value",
        "short" : "Los datos reales del punto de contacto",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.address",
        "path" : "RelatedPerson.address",
        "short" : "Dirección donde se puede contactar o visitar a la persona relacionada",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.period",
        "path" : "RelatedPerson.period",
        "short" : "Periodo de tiempo durante el cual se considera válida esta relación",
        "mustSupport" : true
      }
    ]
  }
}

```
