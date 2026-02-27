# Ejemplo Rol Atendedor - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Rol Atendedor**

## Example PractitionerRole: Ejemplo Rol Atendedor

version: 2.0

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**active**: true

**practitioner**: [Practitioner Gonzalo Gonzalez ](Practitioner-PractitionerProfesionalLEAtendedor.md)

**organization**: [Organization Centro de Referencia de Salud Miraflores](Organization-OrganizationLEAtendedor.md)

**code**: Atendedor



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleAtendedor",
  "meta" : {
    "versionId" : "2.0",
<<<<<<< HEAD
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
=======
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"
    ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerProfesionalLEAtendedor"
  },
  "organization" : {
    "reference" : "Organization/OrganizationLEAtendedor"
  },
<<<<<<< HEAD
  "code" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE",
      "code" : "atendedor",
      "display" : "Atendedor"
    }]
  }]
=======
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE",
          "code" : "atendedor",
          "display" : "Atendedor"
        }
      ]
    }
  ]
>>>>>>> 641281e05df33a1ecaeb097c26639d275384b20a
}

```
