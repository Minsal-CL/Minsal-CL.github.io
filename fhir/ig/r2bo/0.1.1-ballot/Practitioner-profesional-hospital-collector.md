# Profesional recolector de muestra - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profesional recolector de muestra**

## Example Practitioner: Profesional recolector de muestra

Profile: [Prestador Profesional](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.9/StructureDefinition-MINSALPrestadorProfesional.html)

**identifier**: RUN/5135329-3 (use: official, )

**name**: Juan Perez 

**birthDate**: 1991-05-18

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | MÉDICO CIRUJANO |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "profesional-hospital-collector",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }
        ]
      },
      "value" : "5135329-3"
    }
  ],
  "name" : [
    {
      "family" : "Perez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Perez"
          }
        ]
      },
      "given" : ["Juan"]
    }
  ],
  "birthDate" : "1991-05-18",
  "qualification" : [
    {
      "identifier" : [
        {
          "value" : "cert"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional",
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          }
        ],
        "text" : "MÉDICO CIRUJANO"
      }
    }
  ]
}

```
