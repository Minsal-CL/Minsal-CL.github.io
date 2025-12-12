# PractitionerRole Planificador LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole Planificador LE**

## Example PractitionerRole: PractitionerRole Planificador LE

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**practitioner**: [Practitioner Paula Hernandez (official)](Practitioner-2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210.md)

**organization**: [Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

**code**: Planificador



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ec19af63-cab4-46b5-a5d7-8df62f596e41",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerRoleLE"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  },
  "organization" : {
    "reference" : "Organization/5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE",
          "code" : "planificador"
        }
      ]
    }
  ]
}

```
