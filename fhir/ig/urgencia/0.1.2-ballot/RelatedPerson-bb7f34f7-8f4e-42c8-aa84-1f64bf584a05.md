# Acompañante urgencia - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acompañante urgencia**

## Example RelatedPerson: Acompañante urgencia

Profile: [Acompañante Urgencia](StructureDefinition-AcompananteUrg.md)

**patient**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**relationship**: Familiar

**name**: Jose Luis Perez 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "bb7f34f7-8f4e-42c8-aa84-1f64bf584a05",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/AcompananteUrg"
    ]
  },
  "patient" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/RelacionAcompanante",
          "code" : "3",
          "display" : "Familiar"
        }
      ]
    }
  ],
  "name" : [
    {
      "family" : "Perez",
      "_family" : {
        "extension" : [
          {
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Gonzalez"
          }
        ]
      },
      "given" : ["Jose", "Luis"]
    }
  ]
}

```
