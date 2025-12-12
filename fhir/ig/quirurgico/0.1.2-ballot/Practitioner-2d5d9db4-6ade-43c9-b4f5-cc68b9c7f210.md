# Enfermera - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Enfermera**

## Example Practitioner: Enfermera

Profile: [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md)

**identifier**: RUN/55555555-5 (use: official, )

**name**: Paula Hernandez (Official)

**birthDate**: 1990-05-15

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | Enfermera |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/PractitionerProfesionalLE"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01"
          }
        ]
      },
      "system" : "http://www.registrocivil.cl",
      "value" : "55555555-5"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Hernandez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Navarro"
          }
        ]
      },
      "given" : ["Paula"]
    }
  ],
  "birthDate" : "1990-05-15",
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
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional",
            "code" : "3",
            "display" : "ENFERMERAS(OS)"
          }
        ],
        "text" : "Enfermera"
      }
    }
  ]
}

```
