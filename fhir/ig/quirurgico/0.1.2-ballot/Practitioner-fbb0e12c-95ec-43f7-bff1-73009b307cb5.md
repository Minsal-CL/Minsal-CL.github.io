# Médico Cirujano Gastroenterólogo - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Médico Cirujano Gastroenterólogo**

## Example Practitioner: Médico Cirujano Gastroenterólogo

Profile: [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md)

**identifier**: RUN/33333333-3 (use: official, )

**name**: Maria Fernandez (Official)

**birthDate**: 1995-09-12

> **qualification****Mención profesional añadida al título profesional**: Cirugía Digestiva**identifier**: cert**code**:Médico Cirujano

> **qualification****identifier**: esp**code**:Gastroenterología Adulto



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "fbb0e12c-95ec-43f7-bff1-73009b307cb5",
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
      "value" : "33333333-3"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Fernandez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Alvarez"
          }
        ]
      },
      "given" : ["Maria"]
    }
  ],
  "birthDate" : "1995-09-12",
  "qualification" : [
    {
      "extension" : [
        {
          "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/StructureDefinition/Mencion",
          "valueString" : "Cirugía Digestiva"
        }
      ],
      "identifier" : [
        {
          "value" : "cert"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSTituloProfesional",
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          }
        ],
        "text" : "Médico Cirujano"
      }
    },
    {
      "identifier" : [
        {
          "value" : "esp"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSEspecialidadMed",
            "code" : "18",
            "display" : "GASTROENTEROLOGÍA ADULTO"
          }
        ],
        "text" : "Gastroenterología Adulto"
      }
    }
  ]
}

```
