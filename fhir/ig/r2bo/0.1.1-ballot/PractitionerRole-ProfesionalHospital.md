# Profesional del Hospital - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional del Hospital**

## Example PractitionerRole: Profesional del Hospital

Profile: [Perfil de Rol Profesional](StructureDefinition-r2bo-rol-profesional-minsal.md)

**practitioner**: [Practitioner Juan Perez](Practitioner-profesional-hospital-collector.md)

**organization**: [Organization Hospital Dr. Hernán Henríquez Aravena (Temuco)](Organization-hospital-collector.md)

**code**: MÉDICO CIRUJANO

**location**: [Location Medicina General](Location-r2bo-localizacion-MedicinaGeneral.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ProfesionalHospital",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/profesional-hospital-collector"
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
  "location" : [
    {
      "reference" : "Location/r2bo-localizacion-MedicinaGeneral"
    }
  ]
}

```
