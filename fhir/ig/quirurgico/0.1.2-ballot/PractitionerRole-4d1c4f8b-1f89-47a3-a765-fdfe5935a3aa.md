# PractitionerRole Atendedor LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole Atendedor LE**

## Example PractitionerRole: PractitionerRole Atendedor LE

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**practitioner**: [Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

**organization**: [Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

**code**: Atendedor



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  },
  "organization" : {
    "reference" : "Organization/5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE",
          "code" : "atendedor"
        }
      ]
    }
  ]
}

```
