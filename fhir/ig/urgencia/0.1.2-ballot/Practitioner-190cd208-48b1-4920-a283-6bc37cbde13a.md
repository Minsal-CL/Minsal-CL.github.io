# Ejemplo de un profesional médico de urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de un profesional médico de urgencia**

## Example Practitioner: Ejemplo de un profesional médico de urgencia

Profile: [Prestador Profesional de Urgencia](StructureDefinition-PrestadorProfesional.md)

**identifier**: RUN/55555555-5 (use: official, )

**name**: Luis Gonzalez (Official)

**birthDate**: 1992-05-26

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | cert | Médico General |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "190cd208-48b1-4920-a283-6bc37cbde13a",
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
      "value" : "55555555-5"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Gonzalez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Nuñez"
          }
        ]
      },
      "given" : ["Luis"]
    }
  ],
  "birthDate" : "1992-05-26",
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
            "code" : "30",
            "display" : "MÉDICO GENERAL"
          }
        ],
        "text" : "Médico General"
      }
    }
  ]
}

```
