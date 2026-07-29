# PractitionerRole Entrevistador LE - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole Entrevistador LE**

## Example PractitionerRole: PractitionerRole Entrevistador LE

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**practitioner**: [Practitioner Paula Hernandez (official)](Practitioner-2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210.md)

**organization**: [Organization Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza](Organization-5491b8d5-e06c-4f89-beb7-75a1989cdc81.md)

**code**: Agendador



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "2b238804-f4bd-4005-82d2-9777aa09bea8",
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
          "code" : "agendador"
        }
      ]
    }
  ]
}

```
