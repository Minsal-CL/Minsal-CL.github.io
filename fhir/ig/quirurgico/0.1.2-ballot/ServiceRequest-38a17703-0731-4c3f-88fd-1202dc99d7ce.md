# ServiceRequest Cirugía LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ServiceRequest Cirugía LE**

## Example ServiceRequest: ServiceRequest Cirugía LE

Profile: [ServiceRequest Cirugía LE](StructureDefinition-ServiceRequestCirugiaLE.md)

**Extension String Fundamento Priorizacion**: Paciente con dolor abdominal crónico

**Requirió Comite**: false

**Extension Tipo Priorización**: Usuarios con dos o más años en LE

**identifier**: CIR-2024-0001

**status**: Active

**intent**: Order

**category**: Cirugía Mayor Electiva

**priority**: Routine

**code**: estructura del pulmón

**subject**: [Juan Pérez (official) Male, DoB: 1980-01-01 ( RUN: 4444444-4)](Patient-22e862c5-6d96-44ec-869c-dba001058cb3.md)

**encounter**: [Encounter: identifier = ENC-20241130-001; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-11-30 10:00:00-0400 --> (ongoing)](Encounter-23b7f034-a998-44d7-9be4-0281be8222c0.md)

**authoredOn**: 2024-12-02 10:00:00-0400

**requester**: [PractitionerRole Indicador](PractitionerRole-96f2b566-b17b-4e4e-ada0-3986748990ee.md)

**reasonReference**: [Condition Other and unspecified ventral hernia without obstruction or gangrene](Condition-b97a87f6-060d-48de-9e4d-db93518fd278.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "38a17703-0731-4c3f-88fd-1202dc99d7ce",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ServiceRequestCirugiaLE"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionStringFundamentoPriorizacion",
      "valueString" : "Paciente con dolor abdominal crónico"
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/RequirioComite",
      "valueBoolean" : false
    },
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/ExtensionTipoPriorizacion",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoPriorizacion",
            "code" : "5",
            "display" : "Usuarios con dos o más años en LE"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "CIR-2024-0001"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTipoCirugiaPropuesta",
          "code" : "1",
          "display" : "Cirugía Mayor Electiva"
        }
      ]
    }
  ],
  "priority" : "routine",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "39607008"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/22e862c5-6d96-44ec-869c-dba001058cb3"
  },
  "encounter" : {
    "reference" : "Encounter/23b7f034-a998-44d7-9be4-0281be8222c0"
  },
  "authoredOn" : "2024-12-02T10:00:00-04:00",
  "requester" : {
    "reference" : "PractitionerRole/96f2b566-b17b-4e4e-ada0-3986748990ee"
  },
  "reasonReference" : [
    {
      "reference" : "Condition/b97a87f6-060d-48de-9e4d-db93518fd278"
    }
  ]
}

```
