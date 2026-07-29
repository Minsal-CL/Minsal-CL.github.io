# PractitionerRole Indicador LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole Indicador LE**

## Example PractitionerRole: PractitionerRole Indicador LE

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**practitioner**: [Practitioner Maria Fernandez (official)](Practitioner-fbb0e12c-95ec-43f7-bff1-73009b307cb5.md)

**organization**: [Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

**code**: Indicador



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "96f2b566-b17b-4e4e-ada0-3986748990ee",
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
          "code" : "indicador"
        }
      ]
    }
  ]
}

```
