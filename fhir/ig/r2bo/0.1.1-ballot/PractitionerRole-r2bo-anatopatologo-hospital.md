# Profesional de Anatomía Patológica del Hospital - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional de Anatomía Patológica del Hospital**

## Example PractitionerRole: Profesional de Anatomía Patológica del Hospital

Profile: [Perfil de Rol Profesional](StructureDefinition-r2bo-rol-profesional-minsal.md)

**practitioner**: [Practitioner Patricia Gutierrez](Practitioner-profesional-hospital-anatopatologo.md)

**organization**: [Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)](Organization-hospital-collector.md)

**code**: MÉDICO CIRUJANO

**specialty**: ANATOMÍA PATOLÓGICA



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "r2bo-anatopatologo-hospital",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/profesional-hospital-anatopatologo"
  },
  "organization" : {
    "reference" : "Organization/hospital-collector"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
          "code" : "1",
          "display" : "MÉDICO CIRUJANO"
        }
      ]
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed",
          "code" : "1",
          "display" : "ANATOMÍA PATOLÓGICA"
        }
      ]
    }
  ]
}

```
