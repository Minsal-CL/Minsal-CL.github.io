# Ejemplo de un profesional TENS de urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de un profesional TENS de urgencia**

## Example Practitioner: Ejemplo de un profesional TENS de urgencia

Profile: [Prestador Profesional de Urgencia](StructureDefinition-PrestadorProfesional.md)

**identifier**: RUN/12345678-9 (use: official, )

**name**: Juan Carlos Perez Gonzalez(Official)

**birthDate**: 1980-01-01

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | Técnico en Salud |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "d04739d3-ba47-4f0f-920f-bcd66b474963",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorProfesional"
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
      "value" : "12345678-9"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "text" : "Juan Carlos Perez Gonzalez",
      "family" : "Perez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Gonzalez"
          }
        ]
      },
      "given" : ["Juan", "Carlos"]
    }
  ],
  "birthDate" : "1980-01-01",
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
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TituloProfesional",
            "code" : "20",
            "display" : "TÉCNICOS EN SALUD"
          }
        ],
        "text" : "Técnico en Salud"
      }
    }
  ]
}

```
